# -*- coding: utf-8 -*-
"""
Created on Tue Jul  5 10:51:04 2022

@author: 2210193
"""

## 0. Library for Import
import requests
import pandas as pd
import urllib3
from datetime import datetime
 
urllib3.disable_warnings(urllib3.exceptions.InsecureRequestWarning) # SSL인증서 오류 무시

# Naver Developer에서 발급받은 Open API Key
client_id = "muRJ15UeEhqBN14xyuXR"
clientKey = "DlEuaSNLMj"

# 한국인터넷진흥원(KISA)에서 발급받은 Open API Key
KISA_enc = "ezYdB3TSFLXri3DA4wBTmOdhgS7mIzuIcnAb2e%2BABCJM3L7vBWFnP%2FYq7v34%2Bq%2BxTvAnh0JqU3rYjb44kwOVqQ%3D%3D"
KISA_dec = "ezYdB3TSFLXri3DA4wBTmOdhgS7mIzuIcnAb2e+ABCJM3L7vBWFnP/Yq7v34+q+xTvAnh0JqU3rYjb44kwOVqQ=="

## 1. NewSearch 함수 생성
def NewSearch(query, output="json", display=100, start=1, sort="date"):
    
    # 요청 url 생성
    url = "https://openapi.naver.com/v1/search/"\
          "news.{}"\
          "?"\
          "query={}"\
          "&display={}"\
          "&start={}"\
          "&sort={}".format(output, query, str(display), str(start), sort)
    
    # header 생성 - Open API Key
    headers = {'X-Naver-Client-Id': client_id,
               'X-Naver-Client-Secret' : clientKey}
    
    # GET Method API 요청
    res = requests.get(url, headers=headers,verify=False)
    
    return(res)

## 2. Json 형태의 데이터를 DataFrame으로 변경해주는 함수 생성
def JsonToExcel(inputdata):

    # JSON을 dictionary로 반환 후 필요 데이터(items 출력변수) 추출
    INFO = inputdata.json()
    INFO = pd.DataFrame(INFO['items'])
    
    # 인용문으로 사용된 따옴표('&quot;' -> '"') 및 태그('<b>,</b>' -> '') 정제
    INFO.replace('&quot;','"',regex=True,inplace=True)
    INFO.replace('<b>','',regex=True,inplace=True)
    INFO.replace('</b>','',regex=True,inplace=True)
    
    # 이후 날짜를 인덱싱할 수 있도록 현지 시간대 정보 제거
    INFO['pubDate']=pd.to_datetime(INFO['pubDate']).dt.tz_localize(None)
    del INFO['link']
    
    return(INFO)

## 3. 도메인 요청시 도메인 등록자 명을 반환해주는 함수 생성
def DomainSearch(link,key_id,output="json"):
    
    # 요청 url 생성
    url = "http://apis.data.go.kr/B551505/whois/domain_name"\
          "?"\
          "serviceKey={}"\
          "&query={}"\
          "&answer={}".format(key_id, link, output)
    
    # GET Method API 요청
    try: 
        res = requests.get(url, verify=False)
        res = res.json()
        Name = res['response']['whois']['krdomain']['regName']
    except:
        Name = str(link)

    return(Name)

## 4. 기사 추출
def NewsAPI(keyword,start_date,end_date):

    result = pd.DataFrame() # output을 저장할 데이터프레임 생성
    
    # API 반복 시행 - 네이버 API의 경우 한번에 100개 데이터만 요청이 가능
    for i in range(6):
        response = NewSearch(keyword,start=i*100+1) # 뉴스기사 조회 함수
        output = JsonToExcel(response) # 응답JSON을 DataFrame으로 변환하는 함수
        result = pd.concat([result,output])
    
    # 중복된 기사 제거
    result = result.drop_duplicates(subset='originallink')
    result = result.drop_duplicates(subset='title')
    result = result.drop_duplicates(subset='description')
    
    # 시작일의 00시 00분 00초부터 종료일의 23시 59분 59초까지의 time index(boolean) 생성
    index = result['pubDate'].between(str(start_date)+' 00:00:00',str(end_date)+' 23:59:59')
    
    result = result[index] # time index에 해당하는 특정 일자 및 기간 데이터 조회
    result['domain']=result['originallink'] # 도메인을 추출하기 위한 새로운 열 추가 
    
    result['domain'].replace('https://','', regex = True, inplace = True)
    result['domain'].replace('http://','', regex = True, inplace = True)
    result['domain'].replace('www.','', regex = True, inplace = True)
    result['name'] = result.domain.str.split('/').str[0]
    result.drop(['domain'], axis='columns', inplace=True)

    for x in result['name']:
        try:
            Name = DomainSearch(x,KISA_enc)
            if Name == '후이즈 도메인 관리자':
                result['name'].replace(x,str(x),inplace=True)
            else:
                result['name'].replace(x,Name,inplace=True)
        except:
            Name = str(x)
            result['name'].replace(x,Name,inplace=True)
    
    return(result)

def main():    

    keyword = input("keyword : ")
    start = input("start date (YYYY-MM-DD) : ")
    end = input("end date (YYYY-MM-DD) : ")
    monitor = NewsAPI(keyword,start,end)
    now = datetime.now()
    outputFileName = 'NEWS_API_%s_%s.%s.%s %sh.%sm%ss.xlsx' % (keyword, now.year, now.month, now.day, now.hour, now.minute, now.second)
    monitor.to_excel(outputFileName,sheet_name='sheet1')
    
    return(monitor)


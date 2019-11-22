#! /usr/bin/python3

from selenium import webdriver
import time
import csv





## READ URLS TO ITER OVER -------------------------------------------------------

with open('urls.txt') as f:
    urls = f.read().splitlines()


## CREATE EMPTY LIST ------------------------------------------------------------

home_data = []


## FOR EACH PAGE ----------------------------------------------------------------

def page_iter(url):

	driver = webdriver.Chrome()

	# open url from list
	driver.get(url)
	time.sleep(3)

	# get episode number - save
	episode = driver.find_element_by_xpath("//*[(@id = 'pagecontent')]//a").text
	print(episode)

	transcript = []
	all_text = driver.find_elements_by_xpath("//*[(@id = 'pagecontent')]//p")
	for text in all_text:
		 transcript.append(text.text)
		
	print(episode + " text found successfully")
	
	# Combine ep with each line text
	final = []

	for tran in transcript:
		final.append(episode + ';' + tran)



	home_data.append(final)
	# print(home_data)
	driver.close()


## RUN PROGRAM ------------------------------------------------------------------
if __name__ == '__main__':
	for url in urls:
		page_iter(url)


## WRITE TO CSV ------------------------------------------------------------------
	with open("office_transcript.csv", "w") as f:
		writer = csv.writer(f)
		writer.writerows(home_data)

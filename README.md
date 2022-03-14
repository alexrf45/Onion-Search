# Onion-Search
Onion Search in Docker

An excellent tool for scraping onion search engines for urls. 

## Install

1. git clone https://github.com/alexrf45/Onion-Search.git

2. cd Onion-Search/

3. docker build -t onionsearch:tag .

4. docker run --rm --it onionsearch:tag 
	**optionally You may specify a proxy such as Tor when running the container

5. onionsearch 'searchterm' - this will provide a default output file for parsing. 

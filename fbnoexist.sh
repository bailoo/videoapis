for i in `cat fbvideos.csv`; do url=`echo $i | cut -d "," -f 2`; res=`wget -q "$url"  --no-check-certificate --keep-session-cookies --save-cookies=cookies --load-cookies=cookies -U "Mozilla/5.0 (Windows NT 5.2; rv:2.0.1) Gecko/20100101 Firefox/4.0.1" -S -O - | grep "Sorry, this content" | wc -l`; if [ "$res" == "1" ]; then echo $i; fi; done > foo


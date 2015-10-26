import MySQLdb
import logging
import json

db = MySQLdb.connect(host='localhost', user='root', passwd='123456', db='yi18')
cursor = db.cursor()
db.set_character_set('utf8')

home_path = '/home/dick/yi18'
logging.basicConfig(level=logging.INFO)

EMPTY_RESP_NUM = 100
req_id = 0
empty_resp = 0

while True:
    if empty_resp > EMPTY_RESP_NUM:
        break
    req_id += 1

    try:
        file_name = '%s/book/%d.txt' % (home_path, req_id)
        read_file = open(file_name)
        content = read_file.read()

        empty_resp = 0
        dct = json.loads(content)
        req_id = dct['yi18']['id']
        name = dct['yi18']['name']

        SQL = 'INSERT INTO book(id, name, content) VALUES(%s, %s, %s)'
        cursor.execute(SQL, (req_id, name, content))
        db.commit()
        logging.info('Write ' + file_name + ' in database.')

    except (IOError, ValueError, TypeError, MySQLdb.IntegrityError) as e:
        empty_resp += 1
        logging.error(e)
        continue

    finally:
        read_file.close()
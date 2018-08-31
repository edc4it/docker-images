import logging
import os
import time

level = os.environ.get('LOG_LEVEL')

if level:
    logging.getLogger().setLevel(level)

logging.warning('you are using password s3kret, you should change this, see documentation')

time.sleep(2)
logging.error('todo: don\'t forget to handle this error!')
time.sleep(2)
logging.info('accessing payment API with credit card 4400000000000010/01-2028/510/João Silva')
time.sleep(2)
logging.info('accessing payment API with credit card 5500000000000004/11-2025/781/knut Olsen')
time.sleep(2)
logging.error('something unexpected went wrong')
time.sleep(2)
logging.info('accessing payment API with credit card 5500000000000010/11-2021/815/Jón Einarsson ')
time.sleep(2)
logging.error('todo: don\'t forget to handle this error!')
time.sleep(1)
logging.error('todo: don\'t forget to handle this error!')
time.sleep(2)
logging.info("searching products a')) UNION SELECT 1,2,3,4,5,6,7,8 from users--")
time.sleep(1)
logging.warning("sql error near: ) ‘ or ‘1’ = ‘1")
logging.warning("sql error near: ;exec(char(0x73687574646f776e)); --")
logging.warning("logging in user ‘ or 1=1 --" )
time.sleep(2)
logging.error('funny and unexpected: customer table returns zero rows')
time.sleep(2)
logging.error('no orders found')
time.sleep(2)
logging.error("can't authenticate admin, user unknown")


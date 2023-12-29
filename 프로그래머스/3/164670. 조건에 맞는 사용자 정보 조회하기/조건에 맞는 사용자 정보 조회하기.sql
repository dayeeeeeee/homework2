-- 코드를 입력하세요
# SELECT a.user_id, a.nickname,(a.street_address1 || a.street_address2)as '전체주소',
# #('010'|| '-'||left(a.TLNO,4,7)||'-'||right(a.TLNO,4) as '전화번호'
# from USED_GOODS_USER  a
# join (select writer_id , count(board_id) 
#       from USED_GOODS_BOARD 
#       group by writer_id
#       having count(board_id) >= 3
#      )  b
#     on a.user_id = b.writer_id
# order by 1 desc

# SELECT a.user_id, a.nickname,(a.street_address1 || a.street_address2)as '전체주소',
#('010'|| '-'||left(a.TLNO,4,7)||'-'||right(a.TLNO,4) as '전화번호'
# from USED_GOODS_USER as a
# join USED_GOODS_BOARD as b
# on a.user_id = b.writer_id

SELECT B.user_id,B.nickname
,concat(B.city,' ',B.street_address1,' ',B.street_address2) AS 전체주소
,concat(LEFT(tlno,3), '-', MID(tlno,4,4),'-', RIGHT(tlno,4)) AS 전화번호
FROM used_goods_board A join used_goods_user B ON A.writer_id = B.user_id
GROUP BY writer_id
HAVING count(writer_id) >= 3
ORDER BY B.user_id DESC




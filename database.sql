-- 1. Get all users from Chicago.
SELECT * FROM accounts WHERE city='Chicago';

-- 2. Get all users with usernames that contain the letter a.
SELECT * FROM accounts WHERE username ILIKE '%a%';

-- 3. The bank is giving a new customer bonus! Update all records with an account balance of 0.00 and a transactions_attempted of 0. Give them a new account balance of 10.00.
UPDATE accounts SET account_balance=10.00 WHERE transactions_attempted=0.00;

-- 4. Select all users that have attempted 9 or more transactions.
SELECT * FROM accounts WHERE transactions_attempted >= 9;

-- 5. Get the username and account balance of the 3 users with the highest balances, sort highest to lowest balance. NOTE: Research LIMIT
SELECT username, account_balance FROM accounts ORDER BY account_balance DESC LIMIT 3;

-- 6. Get the username and account balance of the 3 users with the lowest balances, sort lowest to highest balance.
SELECT username, account_balance FROM accounts ORDER BY account_balance ASC LIMIT 3;

-- 7. Get all users with account balances that are more than $100.
SELECT * FROM accounts WHERE account_balance > 100.00;

-- 8. Add a new record.
INSERT INTO accounts (username, city, transactions_completed, transactions_attempted, account_balance)
VALUES ('Malik', 'st paul', 7, 8, 2000);

-- 9. The bank is losing money in Miami and Phoenix and needs to unload low transaction customers: Delete users that reside in miami OR phoenix and have completed fewer than 5 transactions.
SELECT * FROM accounts WHERE city='miami' AND transactions_completed < 5;
SELECT * FROM accounts WHERE city='phoenix' AND transactions_completed < 5;


----------------------
/* NOTES from 10/16 */
----------------------

-- /*Get all of something from somewhere*/
-- SELECT * FROM songs;

-- /*Get first 10 from table*/
-- SELECT * FROM songs LIMIT 10;

-- /*Get first 10 from table with lowest rank*/
-- SELECT * FROM songs ORDER BY rank ASC LIMIT 10;

-- /*Get elvis songs*/
-- SELECT * FROM songs WHERE artist = 'Elvis Presley';

-- /*If the artist is Elvis Presley, get the specified columns (id and track) */
-- SELECT id, track FROM songs WHERE artist = 'Elvis Presley';

-- /*Get songs with Elvis, ignore the Presly*/
-- SELECT * FROM songs WHERE artist LIKE 'Elvis%';

-- /*Get songs with Elvis, ignore the Presly and case sensitivity*/
-- SELECT * FROM songs WHERE artist ILIKE 'elvis%';

-- /*Get songs with love in the track title*/
-- SELECT * FROM songs WHERE track ILIKE '%love%';

-- /*Get all songs with artist 'elvis', 'presley', or both*/
-- SELECT * FROM songs WHERE artist ILIKE 'elvis%' OR artist ILIKE '%presley';

-- /*Get songs published before 1990*/
-- SELECT * FROM songs WHERE published < '1-1-1990';

-- /*Get songs with when a particular variable is null*/
-- SELECT * FROM songs WHERE rank IS NULL;

-- /*Update songs by by setting a new rank on the specified id*/
-- /*Always use WHERE with UPDATE and DELETE, unless you are trying to change/remove everything*/
-- /*Can SET multiple variables separated by a , */
-- UPDATE songs SET rank=1 WHERE id=1;
-- SELECT * FROM songs WHERE id=1;

-- /*DELETE particular id from songs*/
-- DELETE FROM songs WHERE id=1;

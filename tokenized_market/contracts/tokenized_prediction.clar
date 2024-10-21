(define-map markets 
  {market-id: uint} ;; Market identifier
  {description: (string-ascii 256), 
   outcome: uint, 
   resolved: bool})

(define-map user-bets 
  {market-id: uint, user: principal} ;; User's bet on a market
  {choice: uint, 
   amount: uint})

(define-map user-balances {user: principal} ;; Track users' balances of winnings
  {balance: uint})

(define-constant bet-token (tuple (contract-principal .btstx) (name "bet-token"))) ;; Represent the token for betting

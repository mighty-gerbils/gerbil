#lang :std/parser/grammar package: tutorial/lang

;; string token value
;; peels off surrounding "s and processes (some) escape characters
(def (string-e str loc)
  (let lp ((rest (cdr (string->list str))) (chars []))
    (match rest
      ([#\"] (list->string (reverse chars)))
      ([char . rest]
         (if (eq? char #\\)
           (match rest
             ([char . rest]
              (case char
                ((#\" #\\) (lp rest (cons char chars)))
                ((#\n) (lp rest (cons #\newline chars)))
                ((#\t) (lp rest (cons #\tab chars)))
                (else
                 (raise-parse-error 'lex-scuby "Unrecognized escape character"
                                    (make-token 'String str loc)
                                    char))))
             (else
              (raise-parse-error 'lex-suby "Misplaced escape character"
                                 (make-token 'String str loc)
                                 char)))
           (lp rest (cons char chars)))))))

%%parser parse-scuby lexer: lex-scuby

Program <- (Form $1)* EOF
           => ['begin $1 ...]

Form <- Defn
     |  Expr
     
Defn <- DEF (VarIdent $1) '=' (Expr $2)
        => ['def $1 $2]
     |  DEF '(' (VarIdent $1) (VarIdent $2)* ')' (Defn $3)* (Expr $4)+ END
        => ['def [$1 $2 ...] $3 ... $4 ...]
     |  DEF
        ;; hard cut to provide better error locality
        => (raise-parse-error 'parse-scuby "malformed definition" @@)

VarIdent <- Reserved
            => (raise-parse-error 'parse-scuby "illegal variable identifier: reserved keyword" @@)
         |  (Ident $1)
            => $1  ; wrap identifier to track source location

Expr <- BeginExpr
     |  IfExpr
     |  AppExpr
     |  RefExpr
     |  DatumExpr
     
BeginExpr <- BEGIN (Expr $1)+ END
             => ['begin $1 ...]

IfExpr <- IF (Expr $1) (Expr $2) ELSE (Expr $3) END
          => ['if $1 $2 $3]
       |  IF (Expr $1) (Expr $2) END
          => ['if $1 $2]

AppExpr <- '(' (Expr $1) (Expr $2)* ')'
           => [$1 $2 ...]

RefExpr <- Reserved
           => !
        |  (Ident $1)
           => $1  ; wrap identifier to track source location

Reserved <- DEF
         |  BEGIN
         |  IF
         |  ELSE
         |  END

DatumExpr <- Int
          |  String
          |  TRUE
          |  FALSE
          |  NULL

;; literal tokens
DEF    <- 'def'
BEGIN  <- 'begin'
IF     <- 'if'
ELSE   <- 'else'
END    <- 'end'

;; lexer tokens
Ident  <- %
Int    <- %
String <- %
TRUE   <- %
FALSE  <- %
NULL   <- %

EOF <- $$

%%lexer lex-scuby

[\ \t\n]+                       -> $                             ; whitespace
\;[^\n]*\n                      -> $                             ; comments
true                            -> (TRUE #t)                     ; #t
false                           -> (FALSE #f)                    ; #f
null                            -> (NULL '())                    ; '()
[(]                             -> (LPAREN '|(|)                 ; LPAREN token
[)]                             -> (RPAREN '|)|)                 ; RPAREN token
[-]?[0-9]+                      -> (Int (string->number @@))     ; integers
[-+*/=?<>~!@$%^&:_a-zA-Z0-9]+   -> (Ident (string->symbol @@))   ; identifiers
"([^"]|\\")*"                   -> (String (string-e @@ @loc))   ; strings


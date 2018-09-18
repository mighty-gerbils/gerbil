#lang :std/parser/grammar package: std/protobuf

%%parser parse-protobuf lexer: lex-protobuf

Protobuf <- (Syntax $1)? (TopStatement $2)* EOF
         => ['begin-protobuf $1 $2 ...]

Syntax <- 'syntax' '=' (String $1) ';'
       => (string->symbol $1)

TopStatement <- Import
             |  Package
             |  Option
             |  TopDefinition

Import <- 'import' (ImportOption $1)? (String $2) ';'
       => ['@import $1 $2]

ImportOption <- 'weak'
             |  'public'

Package <- 'package' (Ident $1) ';'
        => ['package $1]

Option <- 'option' (OptionName $1) '=' (Constant $2) ';'
       => ['option $1 $2]

OptionName <- Ident
           |  '(' (Ident $1) ')' (OptionNameTail $2)?
           => [$1 $2]

OptionNameTail <- '.' (Ident $1)
               => $1

TopDefinition <- Message
              |  Enum

Message <- 'message' (Ident $1) '{' (MessageBody $2)* '}'
        => ['message $1 $2 ...]

MessageBody <- MessageField
            |  OneOf
            |  Map
            |  Enum
            |  Option
            |  Message

MessageField <- (MessageFieldLabel $1)? (Ident $2) (Ident $3) '=' (Int $4) (FieldOptions $5)? ';'
             => ['field $1 $2 $3 $4 $5]

MessageFieldLabel <- 'required'
                  |  'optional'
                  |  'repeated'

FieldOptions <- '[' (FieldOptionSet $1) (FieldOptionRest $2)? ']'
             => (cons $1 (or $2 []))

FieldOptionSet <- (Ident $1) '=' (Constant $2)
               => (cons $1 $2)

FieldOptionRest <- ',' (FieldOptionSet $1) (FieldOptionRest $2)?
                => (cons $1 (or $2 []))

OneOf <- 'oneof' (Ident $1) '{' (OneOfField $2)* '}'
      => ['oneof $1 $2 ...]

OneOfField <- (Ident $1) (Ident $2) '=' (Constant $3) ';'
           => ['field $1 $2 $3]

Map <- 'map' '<' (Ident $1) ',' (Ident $2) '>' (Ident $3) '=' (Int $4) (FieldOptions $5)? ';'
    => ['map $1 $2 $3 $4 $5]

Enum <- 'enum' (Ident $1) '{' (EnumBody $2)* '}'
     => ['enum $1 $2 ...]

EnumBody <- Option
         |  EnumField

EnumField <- (Ident $1) '=' (Int $2) (FieldOptions $3)? ';'
          => ['field $1 $2 $3]

Constant <- String
         |  Int
         |  Boolean

Ident     <- %
String    <- %
Int       <- %
Boolean   <- %

EOF <- $$

%%lexer lex-protobuf

[\ \t\n]+                       -> $
//[^\n]*\n                      -> $
true                            -> (Boolean #t)
false                           -> (Boolean #f)
[a-zA-Z][a-zA-Z0-9_.]*          -> (Ident (string->symbol @@))
[(){}[\]<>=,.\;]                -> (Special (string->symbol @@))
"[^"]*"                         -> (String (substring @@ 1 (1- (string-length @@))))
'[^']*'                         -> (String (substring @@ 1 (1- (string-length @@))))
0[xX][0-9a-fA-F]+               -> (Int (string->number (substring @@ 2 (string-length @@)) 16))
0[0-7]+                         -> (Int (string->number (substring @@ 1 (string-length @@)) 8))
[-+]?[0-9]+                     -> (Int (string->number @@))

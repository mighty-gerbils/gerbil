;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser lexer and lexer generator

(import :std/error
        ./base
        ./stream
        ./rlang)

(export lex lex-chars
        token-stream?
        token-stream-close
        token-stream-get
        token-stream-next
        token-stream-unget
        token-stream-peek
        token-stream-loc
        $ $? $$ $$?)

(defstruct token-stream (cs buf Ls Rs $$)
  final: #t)

;; ignored token [eg whitespace, comments]
(def $ (make-token '$ #!void #f))
(def ($? obj)
  (eq? $ obj))

;; end of input -- to signal the parser to stop
(def ($$ loc)
  (make-token '$$ (eof-object) loc))

(def ($$? obj)
  (match obj
    ((token '$$) #t)
    ((? eof-object?) #t)
    (else #f)))

;; input: string, character-input-port, or char-stream
;; Ls: list of rlangs for each lexeme [see lex1]
;; Rs: list of reductions for each lexeme [see lex1]
;; => token-stream
(def (lex input Ls Rs)
  (let (cs (lexer-input-stream input))
    (make-token-stream cs [] Ls Rs #f)))

;; simples possible lexer: produces character tokens for every char in the stream
(def (lex-chars input)
  (lex input [@dot] [(lambda (str loc) (make-token 'Char (string-ref str 0) loc))]))

(def (token-stream-close ts)
  (char-stream-close
   (token-stream-cs ts)))

(def (token-stream-get ts)
  (with ((token-stream cs buf Ls Rs) ts)
    (match buf
      ([tok . rest]
       (set! (token-stream-buf ts)
         rest)
       tok)
      (else
       (let lp ()
         (let (next (lex1 cs Ls Rs))
           (if ($? next)
             (lp)
             next)))))))

;; get the next token, mapping eof to $$
(def (token-stream-next ts)
  (let (next (token-stream-get ts))
    (if (eof-object? next)
      (cond
       ((token-stream-$$ ts) => values)
       (else
        (let (eof ($$ (char-stream-loc (token-stream-cs ts))))
          (set! (token-stream-$$ ts)
            eof)
          eof)))
      next)))

(def (token-stream-unget ts tok)
  (unless (eof-object? tok)
    (with ((token-stream _ buf) ts)
      (set! (token-stream-buf ts)
        (cons tok buf)))))

(def (token-stream-peek ts)
  (with ((token-stream _ buf) ts)
    (match buf
      ([tok . rest]
       tok)
      (else
       (let (next (token-stream-get ts))
         (unless (eof-object? next)
           (set! (token-stream-buf ts)
             [next]))
         next)))))

(def (token-stream-loc ts)
  (with ((token-stream cs buf) ts)
    (match buf
      ([tok . rest]
       (token-loc tok))
      (else
       (char-stream-loc cs)))))

(def (lexer-input-stream inp)
  (cond
   ((input-port? inp)
    (make-char-stream inp))
   ((string? inp)
    (make-char-stream (open-input-string inp)))
   ((char-stream? inp) inp)
   (else
    (raise-bad-argument lexer "input source; input-port, string or char-stream" inp))))

;; cs: char-stream
;; Ls: list of rlangs for each lexeme; matches longest, with ties resolved in order
;; Rs: list of reductions receiving lexeme text and location to construct a token
(def (lex1 cs Ls Rs)
  (def (chars->string chars)
    (list->string (reverse chars)))

  (def (token-e t e start end)
    (let (loc (location-delta start end))
      (make-token t e loc)))

  (def (raise-e chars start end)
    (let (tok (token-e 'ERROR (chars->string chars) start end))
      (raise-parse-error lex "No lexeme matching input" tok)))

  (def (loop Ls chars start E)
    (let (next (char-stream-getc cs))
      (if (eof-object? next)
        (if (null? chars)
          ;; we are not parsing any lexeme, this plain old eof
          (eof-object)
          ;; check if any L is nullable, then it matches the lexeme
          (let lp ((rest-Ls Ls) (rest-Rs Rs))
            (match rest-Ls
              ([L . rest-Ls]
               (match rest-Rs
                 ([R . rest-Rs]
                  (if (delta L)
                    (let (end (char-stream-loc cs))
                      (R (chars->string chars) (location-delta start end)))
                    (lp rest-Ls rest-Rs)))))
              (else
               ;; no match, fail with incomplete parse
               (E chars)))))
        (let* ((chars (cons next chars))
               (Ls* (map (cut deriv <> next) Ls))
               (deltas (map delta Ls*)))
          (cond
           ((ormap values deltas)
            ;; some lexeme has matched
            ;; try for longer match with an E that returns the current lexeme
            (let* ((end (char-stream-loc cs))
                   (E (lambda (xchars)
                        ;; return extra chars to the stream
                        (let (count (##fx- (length xchars) (length chars)))
                          (let lp ((rest xchars) (k 0))
                            (when (##fx< k count)
                              (match rest
                                ([char . rest]
                                 (char-stream-ungetc cs char)
                                 (lp rest (##fx+ k 1)))))))
                        ;; find first match and apply rule
                        (let lp ((rest-deltas deltas) (rest-Rs Rs))
                          (match rest-deltas
                            ([hd . rest-deltas]
                             (match rest-Rs
                               ([R . rest-Rs]
                                (if hd
                                  (R (chars->string chars) (location-delta start end))
                                  (lp rest-deltas rest-Rs))))))))))
              (loop Ls* chars start E)))
           ((ormap (? (not @nul?)) Ls*)
            ;; some lexeme is still matching, continue
            (loop Ls* chars start E))
           (else
            ;; no lexeme matches, continue with E
            (E chars)))))))

  (let* ((first (char-stream-getc cs)) ; get the right starting location!
         (start (char-stream-loc cs))
         (_ (char-stream-ungetc cs first))
         (E (lambda (chars)
              (let (end (char-stream-loc cs))
                (raise-e chars start end)))))
    (loop Ls [] start E)))

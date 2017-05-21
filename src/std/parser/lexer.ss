;;; -*- Gerbil -*-
;;; (C) vyzo
;;; std parser lexer and lexer generator
package: std/parser

(import :std/parser/base
        :std/parser/stream
        :std/parser/rlang)

(export #t) ;; XXX

;; cs: char-stream 
;; Ls: list of rlangs for each lexeme; matches longest, with ties resolved in order
;; Rs: list of reductions receiving lexeme text and location to construct a token
(def (lex1 cs Ls Rs)
  (def (chars->string chars)
    (list->string (reverse chars)))
  
  (def (token-loc start end)
    (with (((location port line col _ xoff) start)
           ((location _ _ _ eoff exoff) end))
      (make-location port line col (fx+ (fx- exoff xoff) eoff) xoff)))

  (def (token-e t e start end)
    (let (loc (token-loc start end))
      (make-token t e loc)))

  (def (raise-e chars start end)
    (let (tok (token-e 'ERROR (chars->string chars) start end))
      (raise-parse-error 'lex "No lexeme matching input" tok)))
  
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
                      (R (chars->string chars) (token-loc start end)))
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
                        (let (count (fx- (length xchars) (length chars)))
                          (let lp ((rest xchars) (k 0))
                            (when (fx< k count)
                              (match rest
                                ([char . rest]
                                 (char-stream-ungetc cs char)
                                 (lp rest (fx1+ k)))))))
                        ;; find first match and apply rule
                        (let lp ((rest-deltas deltas) (rest-Rs Rs))
                          (match rest-deltas
                            ([hd . rest-deltas]
                             (match rest-Rs
                               ([R . rest-Rs]
                                (if hd
                                  (R (chars->string chars) (token-loc start end))
                                  (lp rest-deltas rest-Rs))))))))))
              (loop Ls* chars start E)))
           ((ormap (? (not @nul?)) Ls*)
            ;; some lexeme is still matching, continue
            (loop Ls* chars start E))
           (else
            ;; no lexeme matches, continue with E
            (E chars)))))))
  
  (let* ((start (char-stream-loc cs))
         (E (lambda (chars)
              (let (end (char-stream-loc cs))
                (raise-e chars start end)))))
    (loop Ls [] start E)))

;;; -*- Gerbil -*-
;;; © vyzo
;;; static http mux
(import :std/error
        :std/interface
        ../interface
        ../handlers/empty
        ../handlers/file
        ../handlers/directory)
(export new-static-mux
        (struct-out StaticRule)
        (rename: match-path match-request-path)
        (rename: match-rest match-request-rest))

(defstruct StaticRule
  ((match?  : :procedure)
   (handler : RequestHandler)))

(defstruct static-mux ((rules :- :list)))

(def (new-static-mux . rules)
  (ServerMux
   (make-static-mux
    (list->static-rule-list rules))))

(def (list->static-rule-list (lst : :list))
  => :list
  (: (let loop ((rest lst :- :list)
                (rules [] :- :list))
       (match rest
         ([(? StaticRule? rule) . rest]
          (loop rest (cons rule rules)))
         ([path: (? string? path) (? RequestHandler? handler) . rest]
          (loop rest
                (cons (StaticRule (match-path path) handler)
                      rules)))
         ([rest: (? string? path) (? RequestHandler? handler) . rest]
          (loop rest
                (cons (StaticRule (match-rest path) handler)
                      rules)))
         ([file: (? string? path) (? string? file-path)]
          (loop rest
                (cons (StaticRule (match-path path)
                                  (new-file-handler file-path))
                      rules)))
         ([dir: (? string? path) (? string? dir-path)]
          (loop rest
                (cons (StaticRule (match-rest path)
                                  (new-directory-handler path dir-path))
                      rules)))
         ([]
          (reverse! rules))
         (else
          (raise-bad-argument list->static-rule-list "static rule list" lst rest))))
     :list))

(def (match-path (path : :string))
  => :procedure
  (lambda ((req :- Request))
    (equal? req.url.path path)))

(def (match-rest (path : :string))
  => :procedure
  (let (path/ (string-append path "/"))
    (lambda ((req :- Request))
      (let (request-path req.url.path)
        (or (equal? path request-path)
          (string-prefix? path/ request-path))))))

(implement ServerMux static-mux
  (request-handler
   (lambda (self req)
     (let loop ((rest self.rules :- :list))
         => RequestHandler
         (match rest
           ([rule . rest]
            (using (rule :- StaticRule)
              (if (rule.match? req)
                rule.handler
                (loop rest))))
           (else
            Not-Found-handler))))))

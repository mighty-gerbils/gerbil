(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1713454410)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'gerbil/runtime/syntax#SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args111076%_
        (apply make-instance SyntaxError::t _%$args111076%_)))
    (define SyntaxError-message
      (__make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (__make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where
      (__make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (__make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (__make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks
      (__make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-continuation
      (__make-class-slot-accessor SyntaxError::t 'continuation))
    (define SyntaxError-message-set!
      (__make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (__make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (__make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (__make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set!
      (__make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (__make-class-slot-mutator SyntaxError::t 'marks))
    (define SyntaxError-continuation-set!
      (__make-class-slot-mutator SyntaxError::t 'continuation))
    (define &SyntaxError-message
      (__make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (__make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (__make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (__make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (__make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (__make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-continuation
      (__make-class-slot-unchecked-accessor SyntaxError::t 'continuation))
    (define &SyntaxError-message-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define &SyntaxError-continuation-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'continuation))
    (define SyntaxError::display-exception
      (lambda (_%self110577110958%_ _%port110960%_)
        (let* ((_%self110962%_ _%self110577110958%_)
               (_%self110964%_ _%self110962%_))
          (letrec ((_%location110974%_
                    (lambda ()
                      (let _%lp111036%_ ((_%rest111038%_
                                          (##unchecked-structure-ref
                                           _%self110964%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest111039111047%_ _%rest111038%_)
                               (_%else111041111055%_ (lambda () '#f))
                               (_%K111043111064%_
                                (lambda (_%rest111058%_ _%hd111059%_)
                                  (let ((_%$e111061%_
                                         (__AST-source _%hd111059%_)))
                                    (if _%$e111061%_
                                        _%$e111061%_
                                        (_%lp111036%_ _%rest111058%_))))))
                          (if (##pair? _%rest111039111047%_)
                              (let ((_%hd111044111067%_
                                     (##car _%rest111039111047%_))
                                    (_%tl111045111069%_
                                     (##cdr _%rest111039111047%_)))
                                (let* ((_%hd111072%_ _%hd111044111067%_)
                                       (_%rest111074%_ _%tl111045111069%_))
                                  (_%K111043111064%_
                                   _%rest111074%_
                                   _%hd111072%_)))
                              (_%else111041111055%_)))))))
            (__call-with-parameters
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e110977%_ (_%location110974%_)))
                 (if _%$e110977%_
                     ((lambda (_%where110980%_)
                        (##display-locat _%where110980%_ '#t _%port110960%_))
                      _%$e110977%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e110983%_
                      (##unchecked-structure-ref _%self110964%_ '4 '#f '#f)))
                 (if _%$e110983%_
                     ((lambda (_%where110986%_)
                        (displayln
                         '" at "
                         _%where110986%_
                         '": "
                         (##unchecked-structure-ref
                          _%self110964%_
                          '2
                          '#f
                          '#f)))
                      _%$e110983%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self110964%_ '2 '#f '#f))))
               (let* ((_%self.irritants110988110996%_
                       (##unchecked-structure-ref _%self110964%_ '3 '#f '#f))
                      (_%else110990111004%_ (lambda () '#!void))
                      (_%K110992111017%_
                       (lambda (_%rest111007%_ _%stx111008%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx111008%_)
                         (for-each
                          (lambda (_%detail111010%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail111010%_))
                            (let ((_%$e111012%_
                                   (__AST-source _%detail111010%_)))
                              (if _%$e111012%_
                                  ((lambda (_%loc111015%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc111015%_
                                      '#t
                                      _%port110960%_))
                                   _%$e111012%_)
                                  '#!void))
                            (newline))
                          _%rest111007%_))))
                 (if (##pair? _%self.irritants110988110996%_)
                     (let ((_%hd110993111020%_
                            (##car _%self.irritants110988110996%_))
                           (_%tl110994111022%_
                            (##cdr _%self.irritants110988110996%_)))
                       (let* ((_%stx111025%_ _%hd110993111020%_)
                              (_%rest111027%_ _%tl110994111022%_))
                         (_%K110992111017%_ _%rest111027%_ _%stx111025%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont111028111030%_
                          (##unchecked-structure-ref
                           _%self110964%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont111028111030%_
                         (let ((_%cont111033%_ _%cont111028111030%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont111033%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port110960%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message110829%_
               _%irritants110830%_
               _%where110831%_
               _%context110832%_
               _%marks110833%_
               _%phi110834%_)
        (let ((__obj111173
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj111173 _%message110829%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj111173
           _%irritants110830%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj111173 _%where110831%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj111173 _%context110832%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj111173 _%marks110833%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj111173 _%phi110834%_ '6 '#f '#f)
          __obj111173)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where110824%_
               _%message110825%_
               _%stx110826%_
               .
               _%details110827%_)
        (raise (make-syntax-error
                _%message110825%_
                (cons _%stx110826%_ _%details110827%_)
                _%where110824%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '())
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args110821%_ (apply make-instance AST::t _%$args110821%_)))
    (define AST-e (__make-class-slot-accessor AST::t 'e))
    (define AST-source (__make-class-slot-accessor AST::t 'source))
    (define AST-e-set! (__make-class-slot-mutator AST::t 'e))
    (define AST-source-set! (__make-class-slot-mutator AST::t 'source))
    (define &AST-e (__make-class-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (__make-class-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (__make-class-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (__make-class-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_%stx110819%_)
        (if (##structure-instance-of? _%stx110819%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx110819%_ '1 '#f '#f)
            _%stx110819%_)))
    (define __AST-source
      (lambda (_%stx110810%_)
        (let _%lp110812%_ ((_%src110814%_ _%stx110810%_))
          (if (##structure-instance-of? _%src110814%_ 'gerbil#AST::t)
              (_%lp110812%_
               (##unchecked-structure-ref _%src110814%_ '2 '#f '#f))
              (if (##locat? _%src110814%_) _%src110814%_ '#f)))))
    (define __AST
      (lambda (_%e110802%_ _%src-stx110803%_)
        (let ((_%src110805%_ (__AST-source _%src-stx110803%_)))
          (if (or (##structure-instance-of? _%e110802%_ 'gerbil#AST::t)
                  (not _%src110805%_))
              _%e110802%_
              (##structure AST::t _%e110802%_ _%src110805%_)))))
    (define __AST-eq?
      (lambda (_%stx110799%_ _%obj110800%_)
        (eq? (__AST-e _%stx110799%_) _%obj110800%_)))
    (define __AST-pair?
      (lambda (_%stx110797%_) (pair? (__AST-e _%stx110797%_))))
    (define __AST-null?
      (lambda (_%stx110795%_) (null? (__AST-e _%stx110795%_))))
    (define __AST-datum?
      (lambda (_%stx110776%_)
        (let* ((_%e110778%_ (__AST-e _%stx110776%_))
               (_%$e110780%_ (number? _%e110778%_)))
          (if _%$e110780%_
              _%$e110780%_
              (let ((_%$e110783%_ (string? _%e110778%_)))
                (if _%$e110783%_
                    _%$e110783%_
                    (let ((_%$e110786%_ (char? _%e110778%_)))
                      (if _%$e110786%_
                          _%$e110786%_
                          (let ((_%$e110789%_ (keyword? _%e110778%_)))
                            (if _%$e110789%_
                                _%$e110789%_
                                (let ((_%$e110792%_ (boolean? _%e110778%_)))
                                  (if _%$e110792%_
                                      _%$e110792%_
                                      (eq? _%e110778%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx110774%_) (symbol? (__AST-e _%stx110774%_))))
    (define __AST-id-list?__%
      (lambda (_%stx110725%_ _%tail?110726%_)
        (let _%lp110728%_ ((_%rest110730%_ _%stx110725%_))
          (let* ((_%$e110732%_ _%rest110730%_)
                 (_%$E110734110747%_
                  (lambda ()
                    (let* ((_%$E110735110742%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110732%_)))
                           (_%rest110745%_ _%$e110732%_))
                      (_%tail?110726%_ _%rest110745%_)))))
            (if (__AST-pair? _%$e110732%_)
                (let* ((_%$tgt110736110750%_ (__AST-e _%$e110732%_))
                       (_%$hd110737110753%_ (##car _%$tgt110736110750%_))
                       (_%$tl110738110756%_ (##cdr _%$tgt110736110750%_))
                       (_%hd110760%_ _%$hd110737110753%_)
                       (_%rest110762%_ _%$tl110738110756%_))
                  (if (__AST-id? _%hd110760%_)
                      (_%lp110728%_ _%rest110762%_)
                      '#f))
                (_%$E110734110747%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx110767%_)
        (let ((_%tail?110769%_ __AST-null?))
          (__AST-id-list?__% _%stx110767%_ _%tail?110769%_))))
    (define __AST-id-list?
      (lambda _g111176_
        (let ((_g111175_ (##length _g111176_)))
          (cond ((##fx= _g111175_ 1) (apply __AST-id-list?__0 _g111176_))
                ((##fx= _g111175_ 2) (apply __AST-id-list?__% _g111176_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g111176_))))))
    (define __AST-bind-list?
      (lambda (_%stx110717%_)
        (__AST-id-list?__%
         _%stx110717%_
         (lambda (_%e110719%_)
           (let ((_%$e110721%_ (__AST-null? _%e110719%_)))
             (if _%$e110721%_ _%$e110721%_ (__AST-id? _%e110719%_)))))))
    (define __AST-list?__%
      (lambda (_%stx110670%_ _%tail?110671%_)
        (let _%lp110673%_ ((_%rest110675%_ _%stx110670%_))
          (let* ((_%$e110677%_ _%rest110675%_)
                 (_%$E110679110692%_
                  (lambda ()
                    (let* ((_%$E110680110687%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e110677%_)))
                           (_%rest110690%_ _%$e110677%_))
                      (_%tail?110671%_ _%rest110690%_)))))
            (if (__AST-pair? _%$e110677%_)
                (let* ((_%$tgt110681110695%_ (__AST-e _%$e110677%_))
                       (_%$hd110682110698%_ (##car _%$tgt110681110695%_))
                       (_%$tl110683110701%_ (##cdr _%$tgt110681110695%_))
                       (_%rest110705%_ _%$tl110683110701%_))
                  (_%lp110673%_ _%rest110705%_))
                (_%$E110679110692%_))))))
    (define __AST-list?__0
      (lambda (_%stx110710%_)
        (let ((_%tail?110712%_ __AST-null?))
          (__AST-list?__% _%stx110710%_ _%tail?110712%_))))
    (define __AST-list?
      (lambda _g111178_
        (let ((_g111177_ (##length _g111178_)))
          (cond ((##fx= _g111177_ 1) (apply __AST-list?__0 _g111178_))
                ((##fx= _g111177_ 2) (apply __AST-list?__% _g111178_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g111178_))))))
    (define __AST->list
      (lambda (_%stx110635%_)
        (let* ((_%$e110637%_ _%stx110635%_)
               (_%$E110639110652%_
                (lambda ()
                  (let* ((_%$E110640110647%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e110637%_)))
                         (_%rest110650%_ _%$e110637%_))
                    (__AST-e _%rest110650%_)))))
          (if (__AST-pair? _%$e110637%_)
              (let* ((_%$tgt110641110655%_ (__AST-e _%$e110637%_))
                     (_%$hd110642110658%_ (##car _%$tgt110641110655%_))
                     (_%$tl110643110661%_ (##cdr _%$tgt110641110655%_))
                     (_%hd110665%_ _%$hd110642110658%_)
                     (_%rest110667%_ _%$tl110643110661%_))
                (cons _%hd110665%_ (__AST->list _%rest110667%_)))
              (_%$E110639110652%_)))))
    (define __AST->datum
      (lambda (_%stx110628%_)
        (if (##structure-instance-of? _%stx110628%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx110628%_))
            (if (pair? _%stx110628%_)
                (cons (__AST->datum (##car _%stx110628%_))
                      (__AST->datum (##cdr _%stx110628%_)))
                (if (vector? _%stx110628%_)
                    (vector-map __AST->datum _%stx110628%_)
                    (if (box? _%stx110628%_)
                        (box (__AST->datum (unbox _%stx110628%_)))
                        _%stx110628%_))))))
    (define get-readenv
      (lambda (_%port110626%_)
        (##make-readenv
         _%port110626%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in110614%_)
        (let ((_%e110616%_ (##read-datum-or-eof (get-readenv _%in110614%_))))
          (if (eof-object? (__AST-e _%e110616%_))
              (__AST-e _%e110616%_)
              _%e110616%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in110622%_ (current-input-port)))
          (read-syntax__% _%in110622%_))))
    (define read-syntax
      (lambda _g111180_
        (let ((_g111179_ (##length _g111180_)))
          (cond ((##fx= _g111179_ 0) (apply read-syntax__0 _g111180_))
                ((##fx= _g111179_ 1) (apply read-syntax__% _g111180_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g111180_))))))
    (define read-syntax-from-file
      (lambda (_%path110609%_)
        (let ((_%r110611%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path110609%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r110611%_)
              (cdr (__AST-e (vector-ref _%r110611%_ '1)))
              (error (err-code->string _%r110611%_) _%path110609%_)))))
    (define __wrap-syntax
      (lambda (_%re110606%_ _%e110607%_)
        (if (eof-object? _%e110607%_)
            _%e110607%_
            (##structure AST::t _%e110607%_ (##readenv->locat _%re110606%_)))))
    (define __unwrap-syntax
      (lambda (_%re110603%_ _%e110604%_) (__AST-e _%e110604%_)))
    (define __pp-syntax
      (lambda (_%stx110601%_) (pp (__AST->datum _%stx110601%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt110599%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt110599%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt110599%_ '@list)
          (macro-readtable-brace-handler-set! _%rt110599%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt110599%_
           '#\!
           __read-sharp-bang)
          _%rt110599%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt110595%_ _%kw110596%_)
        (macro-readtable-bracket-handler-set! _%rt110595%_ _%kw110596%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt110592%_ _%kw110593%_)
        (macro-readtable-brace-handler-set! _%rt110592%_ _%kw110593%_)))
    (define __read-sharp-bang
      (lambda (_%re110583%_ _%next110584%_ _%start-pos110585%_)
        (if (eq? _%start-pos110585%_ '0)
            (let* ((_%line110587%_
                    (##read-line
                     (macro-readenv-port _%re110583%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line110589%_
                    (substring
                     _%line110587%_
                     '1
                     (string-length _%line110587%_))))
              (macro-readenv-script-line-set!
               _%re110583%_
               _%script-line110589%_)
              (##script-marker))
            (##read-sharp-bang
             _%re110583%_
             _%next110584%_
             _%start-pos110585%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj110581%_)
        (if (source-location? _%obj110581%_)
            (string? (##locat-container _%obj110581%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj110579%_)
        (if (##locat? _%obj110579%_)
            (##container->path (##locat-container _%obj110579%_))
            '#f)))))

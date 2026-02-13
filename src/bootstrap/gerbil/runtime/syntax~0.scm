(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1771025398)
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
      (lambda _%$args165474%_
        (apply make-instance SyntaxError::t _%$args165474%_)))
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
      (lambda (_%self165193%_ _%port165194%_)
        (let ((_%self165197%_ _%self165193%_))
          (letrec ((_%location165208%_
                    (lambda ()
                      (letrec ((_%from-irritants165349%_
                                (lambda ()
                                  (let _%lp165434%_ ((_%rest165436%_
                                                      (##unchecked-structure-ref
                                                       _%self165197%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest165437165445%_
                                            _%rest165436%_)
                                           (_%else165439165453%_
                                            (lambda () '#f))
                                           (_%K165441165462%_
                                            (lambda (_%rest165456%_
                                                     _%hd165457%_)
                                              (let ((_%$e165459%_
                                                     (__AST-source
                                                      _%hd165457%_)))
                                                (if _%$e165459%_
                                                    _%$e165459%_
                                                    (_%lp165434%_
                                                     _%rest165456%_))))))
                                      (if (pair? _%rest165437165445%_)
                                          (let ((_%hd165442165465%_
                                                 (##car _%rest165437165445%_))
                                                (_%tl165443165467%_
                                                 (##cdr _%rest165437165445%_)))
                                            (let* ((_%hd165470%_
                                                    _%hd165442165465%_)
                                                   (_%rest165472%_
                                                    _%tl165443165467%_))
                                              (_%K165441165462%_
                                               _%rest165472%_
                                               _%hd165470%_)))
                                          (_%else165439165453%_))))))
                               (_%from-context165350%_
                                (lambda ()
                                  (let _%lp165356%_ ((_%rest165358%_
                                                      (##unchecked-structure-ref
                                                       _%self165197%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest165359165367%_
                                            _%rest165358%_)
                                           (_%else165361165375%_
                                            (lambda () '#f))
                                           (_%K165363165421%_
                                            (lambda (_%rest165378%_
                                                     _%hd165379%_)
                                              (let* ((_%hd165380165390%_
                                                      _%hd165379%_)
                                                     (_%else165382165398%_
                                                      (lambda ()
                                                        (_%lp165356%_
                                                         _%rest165378%_)))
                                                     (_%K165384165406%_
                                                      (lambda (_%loc165401%_)
                                                        (let ((_%$e165403%_
                                                               (__AST-source
                                                                _%loc165401%_)))
                                                          (if _%$e165403%_
                                                              _%$e165403%_
                                                              (_%lp165356%_
                                                               _%rest165378%_))))))
                                                (if (pair? _%hd165380165390%_)
                                                    (let ((_%hd165385165409%_
                                                           (##car _%hd165380165390%_))
                                                          (_%tl165386165411%_
                                                           (##cdr _%hd165380165390%_)))
                                                      (if (##eq? _%hd165385165409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl165386165411%_)
                      (let ((_%hd165387165414%_ (##car _%tl165386165411%_))
                            (_%tl165388165416%_ (##cdr _%tl165386165411%_)))
                        (let ((_%loc165419%_ _%hd165387165414%_))
                          (if (null? _%tl165388165416%_)
                              (_%K165384165406%_ _%loc165419%_)
                              (_%else165382165398%_))))
                      (_%else165382165398%_))
                  (_%else165382165398%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else165382165398%_))))))
                                      (if (pair? _%rest165359165367%_)
                                          (let ((_%hd165364165424%_
                                                 (##car _%rest165359165367%_))
                                                (_%tl165365165426%_
                                                 (##cdr _%rest165359165367%_)))
                                            (let* ((_%hd165429%_
                                                    _%hd165364165424%_)
                                                   (_%rest165431%_
                                                    _%tl165365165426%_))
                                              (_%K165363165421%_
                                               _%rest165431%_
                                               _%hd165429%_)))
                                          (_%else165361165375%_)))))))
                        (let ((_%$e165352%_ (_%from-irritants165349%_)))
                          (if _%$e165352%_
                              _%$e165352%_
                              (_%from-context165350%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e165211%_ (_%location165208%_)))
                 (if _%$e165211%_
                     ((lambda (_%loc165214%_)
                        (##display-locat _%loc165214%_ '#t _%port165194%_))
                      _%$e165211%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self165197%_ '2 '#f '#f))
               (let ((_%$e165217%_
                      (##unchecked-structure-ref _%self165197%_ '4 '#f '#f)))
                 (if _%$e165217%_
                     ((lambda (_%where165220%_)
                        (displayln '"--- Context: ")
                        (let _%lp165222%_ ((_%rest165224%_ _%where165220%_))
                          (let* ((_%rest165225165233%_ _%rest165224%_)
                                 (_%else165227165241%_ (lambda () '#!void))
                                 (_%K165229165291%_
                                  (lambda (_%rest165244%_ _%hd165245%_)
                                    (let* ((_%hd165246165256%_ _%hd165245%_)
                                           (_%else165248165264%_
                                            (lambda ()
                                              (displayln '" at " _%hd165245%_)
                                              (_%lp165222%_ _%rest165244%_)))
                                           (_%K165250165276%_
                                            (lambda (_%ctx165267%_)
                                              (let ((_%$e165269%_
                                                     (__AST-source
                                                      _%ctx165267%_)))
                                                (if _%$e165269%_
                                                    ((lambda (_%loc165272%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc165272%_
                                                        '#t
                                                        _%port165194%_)
                                                       (newline)
                                                       (_%lp165222%_
                                                        _%rest165244%_))
                                                     _%$e165269%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx165267%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx165267%_)
                                                          (_%lp165222%_
                                                           _%rest165244%_))
                                                        (_%lp165222%_
                                                         _%rest165244%_)))))))
                                      (if (pair? _%hd165246165256%_)
                                          (let ((_%hd165251165279%_
                                                 (##car _%hd165246165256%_))
                                                (_%tl165252165281%_
                                                 (##cdr _%hd165246165256%_)))
                                            (if (##eq? _%hd165251165279%_ '@)
                                                (if (pair? _%tl165252165281%_)
                                                    (let ((_%hd165253165284%_
                                                           (##car _%tl165252165281%_))
                                                          (_%tl165254165286%_
                                                           (##cdr _%tl165252165281%_)))
                                                      (let ((_%ctx165289%_
                                                             _%hd165253165284%_))
                                                        (if (null? _%tl165254165286%_)
                                                            (_%K165250165276%_
                                                             _%ctx165289%_)
                                                            (_%else165248165264%_))))
                                                    (_%else165248165264%_))
                                                (_%else165248165264%_)))
                                          (_%else165248165264%_))))))
                            (if (pair? _%rest165225165233%_)
                                (let ((_%hd165230165294%_
                                       (##car _%rest165225165233%_))
                                      (_%tl165231165296%_
                                       (##cdr _%rest165225165233%_)))
                                  (let* ((_%hd165299%_ _%hd165230165294%_)
                                         (_%rest165301%_ _%tl165231165296%_))
                                    (_%K165229165291%_
                                     _%rest165301%_
                                     _%hd165299%_)))
                                '#!void))))
                      _%$e165217%_)
                     '#!void))
               (let* ((_%self.irritants165302165310%_
                       (##unchecked-structure-ref _%self165197%_ '3 '#f '#f))
                      (_%else165304165318%_ (lambda () '#!void))
                      (_%K165306165331%_
                       (lambda (_%rest165321%_ _%stx165322%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx165322%_)
                         (for-each
                          (lambda (_%detail165324%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail165324%_))
                            (let ((_%$e165326%_
                                   (__AST-source _%detail165324%_)))
                              (if _%$e165326%_
                                  ((lambda (_%loc165329%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc165329%_
                                      '#t
                                      _%port165194%_))
                                   _%$e165326%_)
                                  '#!void))
                            (newline))
                          _%rest165321%_))))
                 (if (pair? _%self.irritants165302165310%_)
                     (let ((_%hd165307165334%_
                            (##car _%self.irritants165302165310%_))
                           (_%tl165308165336%_
                            (##cdr _%self.irritants165302165310%_)))
                       (let* ((_%stx165339%_ _%hd165307165334%_)
                              (_%rest165341%_ _%tl165308165336%_))
                         (_%K165306165331%_ _%rest165341%_ _%stx165339%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont165342165344%_
                          (##unchecked-structure-ref
                           _%self165197%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont165342165344%_
                         (let ((_%cont165346%_ _%cont165342165344%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont165346%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port165194%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass165056%_ SyntaxError::t) (_%klass165061%_ _%klass165056%_))
      (__seal-class! _%klass165061%_))
    (define make-syntax-error
      (lambda (_%message165049%_
               _%irritants165050%_
               _%where165051%_
               _%context165052%_
               _%marks165053%_
               _%phi165054%_)
        (let ((__obj165571
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj165571 _%message165049%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj165571
           _%irritants165050%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj165571 _%where165051%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj165571 _%context165052%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj165571 _%marks165053%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj165571 _%phi165054%_ '6 '#f '#f)
          __obj165571)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where165044%_
               _%message165045%_
               _%stx165046%_
               .
               _%details165047%_)
        (raise (make-syntax-error
                _%message165045%_
                (cons _%stx165046%_ _%details165047%_)
                _%where165044%_
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
      (lambda _%$args165041%_ (apply make-instance AST::t _%$args165041%_)))
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
      (lambda (_%stx165039%_)
        (if (##structure-instance-of? _%stx165039%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx165039%_ '1 '#f '#f)
            _%stx165039%_)))
    (define __AST-source
      (lambda (_%stx165030%_)
        (let _%lp165032%_ ((_%src165034%_ _%stx165030%_))
          (if (##structure-instance-of? _%src165034%_ 'gerbil#AST::t)
              (_%lp165032%_
               (##unchecked-structure-ref _%src165034%_ '2 '#f '#f))
              (if (##locat? _%src165034%_) _%src165034%_ '#f)))))
    (define __AST
      (lambda (_%e165022%_ _%src-stx165023%_)
        (let ((_%src165025%_ (__AST-source _%src-stx165023%_)))
          (if (or (##structure-instance-of? _%e165022%_ 'gerbil#AST::t)
                  (not _%src165025%_))
              _%e165022%_
              (##structure AST::t _%e165022%_ _%src165025%_)))))
    (define __AST-eq?
      (lambda (_%stx165019%_ _%obj165020%_)
        (eq? (__AST-e _%stx165019%_) _%obj165020%_)))
    (define __AST-pair?
      (lambda (_%stx165017%_) (pair? (__AST-e _%stx165017%_))))
    (define __AST-null?
      (lambda (_%stx165015%_) (null? (__AST-e _%stx165015%_))))
    (define __AST-datum?
      (lambda (_%stx164996%_)
        (let* ((_%e164998%_ (__AST-e _%stx164996%_))
               (_%$e165000%_ (number? _%e164998%_)))
          (if _%$e165000%_
              _%$e165000%_
              (let ((_%$e165003%_ (string? _%e164998%_)))
                (if _%$e165003%_
                    _%$e165003%_
                    (let ((_%$e165006%_ (char? _%e164998%_)))
                      (if _%$e165006%_
                          _%$e165006%_
                          (let ((_%$e165009%_ (keyword? _%e164998%_)))
                            (if _%$e165009%_
                                _%$e165009%_
                                (let ((_%$e165012%_ (boolean? _%e164998%_)))
                                  (if _%$e165012%_
                                      _%$e165012%_
                                      (eq? _%e164998%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx164994%_) (symbol? (__AST-e _%stx164994%_))))
    (define __AST-id-list?__%
      (lambda (_%stx164945%_ _%tail?164946%_)
        (let _%lp164948%_ ((_%rest164950%_ _%stx164945%_))
          (let* ((_%$e164952%_ _%rest164950%_)
                 (_%$E164954164967%_
                  (lambda ()
                    (let* ((_%$E164955164962%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e164952%_)))
                           (_%rest164965%_ _%$e164952%_))
                      (_%tail?164946%_ _%rest164965%_)))))
            (if (__AST-pair? _%$e164952%_)
                (let* ((_%$tgt164956164970%_ (__AST-e _%$e164952%_))
                       (_%$hd164957164973%_ (##car _%$tgt164956164970%_))
                       (_%$tl164958164976%_ (##cdr _%$tgt164956164970%_))
                       (_%hd164980%_ _%$hd164957164973%_)
                       (_%rest164982%_ _%$tl164958164976%_))
                  (if (__AST-id? _%hd164980%_)
                      (_%lp164948%_ _%rest164982%_)
                      '#f))
                (_%$E164954164967%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx164987%_)
        (let ((_%tail?164989%_ __AST-null?))
          (__AST-id-list?__% _%stx164987%_ _%tail?164989%_))))
    (define __AST-id-list?
      (lambda _g165573_
        (let ((_g165574_ (##length _g165573_)))
          (cond ((##fx= _g165574_ 1) (apply __AST-id-list?__0 _g165573_))
                ((##fx= _g165574_ 2) (apply __AST-id-list?__% _g165573_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g165573_))))))
    (define __AST-bind-list?
      (lambda (_%stx164937%_)
        (__AST-id-list?__%
         _%stx164937%_
         (lambda (_%e164939%_)
           (let ((_%$e164941%_ (__AST-null? _%e164939%_)))
             (if _%$e164941%_ _%$e164941%_ (__AST-id? _%e164939%_)))))))
    (define __AST-list?__%
      (lambda (_%stx164890%_ _%tail?164891%_)
        (let _%lp164893%_ ((_%rest164895%_ _%stx164890%_))
          (let* ((_%$e164897%_ _%rest164895%_)
                 (_%$E164899164912%_
                  (lambda ()
                    (let* ((_%$E164900164907%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e164897%_)))
                           (_%rest164910%_ _%$e164897%_))
                      (_%tail?164891%_ _%rest164910%_)))))
            (if (__AST-pair? _%$e164897%_)
                (let* ((_%$tgt164901164915%_ (__AST-e _%$e164897%_))
                       (_%$hd164902164918%_ (##car _%$tgt164901164915%_))
                       (_%$tl164903164921%_ (##cdr _%$tgt164901164915%_))
                       (_%rest164925%_ _%$tl164903164921%_))
                  (_%lp164893%_ _%rest164925%_))
                (_%$E164899164912%_))))))
    (define __AST-list?__0
      (lambda (_%stx164930%_)
        (let ((_%tail?164932%_ __AST-null?))
          (__AST-list?__% _%stx164930%_ _%tail?164932%_))))
    (define __AST-list?
      (lambda _g165575_
        (let ((_g165576_ (##length _g165575_)))
          (cond ((##fx= _g165576_ 1) (apply __AST-list?__0 _g165575_))
                ((##fx= _g165576_ 2) (apply __AST-list?__% _g165575_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g165575_))))))
    (define __AST->list
      (lambda (_%stx164855%_)
        (let* ((_%$e164857%_ _%stx164855%_)
               (_%$E164859164872%_
                (lambda ()
                  (let* ((_%$E164860164867%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e164857%_)))
                         (_%rest164870%_ _%$e164857%_))
                    (__AST-e _%rest164870%_)))))
          (if (__AST-pair? _%$e164857%_)
              (let* ((_%$tgt164861164875%_ (__AST-e _%$e164857%_))
                     (_%$hd164862164878%_ (##car _%$tgt164861164875%_))
                     (_%$tl164863164881%_ (##cdr _%$tgt164861164875%_))
                     (_%hd164885%_ _%$hd164862164878%_)
                     (_%rest164887%_ _%$tl164863164881%_))
                (cons _%hd164885%_ (__AST->list _%rest164887%_)))
              (_%$E164859164872%_)))))
    (define __AST->datum
      (lambda (_%stx164848%_)
        (if (##structure-instance-of? _%stx164848%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx164848%_))
            (if (pair? _%stx164848%_)
                (cons (__AST->datum (##car _%stx164848%_))
                      (__AST->datum (##cdr _%stx164848%_)))
                (if (vector? _%stx164848%_)
                    (vector-map __AST->datum _%stx164848%_)
                    (if (box? _%stx164848%_)
                        (box (__AST->datum (unbox _%stx164848%_)))
                        _%stx164848%_))))))
    (define get-readenv
      (lambda (_%port164846%_)
        (##make-readenv
         _%port164846%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in164834%_)
        (let ((_%e164836%_ (##read-datum-or-eof (get-readenv _%in164834%_))))
          (if (eof-object? (__AST-e _%e164836%_))
              (__AST-e _%e164836%_)
              _%e164836%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in164842%_ (current-input-port)))
          (read-syntax__% _%in164842%_))))
    (define read-syntax
      (lambda _g165577_
        (let ((_g165578_ (##length _g165577_)))
          (cond ((##fx= _g165578_ 0) (apply read-syntax__0 _g165577_))
                ((##fx= _g165578_ 1) (apply read-syntax__% _g165577_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g165577_))))))
    (define read-syntax-from-file
      (lambda (_%path164829%_)
        (let ((_%r164831%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path164829%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r164831%_)
              (cdr (__AST-e (vector-ref _%r164831%_ '1)))
              (error (err-code->string _%r164831%_) _%path164829%_)))))
    (define __wrap-syntax
      (lambda (_%re164826%_ _%e164827%_)
        (if (eof-object? _%e164827%_)
            _%e164827%_
            (##structure AST::t _%e164827%_ (##readenv->locat _%re164826%_)))))
    (define __unwrap-syntax
      (lambda (_%re164823%_ _%e164824%_) (__AST-e _%e164824%_)))
    (define __pp-syntax
      (lambda (_%stx164821%_) (pp (__AST->datum _%stx164821%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt164819%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt164819%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt164819%_ '@list)
          (macro-readtable-brace-handler-set! _%rt164819%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt164819%_
           '#\!
           __read-sharp-bang)
          _%rt164819%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt164815%_ _%kw164816%_)
        (macro-readtable-bracket-handler-set! _%rt164815%_ _%kw164816%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt164812%_ _%kw164813%_)
        (macro-readtable-brace-handler-set! _%rt164812%_ _%kw164813%_)))
    (define __read-sharp-bang
      (lambda (_%re164803%_ _%next164804%_ _%start-pos164805%_)
        (if (eq? _%start-pos164805%_ '0)
            (let* ((_%line164807%_
                    (##read-line
                     (macro-readenv-port _%re164803%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line164809%_
                    (substring
                     _%line164807%_
                     '1
                     (string-length _%line164807%_))))
              (macro-readenv-script-line-set!
               _%re164803%_
               _%script-line164809%_)
              (##script-marker))
            (##read-sharp-bang
             _%re164803%_
             _%next164804%_
             _%start-pos164805%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj164801%_)
        (if (source-location? _%obj164801%_)
            (string? (##locat-container _%obj164801%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj164799%_)
        (if (##locat? _%obj164799%_)
            (##container->path (##locat-container _%obj164799%_))
            '#f)))))

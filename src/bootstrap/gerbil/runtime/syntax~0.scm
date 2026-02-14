(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1771101399)
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
      (lambda _%$args166491%_
        (apply make-instance SyntaxError::t _%$args166491%_)))
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
      (lambda (_%self166210%_ _%port166211%_)
        (let ((_%self166214%_ _%self166210%_))
          (letrec ((_%location166225%_
                    (lambda ()
                      (letrec ((_%from-irritants166366%_
                                (lambda ()
                                  (let _%lp166451%_ ((_%rest166453%_
                                                      (##unchecked-structure-ref
                                                       _%self166214%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest166454166462%_
                                            _%rest166453%_)
                                           (_%else166456166470%_
                                            (lambda () '#f))
                                           (_%K166458166479%_
                                            (lambda (_%rest166473%_
                                                     _%hd166474%_)
                                              (let ((_%$e166476%_
                                                     (__AST-source
                                                      _%hd166474%_)))
                                                (if _%$e166476%_
                                                    _%$e166476%_
                                                    (_%lp166451%_
                                                     _%rest166473%_))))))
                                      (if (pair? _%rest166454166462%_)
                                          (let ((_%hd166459166482%_
                                                 (##car _%rest166454166462%_))
                                                (_%tl166460166484%_
                                                 (##cdr _%rest166454166462%_)))
                                            (let* ((_%hd166487%_
                                                    _%hd166459166482%_)
                                                   (_%rest166489%_
                                                    _%tl166460166484%_))
                                              (_%K166458166479%_
                                               _%rest166489%_
                                               _%hd166487%_)))
                                          (_%else166456166470%_))))))
                               (_%from-context166367%_
                                (lambda ()
                                  (let _%lp166373%_ ((_%rest166375%_
                                                      (##unchecked-structure-ref
                                                       _%self166214%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%rest166376166384%_
                                            _%rest166375%_)
                                           (_%else166378166392%_
                                            (lambda () '#f))
                                           (_%K166380166438%_
                                            (lambda (_%rest166395%_
                                                     _%hd166396%_)
                                              (let* ((_%hd166397166407%_
                                                      _%hd166396%_)
                                                     (_%else166399166415%_
                                                      (lambda ()
                                                        (_%lp166373%_
                                                         _%rest166395%_)))
                                                     (_%K166401166423%_
                                                      (lambda (_%loc166418%_)
                                                        (let ((_%$e166420%_
                                                               (__AST-source
                                                                _%loc166418%_)))
                                                          (if _%$e166420%_
                                                              _%$e166420%_
                                                              (_%lp166373%_
                                                               _%rest166395%_))))))
                                                (if (pair? _%hd166397166407%_)
                                                    (let ((_%hd166402166426%_
                                                           (##car _%hd166397166407%_))
                                                          (_%tl166403166428%_
                                                           (##cdr _%hd166397166407%_)))
                                                      (if (##eq? _%hd166402166426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%tl166403166428%_)
                      (let ((_%hd166404166431%_ (##car _%tl166403166428%_))
                            (_%tl166405166433%_ (##cdr _%tl166403166428%_)))
                        (let ((_%loc166436%_ _%hd166404166431%_))
                          (if (null? _%tl166405166433%_)
                              (_%K166401166423%_ _%loc166436%_)
                              (_%else166399166415%_))))
                      (_%else166399166415%_))
                  (_%else166399166415%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%else166399166415%_))))))
                                      (if (pair? _%rest166376166384%_)
                                          (let ((_%hd166381166441%_
                                                 (##car _%rest166376166384%_))
                                                (_%tl166382166443%_
                                                 (##cdr _%rest166376166384%_)))
                                            (let* ((_%hd166446%_
                                                    _%hd166381166441%_)
                                                   (_%rest166448%_
                                                    _%tl166382166443%_))
                                              (_%K166380166438%_
                                               _%rest166448%_
                                               _%hd166446%_)))
                                          (_%else166378166392%_)))))))
                        (let ((_%$e166369%_ (_%from-irritants166366%_)))
                          (if _%$e166369%_
                              _%$e166369%_
                              (_%from-context166367%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e166228%_ (_%location166225%_)))
                 (if _%$e166228%_
                     ((lambda (_%loc166231%_)
                        (##display-locat _%loc166231%_ '#t _%port166211%_))
                      _%$e166228%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self166214%_ '2 '#f '#f))
               (let ((_%$e166234%_
                      (##unchecked-structure-ref _%self166214%_ '4 '#f '#f)))
                 (if _%$e166234%_
                     ((lambda (_%where166237%_)
                        (displayln '"--- Context: ")
                        (let _%lp166239%_ ((_%rest166241%_ _%where166237%_))
                          (let* ((_%rest166242166250%_ _%rest166241%_)
                                 (_%else166244166258%_ (lambda () '#!void))
                                 (_%K166246166308%_
                                  (lambda (_%rest166261%_ _%hd166262%_)
                                    (let* ((_%hd166263166273%_ _%hd166262%_)
                                           (_%else166265166281%_
                                            (lambda ()
                                              (displayln '" at " _%hd166262%_)
                                              (_%lp166239%_ _%rest166261%_)))
                                           (_%K166267166293%_
                                            (lambda (_%ctx166284%_)
                                              (let ((_%$e166286%_
                                                     (__AST-source
                                                      _%ctx166284%_)))
                                                (if _%$e166286%_
                                                    ((lambda (_%loc166289%_)
                                                       (display '" at ")
                                                       (##display-locat
                                                        _%loc166289%_
                                                        '#t
                                                        _%port166211%_)
                                                       (newline)
                                                       (_%lp166239%_
                                                        _%rest166261%_))
                                                     _%$e166286%_)
                                                    (if (##structure-instance-of?
                                                         _%ctx166284%_
                                                         'gerbil#AST::t)
                                                        (let ()
                                                          (display '" at ")
                                                          (__pp-syntax
                                                           _%ctx166284%_)
                                                          (_%lp166239%_
                                                           _%rest166261%_))
                                                        (_%lp166239%_
                                                         _%rest166261%_)))))))
                                      (if (pair? _%hd166263166273%_)
                                          (let ((_%hd166268166296%_
                                                 (##car _%hd166263166273%_))
                                                (_%tl166269166298%_
                                                 (##cdr _%hd166263166273%_)))
                                            (if (##eq? _%hd166268166296%_ '@)
                                                (if (pair? _%tl166269166298%_)
                                                    (let ((_%hd166270166301%_
                                                           (##car _%tl166269166298%_))
                                                          (_%tl166271166303%_
                                                           (##cdr _%tl166269166298%_)))
                                                      (let ((_%ctx166306%_
                                                             _%hd166270166301%_))
                                                        (if (null? _%tl166271166303%_)
                                                            (_%K166267166293%_
                                                             _%ctx166306%_)
                                                            (_%else166265166281%_))))
                                                    (_%else166265166281%_))
                                                (_%else166265166281%_)))
                                          (_%else166265166281%_))))))
                            (if (pair? _%rest166242166250%_)
                                (let ((_%hd166247166311%_
                                       (##car _%rest166242166250%_))
                                      (_%tl166248166313%_
                                       (##cdr _%rest166242166250%_)))
                                  (let* ((_%hd166316%_ _%hd166247166311%_)
                                         (_%rest166318%_ _%tl166248166313%_))
                                    (_%K166246166308%_
                                     _%rest166318%_
                                     _%hd166316%_)))
                                '#!void))))
                      _%$e166234%_)
                     '#!void))
               (let* ((_%self.irritants166319166327%_
                       (##unchecked-structure-ref _%self166214%_ '3 '#f '#f))
                      (_%else166321166335%_ (lambda () '#!void))
                      (_%K166323166348%_
                       (lambda (_%rest166338%_ _%stx166339%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx166339%_)
                         (for-each
                          (lambda (_%detail166341%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail166341%_))
                            (let ((_%$e166343%_
                                   (__AST-source _%detail166341%_)))
                              (if _%$e166343%_
                                  ((lambda (_%loc166346%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc166346%_
                                      '#t
                                      _%port166211%_))
                                   _%$e166343%_)
                                  '#!void))
                            (newline))
                          _%rest166338%_))))
                 (if (pair? _%self.irritants166319166327%_)
                     (let ((_%hd166324166351%_
                            (##car _%self.irritants166319166327%_))
                           (_%tl166325166353%_
                            (##cdr _%self.irritants166319166327%_)))
                       (let* ((_%stx166356%_ _%hd166324166351%_)
                              (_%rest166358%_ _%tl166325166353%_))
                         (_%K166323166348%_ _%rest166358%_ _%stx166356%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%cont166359166361%_
                          (##unchecked-structure-ref
                           _%self166214%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont166359166361%_
                         (let ((_%cont166363%_ _%cont166359166361%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont166363%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port166211%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass166073%_ SyntaxError::t) (_%klass166078%_ _%klass166073%_))
      (__seal-class! _%klass166078%_))
    (define make-syntax-error
      (lambda (_%message166066%_
               _%irritants166067%_
               _%where166068%_
               _%context166069%_
               _%marks166070%_
               _%phi166071%_)
        (let ((__obj166588
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj166588 _%message166066%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj166588
           _%irritants166067%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj166588 _%where166068%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj166588 _%context166069%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj166588 _%marks166070%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj166588 _%phi166071%_ '6 '#f '#f)
          __obj166588)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where166061%_
               _%message166062%_
               _%stx166063%_
               .
               _%details166064%_)
        (raise (make-syntax-error
                _%message166062%_
                (cons _%stx166063%_ _%details166064%_)
                _%where166061%_
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
      (lambda _%$args166058%_ (apply make-instance AST::t _%$args166058%_)))
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
      (lambda (_%stx166056%_)
        (if (##structure-instance-of? _%stx166056%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx166056%_ '1 '#f '#f)
            _%stx166056%_)))
    (define __AST-source
      (lambda (_%stx166047%_)
        (let _%lp166049%_ ((_%src166051%_ _%stx166047%_))
          (if (##structure-instance-of? _%src166051%_ 'gerbil#AST::t)
              (_%lp166049%_
               (##unchecked-structure-ref _%src166051%_ '2 '#f '#f))
              (if (##locat? _%src166051%_) _%src166051%_ '#f)))))
    (define __AST
      (lambda (_%e166039%_ _%src-stx166040%_)
        (let ((_%src166042%_ (__AST-source _%src-stx166040%_)))
          (if (or (##structure-instance-of? _%e166039%_ 'gerbil#AST::t)
                  (not _%src166042%_))
              _%e166039%_
              (##structure AST::t _%e166039%_ _%src166042%_)))))
    (define __AST-eq?
      (lambda (_%stx166036%_ _%obj166037%_)
        (eq? (__AST-e _%stx166036%_) _%obj166037%_)))
    (define __AST-pair?
      (lambda (_%stx166034%_) (pair? (__AST-e _%stx166034%_))))
    (define __AST-null?
      (lambda (_%stx166032%_) (null? (__AST-e _%stx166032%_))))
    (define __AST-datum?
      (lambda (_%stx166013%_)
        (let* ((_%e166015%_ (__AST-e _%stx166013%_))
               (_%$e166017%_ (number? _%e166015%_)))
          (if _%$e166017%_
              _%$e166017%_
              (let ((_%$e166020%_ (string? _%e166015%_)))
                (if _%$e166020%_
                    _%$e166020%_
                    (let ((_%$e166023%_ (char? _%e166015%_)))
                      (if _%$e166023%_
                          _%$e166023%_
                          (let ((_%$e166026%_ (keyword? _%e166015%_)))
                            (if _%$e166026%_
                                _%$e166026%_
                                (let ((_%$e166029%_ (boolean? _%e166015%_)))
                                  (if _%$e166029%_
                                      _%$e166029%_
                                      (eq? _%e166015%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx166011%_) (symbol? (__AST-e _%stx166011%_))))
    (define __AST-id-list?__%
      (lambda (_%stx165962%_ _%tail?165963%_)
        (let _%lp165965%_ ((_%rest165967%_ _%stx165962%_))
          (let* ((_%$e165969%_ _%rest165967%_)
                 (_%$E165971165984%_
                  (lambda ()
                    (let* ((_%$E165972165979%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e165969%_)))
                           (_%rest165982%_ _%$e165969%_))
                      (_%tail?165963%_ _%rest165982%_)))))
            (if (__AST-pair? _%$e165969%_)
                (let* ((_%$tgt165973165987%_ (__AST-e _%$e165969%_))
                       (_%$hd165974165990%_ (##car _%$tgt165973165987%_))
                       (_%$tl165975165993%_ (##cdr _%$tgt165973165987%_))
                       (_%hd165997%_ _%$hd165974165990%_)
                       (_%rest165999%_ _%$tl165975165993%_))
                  (if (__AST-id? _%hd165997%_)
                      (_%lp165965%_ _%rest165999%_)
                      '#f))
                (_%$E165971165984%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx166004%_)
        (let ((_%tail?166006%_ __AST-null?))
          (__AST-id-list?__% _%stx166004%_ _%tail?166006%_))))
    (define __AST-id-list?
      (lambda _g166590_
        (let ((_g166591_ (##length _g166590_)))
          (cond ((##fx= _g166591_ 1) (apply __AST-id-list?__0 _g166590_))
                ((##fx= _g166591_ 2) (apply __AST-id-list?__% _g166590_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g166590_))))))
    (define __AST-bind-list?
      (lambda (_%stx165954%_)
        (__AST-id-list?__%
         _%stx165954%_
         (lambda (_%e165956%_)
           (let ((_%$e165958%_ (__AST-null? _%e165956%_)))
             (if _%$e165958%_ _%$e165958%_ (__AST-id? _%e165956%_)))))))
    (define __AST-list?__%
      (lambda (_%stx165907%_ _%tail?165908%_)
        (let _%lp165910%_ ((_%rest165912%_ _%stx165907%_))
          (let* ((_%$e165914%_ _%rest165912%_)
                 (_%$E165916165929%_
                  (lambda ()
                    (let* ((_%$E165917165924%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e165914%_)))
                           (_%rest165927%_ _%$e165914%_))
                      (_%tail?165908%_ _%rest165927%_)))))
            (if (__AST-pair? _%$e165914%_)
                (let* ((_%$tgt165918165932%_ (__AST-e _%$e165914%_))
                       (_%$hd165919165935%_ (##car _%$tgt165918165932%_))
                       (_%$tl165920165938%_ (##cdr _%$tgt165918165932%_))
                       (_%rest165942%_ _%$tl165920165938%_))
                  (_%lp165910%_ _%rest165942%_))
                (_%$E165916165929%_))))))
    (define __AST-list?__0
      (lambda (_%stx165947%_)
        (let ((_%tail?165949%_ __AST-null?))
          (__AST-list?__% _%stx165947%_ _%tail?165949%_))))
    (define __AST-list?
      (lambda _g166592_
        (let ((_g166593_ (##length _g166592_)))
          (cond ((##fx= _g166593_ 1) (apply __AST-list?__0 _g166592_))
                ((##fx= _g166593_ 2) (apply __AST-list?__% _g166592_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g166592_))))))
    (define __AST->list
      (lambda (_%stx165872%_)
        (let* ((_%$e165874%_ _%stx165872%_)
               (_%$E165876165889%_
                (lambda ()
                  (let* ((_%$E165877165884%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e165874%_)))
                         (_%rest165887%_ _%$e165874%_))
                    (__AST-e _%rest165887%_)))))
          (if (__AST-pair? _%$e165874%_)
              (let* ((_%$tgt165878165892%_ (__AST-e _%$e165874%_))
                     (_%$hd165879165895%_ (##car _%$tgt165878165892%_))
                     (_%$tl165880165898%_ (##cdr _%$tgt165878165892%_))
                     (_%hd165902%_ _%$hd165879165895%_)
                     (_%rest165904%_ _%$tl165880165898%_))
                (cons _%hd165902%_ (__AST->list _%rest165904%_)))
              (_%$E165876165889%_)))))
    (define __AST->datum
      (lambda (_%stx165865%_)
        (if (##structure-instance-of? _%stx165865%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx165865%_))
            (if (pair? _%stx165865%_)
                (cons (__AST->datum (##car _%stx165865%_))
                      (__AST->datum (##cdr _%stx165865%_)))
                (if (vector? _%stx165865%_)
                    (vector-map __AST->datum _%stx165865%_)
                    (if (box? _%stx165865%_)
                        (box (__AST->datum (unbox _%stx165865%_)))
                        _%stx165865%_))))))
    (define get-readenv
      (lambda (_%port165863%_)
        (##make-readenv
         _%port165863%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in165851%_)
        (let ((_%e165853%_ (##read-datum-or-eof (get-readenv _%in165851%_))))
          (if (eof-object? (__AST-e _%e165853%_))
              (__AST-e _%e165853%_)
              _%e165853%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in165859%_ (current-input-port)))
          (read-syntax__% _%in165859%_))))
    (define read-syntax
      (lambda _g166594_
        (let ((_g166595_ (##length _g166594_)))
          (cond ((##fx= _g166595_ 0) (apply read-syntax__0 _g166594_))
                ((##fx= _g166595_ 1) (apply read-syntax__% _g166594_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g166594_))))))
    (define read-syntax-from-file
      (lambda (_%path165846%_)
        (let ((_%r165848%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path165846%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r165848%_)
              (cdr (__AST-e (vector-ref _%r165848%_ '1)))
              (error (err-code->string _%r165848%_) _%path165846%_)))))
    (define __wrap-syntax
      (lambda (_%re165843%_ _%e165844%_)
        (if (eof-object? _%e165844%_)
            _%e165844%_
            (##structure AST::t _%e165844%_ (##readenv->locat _%re165843%_)))))
    (define __unwrap-syntax
      (lambda (_%re165840%_ _%e165841%_) (__AST-e _%e165841%_)))
    (define __pp-syntax
      (lambda (_%stx165838%_) (pp (__AST->datum _%stx165838%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt165836%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt165836%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt165836%_ '@list)
          (macro-readtable-brace-handler-set! _%rt165836%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt165836%_
           '#\!
           __read-sharp-bang)
          _%rt165836%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt165832%_ _%kw165833%_)
        (macro-readtable-bracket-handler-set! _%rt165832%_ _%kw165833%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt165829%_ _%kw165830%_)
        (macro-readtable-brace-handler-set! _%rt165829%_ _%kw165830%_)))
    (define __read-sharp-bang
      (lambda (_%re165820%_ _%next165821%_ _%start-pos165822%_)
        (if (eq? _%start-pos165822%_ '0)
            (let* ((_%line165824%_
                    (##read-line
                     (macro-readenv-port _%re165820%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line165826%_
                    (substring
                     _%line165824%_
                     '1
                     (string-length _%line165824%_))))
              (macro-readenv-script-line-set!
               _%re165820%_
               _%script-line165826%_)
              (##script-marker))
            (##read-sharp-bang
             _%re165820%_
             _%next165821%_
             _%start-pos165822%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj165818%_)
        (if (source-location? _%obj165818%_)
            (string? (##locat-container _%obj165818%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj165816%_)
        (if (##locat? _%obj165816%_)
            (##container->path (##locat-container _%obj165816%_))
            '#f)))))

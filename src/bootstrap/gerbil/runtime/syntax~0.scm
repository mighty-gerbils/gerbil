(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1756142919)
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
      (lambda _%$args119479%_
        (apply make-instance SyntaxError::t _%$args119479%_)))
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
      (lambda (_%self119362%_ _%port119363%_)
        (let ((_%self119366%_ _%self119362%_))
          (letrec ((_%location119377%_
                    (lambda ()
                      (let _%lp119439%_ ((_%rest119441%_
                                          (##unchecked-structure-ref
                                           _%self119366%_
                                           '3
                                           '#f
                                           '#f)))
                        (let* ((_%rest119442119450%_ _%rest119441%_)
                               (_%else119444119458%_ (lambda () '#f))
                               (_%K119446119467%_
                                (lambda (_%rest119461%_ _%hd119462%_)
                                  (let ((_%$e119464%_
                                         (__AST-source _%hd119462%_)))
                                    (if _%$e119464%_
                                        _%$e119464%_
                                        (_%lp119439%_ _%rest119461%_))))))
                          (if (pair? _%rest119442119450%_)
                              (let ((_%hd119447119470%_
                                     (##car _%rest119442119450%_))
                                    (_%tl119448119472%_
                                     (##cdr _%rest119442119450%_)))
                                (let* ((_%hd119475%_ _%hd119447119470%_)
                                       (_%rest119477%_ _%tl119448119472%_))
                                  (_%K119446119467%_
                                   _%rest119477%_
                                   _%hd119475%_)))
                              (_%else119444119458%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e119380%_ (_%location119377%_)))
                 (if _%$e119380%_
                     ((lambda (_%where119383%_)
                        (##display-locat _%where119383%_ '#t _%port119363%_))
                      _%$e119380%_)
                     (display '"?")))
               (newline)
               (display '"--- Syntax Error")
               (let ((_%$e119386%_
                      (##unchecked-structure-ref _%self119366%_ '4 '#f '#f)))
                 (if _%$e119386%_
                     ((lambda (_%where119389%_)
                        (displayln
                         '" at "
                         _%where119389%_
                         '": "
                         (##unchecked-structure-ref
                          _%self119366%_
                          '2
                          '#f
                          '#f)))
                      _%$e119386%_)
                     (displayln
                      '": "
                      (##unchecked-structure-ref _%self119366%_ '2 '#f '#f))))
               (let* ((_%self.irritants119391119399%_
                       (##unchecked-structure-ref _%self119366%_ '3 '#f '#f))
                      (_%else119393119407%_ (lambda () '#!void))
                      (_%K119395119420%_
                       (lambda (_%rest119410%_ _%stx119411%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx119411%_)
                         (for-each
                          (lambda (_%detail119413%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail119413%_))
                            (let ((_%$e119415%_
                                   (__AST-source _%detail119413%_)))
                              (if _%$e119415%_
                                  ((lambda (_%loc119418%_)
                                     (display '" at ")
                                     (##display-locat
                                      _%loc119418%_
                                      '#t
                                      _%port119363%_))
                                   _%$e119415%_)
                                  '#!void))
                            (newline))
                          _%rest119410%_))))
                 (if (pair? _%self.irritants119391119399%_)
                     (let ((_%hd119396119423%_
                            (##car _%self.irritants119391119399%_))
                           (_%tl119397119425%_
                            (##cdr _%self.irritants119391119399%_)))
                       (let* ((_%stx119428%_ _%hd119396119423%_)
                              (_%rest119430%_ _%tl119397119425%_))
                         (_%K119395119420%_ _%rest119430%_ _%stx119428%_)))
                     '#!void))
               (if (##getenv '"GERBIL_DEBUG" '#f)
                   (let ((_%cont119431119433%_
                          (##unchecked-structure-ref
                           _%self119366%_
                           '1
                           '#f
                           '#f)))
                     (if _%cont119431119433%_
                         (let ((_%cont119436%_ _%cont119431119433%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont119436%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port119363%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (__seal-class! SyntaxError::t)
    (define make-syntax-error
      (lambda (_%message119233%_
               _%irritants119234%_
               _%where119235%_
               _%context119236%_
               _%marks119237%_
               _%phi119238%_)
        (let ((__obj119576
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj119576 _%message119233%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj119576
           _%irritants119234%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj119576 _%where119235%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj119576 _%context119236%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj119576 _%marks119237%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj119576 _%phi119238%_ '6 '#f '#f)
          __obj119576)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where119228%_
               _%message119229%_
               _%stx119230%_
               .
               _%details119231%_)
        (raise (make-syntax-error
                _%message119229%_
                (cons _%stx119230%_ _%details119231%_)
                _%where119228%_
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
      (lambda _%$args119225%_ (apply make-instance AST::t _%$args119225%_)))
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
      (lambda (_%stx119223%_)
        (if (##structure-instance-of? _%stx119223%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx119223%_ '1 '#f '#f)
            _%stx119223%_)))
    (define __AST-source
      (lambda (_%stx119214%_)
        (let _%lp119216%_ ((_%src119218%_ _%stx119214%_))
          (if (##structure-instance-of? _%src119218%_ 'gerbil#AST::t)
              (_%lp119216%_
               (##unchecked-structure-ref _%src119218%_ '2 '#f '#f))
              (if (##locat? _%src119218%_) _%src119218%_ '#f)))))
    (define __AST
      (lambda (_%e119206%_ _%src-stx119207%_)
        (let ((_%src119209%_ (__AST-source _%src-stx119207%_)))
          (if (or (##structure-instance-of? _%e119206%_ 'gerbil#AST::t)
                  (not _%src119209%_))
              _%e119206%_
              (##structure AST::t _%e119206%_ _%src119209%_)))))
    (define __AST-eq?
      (lambda (_%stx119203%_ _%obj119204%_)
        (eq? (__AST-e _%stx119203%_) _%obj119204%_)))
    (define __AST-pair?
      (lambda (_%stx119201%_) (pair? (__AST-e _%stx119201%_))))
    (define __AST-null?
      (lambda (_%stx119199%_) (null? (__AST-e _%stx119199%_))))
    (define __AST-datum?
      (lambda (_%stx119180%_)
        (let* ((_%e119182%_ (__AST-e _%stx119180%_))
               (_%$e119184%_ (number? _%e119182%_)))
          (if _%$e119184%_
              _%$e119184%_
              (let ((_%$e119187%_ (string? _%e119182%_)))
                (if _%$e119187%_
                    _%$e119187%_
                    (let ((_%$e119190%_ (char? _%e119182%_)))
                      (if _%$e119190%_
                          _%$e119190%_
                          (let ((_%$e119193%_ (keyword? _%e119182%_)))
                            (if _%$e119193%_
                                _%$e119193%_
                                (let ((_%$e119196%_ (boolean? _%e119182%_)))
                                  (if _%$e119196%_
                                      _%$e119196%_
                                      (eq? _%e119182%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx119178%_) (symbol? (__AST-e _%stx119178%_))))
    (define __AST-id-list?__%
      (lambda (_%stx119129%_ _%tail?119130%_)
        (let _%lp119132%_ ((_%rest119134%_ _%stx119129%_))
          (let* ((_%$e119136%_ _%rest119134%_)
                 (_%$E119138119151%_
                  (lambda ()
                    (let* ((_%$E119139119146%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e119136%_)))
                           (_%rest119149%_ _%$e119136%_))
                      (_%tail?119130%_ _%rest119149%_)))))
            (if (__AST-pair? _%$e119136%_)
                (let* ((_%$tgt119140119154%_ (__AST-e _%$e119136%_))
                       (_%$hd119141119157%_ (##car _%$tgt119140119154%_))
                       (_%$tl119142119160%_ (##cdr _%$tgt119140119154%_))
                       (_%hd119164%_ _%$hd119141119157%_)
                       (_%rest119166%_ _%$tl119142119160%_))
                  (if (__AST-id? _%hd119164%_)
                      (_%lp119132%_ _%rest119166%_)
                      '#f))
                (_%$E119138119151%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx119171%_)
        (let ((_%tail?119173%_ __AST-null?))
          (__AST-id-list?__% _%stx119171%_ _%tail?119173%_))))
    (define __AST-id-list?
      (lambda _g119578_
        (let ((_g119579_ (##length _g119578_)))
          (cond ((##fx= _g119579_ 1) (apply __AST-id-list?__0 _g119578_))
                ((##fx= _g119579_ 2) (apply __AST-id-list?__% _g119578_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g119578_))))))
    (define __AST-bind-list?
      (lambda (_%stx119121%_)
        (__AST-id-list?__%
         _%stx119121%_
         (lambda (_%e119123%_)
           (let ((_%$e119125%_ (__AST-null? _%e119123%_)))
             (if _%$e119125%_ _%$e119125%_ (__AST-id? _%e119123%_)))))))
    (define __AST-list?__%
      (lambda (_%stx119074%_ _%tail?119075%_)
        (let _%lp119077%_ ((_%rest119079%_ _%stx119074%_))
          (let* ((_%$e119081%_ _%rest119079%_)
                 (_%$E119083119096%_
                  (lambda ()
                    (let* ((_%$E119084119091%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e119081%_)))
                           (_%rest119094%_ _%$e119081%_))
                      (_%tail?119075%_ _%rest119094%_)))))
            (if (__AST-pair? _%$e119081%_)
                (let* ((_%$tgt119085119099%_ (__AST-e _%$e119081%_))
                       (_%$hd119086119102%_ (##car _%$tgt119085119099%_))
                       (_%$tl119087119105%_ (##cdr _%$tgt119085119099%_))
                       (_%rest119109%_ _%$tl119087119105%_))
                  (_%lp119077%_ _%rest119109%_))
                (_%$E119083119096%_))))))
    (define __AST-list?__0
      (lambda (_%stx119114%_)
        (let ((_%tail?119116%_ __AST-null?))
          (__AST-list?__% _%stx119114%_ _%tail?119116%_))))
    (define __AST-list?
      (lambda _g119580_
        (let ((_g119581_ (##length _g119580_)))
          (cond ((##fx= _g119581_ 1) (apply __AST-list?__0 _g119580_))
                ((##fx= _g119581_ 2) (apply __AST-list?__% _g119580_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g119580_))))))
    (define __AST->list
      (lambda (_%stx119039%_)
        (let* ((_%$e119041%_ _%stx119039%_)
               (_%$E119043119056%_
                (lambda ()
                  (let* ((_%$E119044119051%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e119041%_)))
                         (_%rest119054%_ _%$e119041%_))
                    (__AST-e _%rest119054%_)))))
          (if (__AST-pair? _%$e119041%_)
              (let* ((_%$tgt119045119059%_ (__AST-e _%$e119041%_))
                     (_%$hd119046119062%_ (##car _%$tgt119045119059%_))
                     (_%$tl119047119065%_ (##cdr _%$tgt119045119059%_))
                     (_%hd119069%_ _%$hd119046119062%_)
                     (_%rest119071%_ _%$tl119047119065%_))
                (cons _%hd119069%_ (__AST->list _%rest119071%_)))
              (_%$E119043119056%_)))))
    (define __AST->datum
      (lambda (_%stx119032%_)
        (if (##structure-instance-of? _%stx119032%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx119032%_))
            (if (pair? _%stx119032%_)
                (cons (__AST->datum (##car _%stx119032%_))
                      (__AST->datum (##cdr _%stx119032%_)))
                (if (vector? _%stx119032%_)
                    (vector-map __AST->datum _%stx119032%_)
                    (if (box? _%stx119032%_)
                        (box (__AST->datum (unbox _%stx119032%_)))
                        _%stx119032%_))))))
    (define get-readenv
      (lambda (_%port119030%_)
        (##make-readenv
         _%port119030%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in119018%_)
        (let ((_%e119020%_ (##read-datum-or-eof (get-readenv _%in119018%_))))
          (if (eof-object? (__AST-e _%e119020%_))
              (__AST-e _%e119020%_)
              _%e119020%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in119026%_ (current-input-port)))
          (read-syntax__% _%in119026%_))))
    (define read-syntax
      (lambda _g119582_
        (let ((_g119583_ (##length _g119582_)))
          (cond ((##fx= _g119583_ 0) (apply read-syntax__0 _g119582_))
                ((##fx= _g119583_ 1) (apply read-syntax__% _g119582_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g119582_))))))
    (define read-syntax-from-file
      (lambda (_%path119013%_)
        (let ((_%r119015%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path119013%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r119015%_)
              (cdr (__AST-e (vector-ref _%r119015%_ '1)))
              (error (err-code->string _%r119015%_) _%path119013%_)))))
    (define __wrap-syntax
      (lambda (_%re119010%_ _%e119011%_)
        (if (eof-object? _%e119011%_)
            _%e119011%_
            (##structure AST::t _%e119011%_ (##readenv->locat _%re119010%_)))))
    (define __unwrap-syntax
      (lambda (_%re119007%_ _%e119008%_) (__AST-e _%e119008%_)))
    (define __pp-syntax
      (lambda (_%stx119005%_) (pp (__AST->datum _%stx119005%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt119003%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt119003%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt119003%_ '@list)
          (macro-readtable-brace-handler-set! _%rt119003%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt119003%_
           '#\!
           __read-sharp-bang)
          _%rt119003%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt118999%_ _%kw119000%_)
        (macro-readtable-bracket-handler-set! _%rt118999%_ _%kw119000%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt118996%_ _%kw118997%_)
        (macro-readtable-brace-handler-set! _%rt118996%_ _%kw118997%_)))
    (define __read-sharp-bang
      (lambda (_%re118987%_ _%next118988%_ _%start-pos118989%_)
        (if (eq? _%start-pos118989%_ '0)
            (let* ((_%line118991%_
                    (##read-line
                     (macro-readenv-port _%re118987%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line118993%_
                    (substring
                     _%line118991%_
                     '1
                     (string-length _%line118991%_))))
              (macro-readenv-script-line-set!
               _%re118987%_
               _%script-line118993%_)
              (##script-marker))
            (##read-sharp-bang
             _%re118987%_
             _%next118988%_
             _%start-pos118989%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj118985%_)
        (if (source-location? _%obj118985%_)
            (string? (##locat-container _%obj118985%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj118983%_)
        (if (##locat? _%obj118983%_)
            (##container->path (##locat-container _%obj118983%_))
            '#f)))))

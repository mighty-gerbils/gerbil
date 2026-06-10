(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/more-syntax-sugar[1]#_g39770_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/more-syntax-sugar[:0:]#identifier-rules|
      (lambda (_%$stx39070%_)
        (let* ((_%$%g3907439085%_
                (lambda (_%$%g3907539081%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3907539081%_)))
               (_%$%g3907339115%_
                (lambda (_%$%g3907539089%_)
                  (if (gx#stx-pair? _%$%g3907539089%_)
                      (let ((_%$%e3907739092%_
                             (gx#syntax-e _%$%g3907539089%_)))
                        (let ((_%$%hd3907839096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3907739092%_)))
                              (_%$%tl3907939099%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3907739092%_))))
                          ((lambda (_%$%g3907639102%_)
                             (cons (gx#datum->syntax '#f 'make-setq-macro)
                                   (cons 'macro:
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'syntax-rules)
                                                     _%$%g3907639102%_)
                                               '()))))
                           _%$%tl3907939099%_)))
                      (_%$%g3907439085%_ _%$%g3907539089%_)))))
          (_%$%g3907339115%_ _%$stx39070%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifiers|
      (lambda (_%stx39119%_)
        (let* ((_%$%g3912239155%_
                (lambda (_%$%g3912339151%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3912339151%_)))
               (_%$%g3912139557%_
                (lambda (_%$%g3912339159%_)
                  (if (gx#stx-pair? _%$%g3912339159%_)
                      (let ((_%$%e3912639162%_
                             (gx#syntax-e _%$%g3912339159%_)))
                        (let ((_%$%hd3912739166%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3912639162%_)))
                              (_%$%tl3912839169%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3912639162%_))))
                          (if (gx#stx-pair? _%$%tl3912839169%_)
                              (let ((_%$%e3912939172%_
                                     (gx#syntax-e _%$%tl3912839169%_)))
                                (let ((_%$%hd3913039176%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3912939172%_)))
                                      (_%$%tl3913139179%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3912939172%_))))
                                  (if (gx#stx-pair/null? _%$%hd3913039176%_)
                                      (let ((_g39762_
                                             (gx#syntax-split-splice
                                              _%$%hd3913039176%_
                                              '0)))
                                        (begin
                                          (let ((_g39763_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39762_)
                                                       (##values-length
                                                        _g39762_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39763_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39763_)))
                                          (let ((_%$%target3913239182%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39762_ 0)))
                                                (_%$%tl3913439185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39762_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3913439185%_)
                                                (letrec ((_%$%loop3913539188%_
                                                          (lambda (_%$%hd3913339192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%clause3913939195%_)
                    (if (gx#stx-pair? _%$%hd3913339192%_)
                        (let ((_%$%e3913639197%_
                               (gx#syntax-e _%$%hd3913339192%_)))
                          (let ((_%$%lp-hd3913739201%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3913639197%_)))
                                (_%$%lp-tl3913839204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3913639197%_))))
                            (_%$%loop3913539188%_
                             _%$%lp-tl3913839204%_
                             (cons _%$%lp-hd3913739201%_
                                   _%$%clause3913939195%_))))
                        (let ((_%$%clause3914039207%_
                               (reverse _%$%clause3913939195%_)))
                          (if (gx#stx-pair/null? _%$%tl3913139179%_)
                              (let ((_g39764_
                                     (gx#syntax-split-splice
                                      _%$%tl3913139179%_
                                      '0)))
                                (begin
                                  (let ((_g39765_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g39764_)
                                               (##values-length _g39764_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g39765_ 2)))
                                        (error "Context expects 2 values"
                                               _g39765_)))
                                  (let ((_%$%target3914139210%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g39764_ 0)))
                                        (_%$%tl3914339213%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g39764_ 1))))
                                    (if (gx#stx-null? _%$%tl3914339213%_)
                                        (letrec ((_%$%loop3914439216%_
                                                  (lambda (_%$%hd3914239220%_
                                                           _%$%body3914839223%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd3914239220%_)
                                                        (let ((_%$%e3914539225%_
                                                               (gx#syntax-e
                                                                _%$%hd3914239220%_)))
                                                          (let ((_%$%lp-hd3914639229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3914539225%_)))
                        (_%$%lp-tl3914739232%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3914539225%_))))
                    (_%$%loop3914439216%_
                     _%$%lp-tl3914739232%_
                     (cons _%$%lp-hd3914639229%_ _%$%body3914839223%_))))
                (let ((_%$%body3914939235%_ (reverse _%$%body3914839223%_)))
                  ((lambda (_%$%g3912439238%_ _%$%g3912539240%_)
                     (let* ((_%$%g3926239279%_
                             (lambda (_%$%g3926339275%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g3926339275%_)))
                            (_%$%g3926139346%_
                             (lambda (_%$%g3926339283%_)
                               (if (gx#stx-pair/null? _%$%g3926339283%_)
                                   (let ((_g39766_
                                          (gx#syntax-split-splice
                                           _%$%g3926339283%_
                                           '0)))
                                     (begin
                                       (let ((_g39767_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g39766_)
                                                    (##values-length _g39766_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g39767_ 2)))
                                             (error "Context expects 2 values"
                                                    _g39767_)))
                                       (let ((_%$%target3926539286%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g39766_ 0)))
                                             (_%$%tl3926739289%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g39766_ 1))))
                                         (if (gx#stx-null? _%$%tl3926739289%_)
                                             (letrec ((_%$%loop3926839292%_
                                                       (lambda (_%$%hd3926639296%_
                                                                _%$%clause3927239299%_)
                                                         (if (gx#stx-pair?
                                                              _%$%hd3926639296%_)
                                                             (let ((_%$%e3926939301%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _%$%hd3926639296%_)))
                       (let ((_%$%lp-hd3927039305%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e3926939301%_)))
                             (_%$%lp-tl3927139308%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e3926939301%_))))
                         (_%$%loop3926839292%_
                          _%$%lp-tl3927139308%_
                          (cons _%$%lp-hd3927039305%_
                                _%$%clause3927239299%_))))
                     (let ((_%$%clause3927339311%_
                            (reverse _%$%clause3927239299%_)))
                       ((lambda (_%$%g3926439314%_)
                          (cons (gx#datum->syntax '#f 'with-syntax*)
                                (cons (foldr (lambda (_%$%g3932939334%_
                                                      _%$%g3933039337%_)
                                               (cons _%$%g3932939334%_
                                                     _%$%g3933039337%_))
                                             '()
                                             _%$%g3926439314%_)
                                      (foldr (lambda (_%$%g3933139340%_
                                                      _%$%g3933239343%_)
                                               (cons _%$%g3933139340%_
                                                     _%$%g3933239343%_))
                                             '()
                                             _%$%g3912439238%_))))
                        _%$%clause3927339311%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop3926839292%_
                                                _%$%target3926539286%_
                                                '()))
                                             (_%$%g3926239279%_
                                              _%$%g3926339283%_)))))
                                   (_%$%g3926239279%_ _%$%g3926339283%_)))))
                       (_%$%g3926139346%_
                        (map (lambda (_%clause39350%_)
                               (let* ((_%$%g3935439393%_
                                       (lambda (_%$%g3935539389%_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%$%g3935539389%_)))
                                      (_%$%g3935339479%_
                                       (lambda (_%$%g3935539397%_)
                                         (if (gx#stx-pair? _%$%g3935539397%_)
                                             (let ((_%$%e3937339400%_
                                                    (gx#syntax-e
                                                     _%$%g3935539397%_)))
                                               (let ((_%$%hd3937439404%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e3937339400%_)))
                                                     (_%$%tl3937539407%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e3937339400%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%tl3937539407%_)
                                                     (let ((_%$%e3937639410%_
                                                            (gx#syntax-e
                                                             _%$%tl3937539407%_)))
                                                       (let ((_%$%hd3937739414%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e3937639410%_)))
                     (_%$%tl3937839417%_
                      (let () (declare (not safe)) (##cdr _%$%e3937639410%_))))
                 (if (gx#stx-pair/null? _%$%tl3937839417%_)
                     (let ((_g39768_
                            (gx#syntax-split-splice _%$%tl3937839417%_ '0)))
                       (begin
                         (let ((_g39769_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g39768_)
                                      (##values-length _g39768_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g39769_ 2)))
                               (error "Context expects 2 values" _g39769_)))
                         (let ((_%$%target3937939420%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g39768_ 0)))
                               (_%$%tl3938139423%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g39768_ 1))))
                           (if (gx#stx-null? _%$%tl3938139423%_)
                               (letrec ((_%$%loop3938239426%_
                                         (lambda (_%$%hd3938039430%_
                                                  _%$%components3938639433%_)
                                           (if (gx#stx-pair?
                                                _%$%hd3938039430%_)
                                               (let ((_%$%e3938339435%_
                                                      (gx#syntax-e
                                                       _%$%hd3938039430%_)))
                                                 (let ((_%$%lp-hd3938439439%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e3938339435%_)))
                                                       (_%$%lp-tl3938539442%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e3938339435%_))))
                                                   (_%$%loop3938239426%_
                                                    _%$%lp-tl3938539442%_
                                                    (cons _%$%lp-hd3938439439%_
                                                          _%$%components3938639433%_))))
                                               (let ((_%$%components3938739445%_
                                                      (reverse _%$%components3938639433%_)))
                                                 ((lambda (_%$%g3937039448%_
                                                           _%$%g3937139450%_
                                                           _%$%g3937239451%_)
                                                    (if (gx#identifier?
                                                         _%$%g3937239451%_)
                                                        (cons _%$%g3937239451%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'stx-identifier)
                                  (cons _%$%g3937139450%_
                                        (foldr (lambda (_%$%g3947039473%_
                                                        _%$%g3947139476%_)
                                                 (cons _%$%g3947039473%_
                                                       _%$%g3947139476%_))
                                               '()
                                               _%$%g3937039448%_)))
                            '()))
                (_%$%g3935439393%_ _%$%g3935539397%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%components3938739445%_
                                                  _%$%hd3937739414%_
                                                  _%$%hd3937439404%_))))))
                                 (_%$%loop3938239426%_
                                  _%$%target3937939420%_
                                  '()))
                               (_%$%g3935439393%_ _%$%g3935539397%_)))))
                     (_%$%g3935439393%_ _%$%g3935539397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3935439393%_
                                                      _%$%g3935539397%_))))
                                             (_%$%g3935439393%_
                                              _%$%g3935539397%_))))
                                      (_%$%g3935239545%_
                                       (lambda (_%$%g3935539483%_)
                                         (if (gx#stx-pair? _%$%g3935539483%_)
                                             (let ((_%$%e3935839486%_
                                                    (gx#syntax-e
                                                     _%$%g3935539483%_)))
                                               (let ((_%$%hd3935939490%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e3935839486%_)))
                                                     (_%$%tl3936039493%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e3935839486%_))))
                                                 (if (gx#stx-pair?
                                                      _%$%tl3936039493%_)
                                                     (let ((_%$%e3936139496%_
                                                            (gx#syntax-e
                                                             _%$%tl3936039493%_)))
                                                       (let ((_%$%hd3936239500%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e3936139496%_)))
                     (_%$%tl3936339503%_
                      (let () (declare (not safe)) (##cdr _%$%e3936139496%_))))
                 (if (gx#stx-pair? _%$%hd3936239500%_)
                     (let ((_%$%e3936439506%_
                            (gx#syntax-e _%$%hd3936239500%_)))
                       (let ((_%$%hd3936539510%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e3936439506%_)))
                             (_%$%tl3936639513%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e3936439506%_))))
                         (if (gx#identifier? _%$%hd3936539510%_)
                             (if (gx#free-identifier=?
                                  |gerbil/core/more-syntax-sugar[1]#_g39770_|
                                  _%$%hd3936539510%_)
                                 (if (gx#stx-pair? _%$%tl3936639513%_)
                                     (let ((_%$%e3936739516%_
                                            (gx#syntax-e _%$%tl3936639513%_)))
                                       (let ((_%$%hd3936839520%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e3936739516%_)))
                                             (_%$%tl3936939523%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e3936739516%_))))
                                         (if (gx#stx-null? _%$%tl3936939523%_)
                                             (if (gx#stx-null?
                                                  _%$%tl3936339503%_)
                                                 ((lambda (_%$%g3935639526%_
                                                           _%$%g3935739528%_)
                                                    (if (and (gx#identifier?
                                                              _%$%g3935739528%_)
                                                             (gx#identifier?
                                                              _%$%g3935639526%_))
                                                        (cons _%$%g3935739528%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax-local-temp)
                                  (cons (cons (gx#datum->syntax '#f 'quote)
                                              (cons _%$%g3935639526%_ '()))
                                        '()))
                            '()))
                (_%$%g3935339479%_ _%$%g3935539483%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%hd3936839520%_
                                                  _%$%hd3935939490%_)
                                                 (_%$%g3935339479%_
                                                  _%$%g3935539483%_))
                                             (_%$%g3935339479%_
                                              _%$%g3935539483%_))))
                                     (_%$%g3935339479%_ _%$%g3935539483%_))
                                 (_%$%g3935339479%_ _%$%g3935539483%_))
                             (_%$%g3935339479%_ _%$%g3935539483%_))))
                     (_%$%g3935339479%_ _%$%g3935539483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3935339479%_
                                                      _%$%g3935539483%_))))
                                             (_%$%g3935339479%_
                                              _%$%g3935539483%_)))))
                                 (_%$%g3935239545%_ _%clause39350%_)))
                             (foldr (lambda (_%$%g3954839551%_
                                             _%$%g3954939554%_)
                                      (cons _%$%g3954839551%_
                                            _%$%g3954939554%_))
                                    '()
                                    _%$%g3912539240%_)))))
                   _%$%body3914939235%_
                   _%$%clause3914039207%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop3914439216%_
                                           _%$%target3914139210%_
                                           '()))
                                        (_%$%g3912239155%_
                                         _%$%g3912339159%_)))))
                              (_%$%g3912239155%_ _%$%g3912339159%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3913539188%_
                                                   _%$%target3913239182%_
                                                   '()))
                                                (_%$%g3912239155%_
                                                 _%$%g3912339159%_)))))
                                      (_%$%g3912239155%_ _%$%g3912339159%_))))
                              (_%$%g3912239155%_ _%$%g3912339159%_))))
                      (_%$%g3912239155%_ _%$%g3912339159%_)))))
          (_%$%g3912139557%_ _%stx39119%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#with-identifier|
      (lambda (_%$stx39565%_)
        (let* ((_%$%g3956939606%_
                (lambda (_%$%g3957039602%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3957039602%_)))
               (_%$%g3956839743%_
                (lambda (_%$%g3957039610%_)
                  (if (gx#stx-pair? _%$%g3957039610%_)
                      (let ((_%$%e3957439613%_
                             (gx#syntax-e _%$%g3957039610%_)))
                        (let ((_%$%hd3957539617%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3957439613%_)))
                              (_%$%tl3957639620%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3957439613%_))))
                          (if (gx#stx-pair? _%$%tl3957639620%_)
                              (let ((_%$%e3957739623%_
                                     (gx#syntax-e _%$%tl3957639620%_)))
                                (let ((_%$%hd3957839627%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3957739623%_)))
                                      (_%$%tl3957939630%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3957739623%_))))
                                  (if (gx#stx-pair? _%$%hd3957839627%_)
                                      (let ((_%$%e3958039633%_
                                             (gx#syntax-e _%$%hd3957839627%_)))
                                        (let ((_%$%hd3958139637%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3958039633%_)))
                                              (_%$%tl3958239640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3958039633%_))))
                                          (if (gx#stx-pair/null?
                                               _%$%tl3958239640%_)
                                              (let ((_g39771_
                                                     (gx#syntax-split-splice
                                                      _%$%tl3958239640%_
                                                      '0)))
                                                (begin
                                                  (let ((_g39772_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g39771_)
                                                               (##values-length
                                                                _g39771_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g39772_ 2)))
                (error "Context expects 2 values" _g39772_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target3958339643%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g39771_
                                                            0)))
                                                        (_%$%tl3958539646%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g39771_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl3958539646%_)
                                                        (letrec ((_%$%loop3958639649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd3958439653%_
                                   _%$%components3959039656%_)
                            (if (gx#stx-pair? _%$%hd3958439653%_)
                                (let ((_%$%e3958739658%_
                                       (gx#syntax-e _%$%hd3958439653%_)))
                                  (let ((_%$%lp-hd3958839662%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3958739658%_)))
                                        (_%$%lp-tl3958939665%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3958739658%_))))
                                    (_%$%loop3958639649%_
                                     _%$%lp-tl3958939665%_
                                     (cons _%$%lp-hd3958839662%_
                                           _%$%components3959039656%_))))
                                (let ((_%$%components3959139668%_
                                       (reverse _%$%components3959039656%_)))
                                  (if (gx#stx-pair/null? _%$%tl3957939630%_)
                                      (let ((_g39773_
                                             (gx#syntax-split-splice
                                              _%$%tl3957939630%_
                                              '0)))
                                        (begin
                                          (let ((_g39774_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g39773_)
                                                       (##values-length
                                                        _g39773_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g39774_ 2)))
                                                (error "Context expects 2 values"
                                                       _g39774_)))
                                          (let ((_%$%target3959239671%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39773_ 0)))
                                                (_%$%tl3959439674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g39773_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3959439674%_)
                                                (letrec ((_%$%loop3959539677%_
                                                          (lambda (_%$%hd3959339681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%body3959939684%_)
                    (if (gx#stx-pair? _%$%hd3959339681%_)
                        (let ((_%$%e3959639686%_
                               (gx#syntax-e _%$%hd3959339681%_)))
                          (let ((_%$%lp-hd3959739690%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3959639686%_)))
                                (_%$%lp-tl3959839693%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3959639686%_))))
                            (_%$%loop3959539677%_
                             _%$%lp-tl3959839693%_
                             (cons _%$%lp-hd3959739690%_
                                   _%$%body3959939684%_))))
                        (let ((_%$%body3960039696%_
                               (reverse _%$%body3959939684%_)))
                          ((lambda (_%$%g3957139699%_
                                    _%$%g3957239701%_
                                    _%$%g3957339702%_)
                             (if (gx#identifier? _%$%g3957339702%_)
                                 (cons (gx#datum->syntax '#f 'with-identifiers)
                                       (cons (cons (cons _%$%g3957339702%_
                                                         (foldr (lambda (_%$%g3972639731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%g3972739734%_)
                          (cons _%$%g3972639731%_ _%$%g3972739734%_))
                        '()
                        _%$%g3957239701%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())
                                             (foldr (lambda (_%$%g3972839737%_
                                                             _%$%g3972939740%_)
                                                      (cons _%$%g3972839737%_
                                                            _%$%g3972939740%_))
                                                    '()
                                                    _%$%g3957139699%_)))
                                 (_%$%g3956939606%_ _%$%g3957039610%_)))
                           _%$%body3960039696%_
                           _%$%components3959139668%_
                           _%$%hd3958139637%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3959539677%_
                                                   _%$%target3959239671%_
                                                   '()))
                                                (_%$%g3956939606%_
                                                 _%$%g3957039610%_)))))
                                      (_%$%g3956939606%_
                                       _%$%g3957039610%_)))))))
                  (_%$%loop3958639649%_ _%$%target3958339643%_ '()))
                (_%$%g3956939606%_ _%$%g3957039610%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3956939606%_
                                               _%$%g3957039610%_))))
                                      (_%$%g3956939606%_ _%$%g3957039610%_))))
                              (_%$%g3956939606%_ _%$%g3957039610%_))))
                      (_%$%g3956939606%_ _%$%g3957039610%_)))))
          (_%$%g3956839743%_ _%$stx39565%_))))
    (define |gerbil/core/more-syntax-sugar[:0:]#quasisyntax|
      (lambda (_%$stx39749%_)
        (let ((_%$%g3975239759%_
               (lambda (_%$%g3975339755%_)
                 (gx#raise-syntax-error
                  '#f
                  '"Bad syntax; invalid match target"
                  _%$%g3975339755%_))))
          (_%$%g3975239759%_ _%$stx39749%_))))))

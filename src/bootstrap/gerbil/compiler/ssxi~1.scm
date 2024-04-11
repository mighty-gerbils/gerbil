(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[1]#_g204189_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204196_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204198_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204200_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204202_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204204_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204216_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204218_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204220_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204222_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gxc[1]#_g204224_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gxc[:0:]#declare-type|
      (lambda (_%$stx197607%_)
        (let* ((_%g197611197629%_
                (lambda (_%g197612197625%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197612197625%_))))
               (_%g197610197684%_
                (lambda (_%g197612197633%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197612197633%_))
                      (let ((_%e197615197636%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197612197633%_))))
                        (let ((_%hd197616197640%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197615197636%_)))
                              (_%tl197617197643%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197615197636%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197617197643%_))
                              (let ((_%e197618197646%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197617197643%_))))
                                (let ((_%hd197619197650%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197618197646%_)))
                                      (_%tl197620197653%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197618197646%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197620197653%_))
                                      (let ((_%e197621197656%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197620197653%_))))
                                        (let ((_%hd197622197660%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197621197656%_)))
                                              (_%tl197623197663%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197621197656%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197623197663%_))
                                              ((lambda (_%L197666%_
                                                        _%L197668%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L197668%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-type!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197668%_ '()))
                         (cons _%L197666%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g197611197629%_
                                                      _%g197612197633%_)))
                                               _%hd197622197660%_
                                               _%hd197619197650%_)
                                              (_%g197611197629%_
                                               _%g197612197633%_))))
                                      (_%g197611197629%_ _%g197612197633%_))))
                              (_%g197611197629%_ _%g197612197633%_))))
                      (_%g197611197629%_ _%g197612197633%_)))))
          (_%g197610197684%_ _%$stx197607%_))))
    (define |gxc[:0:]#declare-class|
      (lambda (_%$stx197688%_)
        (let* ((_%g197692197710%_
                (lambda (_%g197693197706%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197693197706%_))))
               (_%g197691197765%_
                (lambda (_%g197693197714%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197693197714%_))
                      (let ((_%e197696197717%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197693197714%_))))
                        (let ((_%hd197697197721%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197696197717%_)))
                              (_%tl197698197724%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197696197717%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl197698197724%_))
                              (let ((_%e197699197727%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl197698197724%_))))
                                (let ((_%hd197700197731%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e197699197727%_)))
                                      (_%tl197701197734%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e197699197727%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl197701197734%_))
                                      (let ((_%e197702197737%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl197701197734%_))))
                                        (let ((_%hd197703197741%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e197702197737%_)))
                                              (_%tl197704197744%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e197702197737%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl197704197744%_))
                                              ((lambda (_%L197747%_
                                                        _%L197749%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%L197749%_))
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'optimizer-declare-class!))
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L197749%_ '()))
                         (cons _%L197747%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g197692197710%_
                                                      _%g197693197714%_)))
                                               _%hd197703197741%_
                                               _%hd197700197731%_)
                                              (_%g197692197710%_
                                               _%g197693197714%_))))
                                      (_%g197692197710%_ _%g197693197714%_))))
                              (_%g197692197710%_ _%g197693197714%_))))
                      (_%g197692197710%_ _%g197693197714%_)))))
          (_%g197691197765%_ _%$stx197688%_))))
    (define |gxc[:0:]#declare-type*|
      (lambda (_%$stx197769%_)
        (let* ((_%g197773197802%_
                (lambda (_%g197774197798%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g197774197798%_))))
               (_%g197772197902%_
                (lambda (_%g197774197806%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g197774197806%_))
                      (let ((_%e197777197809%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g197774197806%_))))
                        (let ((_%hd197778197813%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e197777197809%_)))
                              (_%tl197779197816%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e197777197809%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl197779197816%_))
                              (let ((_g204167_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl197779197816%_
                                        '0))))
                                (begin
                                  (let ((_g204168_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204167_)
                                               (##vector-length _g204167_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204168_ 2)))
                                        (error "Context expects 2 values"
                                               _g204168_)))
                                  (let ((_%target197780197819%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204167_ 0)))
                                        (_%tl197782197822%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204167_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197782197822%_))
                                        (letrec ((_%loop197783197825%_
                                                  (lambda (_%hd197781197829%_
                                                           _%type197787197832%_
                                                           _%symbol197788197834%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd197781197829%_))
                                                        (let ((_%e197784197837%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd197781197829%_))))
                  (let ((_%lp-hd197785197841%_
                         (let ()
                           (declare (not safe))
                           (##car _%e197784197837%_)))
                        (_%lp-tl197786197844%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e197784197837%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd197785197841%_))
                        (let ((_%e197791197847%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd197785197841%_))))
                          (let ((_%hd197792197851%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e197791197847%_)))
                                (_%tl197793197854%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e197791197847%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl197793197854%_))
                                (let ((_%e197794197857%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl197793197854%_))))
                                  (let ((_%hd197795197861%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e197794197857%_)))
                                        (_%tl197796197864%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e197794197857%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl197796197864%_))
                                        (_%loop197783197825%_
                                         _%lp-tl197786197844%_
                                         (cons _%hd197795197861%_
                                               _%type197787197832%_)
                                         (cons _%hd197792197851%_
                                               _%symbol197788197834%_))
                                        (_%g197773197802%_
                                         _%g197774197806%_))))
                                (_%g197773197802%_ _%g197774197806%_))))
                        (_%g197773197802%_ _%g197774197806%_))))
                (let ((_%type197789197867%_ (reverse _%type197787197832%_))
                      (_%symbol197790197870%_
                       (reverse _%symbol197788197834%_)))
                  ((lambda (_%L197873%_ _%L197875%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L197873%_
                                _%L197875%_))
                             (let ((__tmp204169
                                    (lambda (_%g197890197894%_
                                             _%g197891197897%_
                                             _%g197892197899%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-type))
                                                  (cons _%g197891197897%_
                                                        (cons _%g197890197894%_
                                                              '())))
                                            _%g197892197899%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp204169
                                '()
                                _%L197873%_
                                _%L197875%_)))))
                   _%type197789197867%_
                   _%symbol197790197870%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop197783197825%_
                                           _%target197780197819%_
                                           '()
                                           '()))
                                        (_%g197773197802%_
                                         _%g197774197806%_)))))
                              (_%g197773197802%_ _%g197774197806%_))))
                      (_%g197773197802%_ _%g197774197806%_)))))
          (_%g197772197902%_ _%$stx197769%_))))
    (define |gxc[:0:]#declare-method|
      (lambda (_%$stx197907%_)
        (let* ((_%__stx203478203479%_ _%$stx197907%_)
               (_%g197912197954%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203478203479%_)))))
          (let ((_%__kont203481203482%_
                 (lambda (_%L198082%_ _%L198084%_ _%L198085%_ _%L198086%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-method!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198086%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198085%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L198084%_ '()))
                                           (cons _%L198082%_ '())))))))
                (_%__kont203483203484%_
                 (lambda (_%L198001%_ _%L198003%_ _%L198004%_ _%L198005%_)
                   (cons _%L198005%_
                         (cons _%L198004%_
                               (cons _%L198003%_
                                     (cons _%L198001%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'rebind?))
                                                 '()))))))))
            (let ((_%__match203517203518%_
                   (lambda (_%e197918198032%_
                            _%hd197919198036%_
                            _%tl197920198039%_
                            _%e197921198042%_
                            _%hd197922198046%_
                            _%tl197923198049%_
                            _%e197924198052%_
                            _%hd197925198056%_
                            _%tl197926198059%_
                            _%e197927198062%_
                            _%hd197928198066%_
                            _%tl197929198069%_
                            _%e197930198072%_
                            _%hd197931198076%_
                            _%tl197932198079%_)
                     (let ((_%L198082%_ _%hd197931198076%_)
                           (_%L198084%_ _%hd197928198066%_)
                           (_%L198085%_ _%hd197925198056%_)
                           (_%L198086%_ _%hd197922198046%_))
                       (if (and (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L198086%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L198085%_))
                                (let ()
                                  (declare (not safe))
                                  (gx#identifier? _%L198084%_)))
                           (_%__kont203481203482%_
                            _%L198082%_
                            _%L198084%_
                            _%L198085%_
                            _%L198086%_)
                           (let ()
                             (declare (not safe))
                             (_%g197912197954%_)))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203478203479%_))
                  (let ((_%e197918198032%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203478203479%_))))
                    (let ((_%tl197920198039%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e197918198032%_)))
                          (_%hd197919198036%_
                           (let ()
                             (declare (not safe))
                             (##car _%e197918198032%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl197920198039%_))
                          (let ((_%e197921198042%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl197920198039%_))))
                            (let ((_%tl197923198049%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e197921198042%_)))
                                  (_%hd197922198046%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e197921198042%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl197923198049%_))
                                  (let ((_%e197924198052%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl197923198049%_))))
                                    (let ((_%tl197926198059%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e197924198052%_)))
                                          (_%hd197925198056%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e197924198052%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl197926198059%_))
                                          (let ((_%e197927198062%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl197926198059%_))))
                                            (let ((_%tl197929198069%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e197927198062%_)))
                                                  (_%hd197928198066%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e197927198062%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl197929198069%_))
                                                  (let ((_%e197930198072%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl197929198069%_))))
                                                    (let ((_%tl197932198079%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e197930198072%_)))
                                                          (_%hd197931198076%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e197930198072%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl197932198079%_))
                                                          (_%__match203517203518%_
                                                           _%e197918198032%_
                                                           _%hd197919198036%_
                                                           _%tl197920198039%_
                                                           _%e197921198042%_
                                                           _%hd197922198046%_
                                                           _%tl197923198049%_
                                                           _%e197924198052%_
                                                           _%hd197925198056%_
                                                           _%tl197926198059%_
                                                           _%e197927198062%_
                                                           _%hd197928198066%_
                                                           _%tl197929198069%_
                                                           _%e197930198072%_
                                                           _%hd197931198076%_
                                                           _%tl197932198079%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g197912197954%_)))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl197929198069%_))
                                                      (_%__kont203483203484%_
                                                       _%hd197928198066%_
                                                       _%hd197925198056%_
                                                       _%hd197922198046%_
                                                       _%hd197919198036%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g197912197954%_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g197912197954%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g197912197954%_)))))
                          (let () (declare (not safe)) (_%g197912197954%_)))))
                  (let () (declare (not safe)) (_%g197912197954%_))))))))
    (define |gxc[:0:]#declare-method*|
      (lambda (_%$stx198111%_)
        (let* ((_%g198115198150%_
                (lambda (_%g198116198146%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198116198146%_))))
               (_%g198114198269%_
                (lambda (_%g198116198154%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198116198154%_))
                      (let ((_%e198120198157%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198116198154%_))))
                        (let ((_%hd198121198161%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198120198157%_)))
                              (_%tl198122198164%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198120198157%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl198122198164%_))
                              (let ((_g204170_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl198122198164%_
                                        '0))))
                                (begin
                                  (let ((_g204171_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204170_)
                                               (##vector-length _g204170_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204171_ 2)))
                                        (error "Context expects 2 values"
                                               _g204171_)))
                                  (let ((_%target198123198167%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204170_ 0)))
                                        (_%tl198125198170%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204170_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl198125198170%_))
                                        (letrec ((_%loop198126198173%_
                                                  (lambda (_%hd198124198177%_
                                                           _%symbol198130198180%_
                                                           _%method198131198182%_
                                                           _%type-t198132198184%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd198124198177%_))
                                                        (let ((_%e198127198187%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd198124198177%_))))
                  (let ((_%lp-hd198128198191%_
                         (let ()
                           (declare (not safe))
                           (##car _%e198127198187%_)))
                        (_%lp-tl198129198194%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e198127198187%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd198128198191%_))
                        (let ((_%e198136198197%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd198128198191%_))))
                          (let ((_%hd198137198201%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198136198197%_)))
                                (_%tl198138198204%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198136198197%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl198138198204%_))
                                (let ((_%e198139198207%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl198138198204%_))))
                                  (let ((_%hd198140198211%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198139198207%_)))
                                        (_%tl198141198214%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198139198207%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198141198214%_))
                                        (let ((_%e198142198217%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl198141198214%_))))
                                          (let ((_%hd198143198221%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198142198217%_)))
                                                (_%tl198144198224%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198142198217%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198144198224%_))
                                                (_%loop198126198173%_
                                                 _%lp-tl198129198194%_
                                                 (cons _%hd198143198221%_
                                                       _%symbol198130198180%_)
                                                 (cons _%hd198140198211%_
                                                       _%method198131198182%_)
                                                 (cons _%hd198137198201%_
                                                       _%type-t198132198184%_))
                                                (_%g198115198150%_
                                                 _%g198116198154%_))))
                                        (_%g198115198150%_
                                         _%g198116198154%_))))
                                (_%g198115198150%_ _%g198116198154%_))))
                        (_%g198115198150%_ _%g198116198154%_))))
                (let ((_%symbol198133198227%_ (reverse _%symbol198130198180%_))
                      (_%method198134198230%_ (reverse _%method198131198182%_))
                      (_%type-t198135198232%_
                       (reverse _%type-t198132198184%_)))
                  ((lambda (_%L198235%_ _%L198237%_ _%L198238%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L198235%_
                                _%L198237%_
                                _%L198238%_))
                             (let ((__tmp204172
                                    (lambda (_%g198254198259%_
                                             _%g198255198262%_
                                             _%g198256198264%_
                                             _%g198257198266%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-method))
                                                  (cons _%g198256198264%_
                                                        (cons _%g198255198262%_
                                                              (cons _%g198254198259%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g198257198266%_))))
                               (declare (not safe))
                               (__foldr*
                                __tmp204172
                                '()
                                _%L198235%_
                                _%L198237%_
                                _%L198238%_)))))
                   _%symbol198133198227%_
                   _%method198134198230%_
                   _%type-t198135198232%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop198126198173%_
                                           _%target198123198167%_
                                           '()
                                           '()
                                           '()))
                                        (_%g198115198150%_
                                         _%g198116198154%_)))))
                              (_%g198115198150%_ _%g198116198154%_))))
                      (_%g198115198150%_ _%g198116198154%_)))))
          (_%g198114198269%_ _%$stx198111%_))))
    (define |gxc[:0:]#declare-methods|
      (lambda (_%$stx198274%_)
        (let* ((_%g198278198311%_
                (lambda (_%g198279198307%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198279198307%_))))
               (_%g198277198425%_
                (lambda (_%g198279198315%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198279198315%_))
                      (let ((_%e198283198318%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198279198315%_))))
                        (let ((_%hd198284198322%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198283198318%_)))
                              (_%tl198285198325%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198283198318%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198285198325%_))
                              (let ((_%e198286198328%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198285198325%_))))
                                (let ((_%hd198287198332%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198286198328%_)))
                                      (_%tl198288198335%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198286198328%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl198288198335%_))
                                      (let ((_g204173_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl198288198335%_
                                                '0))))
                                        (begin
                                          (let ((_g204174_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204173_)
                                                       (##vector-length
                                                        _g204173_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204174_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204174_)))
                                          (let ((_%target198289198338%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g204173_ 0)))
                                                (_%tl198291198341%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g204173_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198291198341%_))
                                                (letrec ((_%loop198292198344%_
                                                          (lambda (_%hd198290198348%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%symbol198296198351%_
                           _%method198297198353%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd198290198348%_))
                        (let ((_%e198293198356%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd198290198348%_))))
                          (let ((_%lp-hd198294198360%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e198293198356%_)))
                                (_%lp-tl198295198363%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e198293198356%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%lp-hd198294198360%_))
                                (let ((_%e198300198366%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%lp-hd198294198360%_))))
                                  (let ((_%hd198301198370%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e198300198366%_)))
                                        (_%tl198302198373%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e198300198366%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%tl198302198373%_))
                                        (let ((_%e198303198376%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%tl198302198373%_))))
                                          (let ((_%hd198304198380%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e198303198376%_)))
                                                (_%tl198305198383%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e198303198376%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl198305198383%_))
                                                (_%loop198292198344%_
                                                 _%lp-tl198295198363%_
                                                 (cons _%hd198304198380%_
                                                       _%symbol198296198351%_)
                                                 (cons _%hd198301198370%_
                                                       _%method198297198353%_))
                                                (_%g198278198311%_
                                                 _%g198279198315%_))))
                                        (_%g198278198311%_
                                         _%g198279198315%_))))
                                (_%g198278198311%_ _%g198279198315%_))))
                        (let ((_%symbol198298198386%_
                               (reverse _%symbol198296198351%_))
                              (_%method198299198389%_
                               (reverse _%method198297198353%_)))
                          ((lambda (_%L198392%_ _%L198394%_ _%L198395%_)
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'begin))
                                   (begin
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-check-splice-targets
                                        _%L198392%_
                                        _%L198394%_))
                                     (let ((__tmp204175
                                            (lambda (_%g198413198417%_
                                                     _%g198414198420%_
                                                     _%g198415198422%_)
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'declare-method))
                                                          (cons _%L198395%_
                                                                (cons _%g198414198420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%g198413198417%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%g198415198422%_))))
                                       (declare (not safe))
                                       (__foldr2
                                        __tmp204175
                                        '()
                                        _%L198392%_
                                        _%L198394%_)))))
                           _%symbol198298198386%_
                           _%method198299198389%_
                           _%hd198287198332%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop198292198344%_
                                                   _%target198289198338%_
                                                   '()
                                                   '()))
                                                (_%g198278198311%_
                                                 _%g198279198315%_)))))
                                      (_%g198278198311%_ _%g198279198315%_))))
                              (_%g198278198311%_ _%g198279198315%_))))
                      (_%g198278198311%_ _%g198279198315%_)))))
          (_%g198277198425%_ _%$stx198274%_))))
    (define |gxc[:0:]#@alias|
      (lambda (_%$stx198430%_)
        (let* ((_%g198434198448%_
                (lambda (_%g198435198444%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198435198444%_))))
               (_%g198433198489%_
                (lambda (_%g198435198452%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198435198452%_))
                      (let ((_%e198437198455%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198435198452%_))))
                        (let ((_%hd198438198459%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198437198455%_)))
                              (_%tl198439198462%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198437198455%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198439198462%_))
                              (let ((_%e198440198465%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198439198462%_))))
                                (let ((_%hd198441198469%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198440198465%_)))
                                      (_%tl198442198472%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198440198465%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198442198472%_))
                                      ((lambda (_%L198475%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!alias))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L198475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198441198469%_)
                                      (_%g198434198448%_ _%g198435198452%_))))
                              (_%g198434198448%_ _%g198435198452%_))))
                      (_%g198434198448%_ _%g198435198452%_)))))
          (_%g198433198489%_ _%$stx198430%_))))
    (define |gxc[:0:]#@class|
      (lambda (_%$stx198493%_)
        (let* ((_%g198497198551%_
                (lambda (_%g198498198547%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198498198547%_))))
               (_%g198496198732%_
                (lambda (_%g198498198555%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198498198555%_))
                      (let ((_%e198510198558%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198498198555%_))))
                        (let ((_%hd198511198562%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198510198558%_)))
                              (_%tl198512198565%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198510198558%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198512198565%_))
                              (let ((_%e198513198568%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198512198565%_))))
                                (let ((_%hd198514198572%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198513198568%_)))
                                      (_%tl198515198575%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198513198568%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198515198575%_))
                                      (let ((_%e198516198578%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198515198575%_))))
                                        (let ((_%hd198517198582%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198516198578%_)))
                                              (_%tl198518198585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198516198578%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198518198585%_))
                                              (let ((_%e198519198588%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198518198585%_))))
                                                (let ((_%hd198520198592%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198519198588%_)))
                                                      (_%tl198521198595%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198519198588%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198521198595%_))
                                                      (let ((_%e198522198598%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl198521198595%_))))
                (let ((_%hd198523198602%_
                       (let () (declare (not safe)) (##car _%e198522198598%_)))
                      (_%tl198524198605%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198522198598%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198524198605%_))
                      (let ((_%e198525198608%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198524198605%_))))
                        (let ((_%hd198526198612%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198525198608%_)))
                              (_%tl198527198615%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198525198608%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198527198615%_))
                              (let ((_%e198528198618%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198527198615%_))))
                                (let ((_%hd198529198622%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198528198618%_)))
                                      (_%tl198530198625%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198528198618%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198530198625%_))
                                      (let ((_%e198531198628%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198530198625%_))))
                                        (let ((_%hd198532198632%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198531198628%_)))
                                              (_%tl198533198635%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198531198628%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198533198635%_))
                                              (let ((_%e198534198638%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198533198635%_))))
                                                (let ((_%hd198535198642%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198534198638%_)))
                                                      (_%tl198536198645%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198534198638%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl198536198645%_))
                                                      (let ((_%e198537198648%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl198536198645%_))))
                (let ((_%hd198538198652%_
                       (let () (declare (not safe)) (##car _%e198537198648%_)))
                      (_%tl198539198655%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%e198537198648%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl198539198655%_))
                      (let ((_%e198540198658%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl198539198655%_))))
                        (let ((_%hd198541198662%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198540198658%_)))
                              (_%tl198542198665%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198540198658%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198542198665%_))
                              (let ((_%e198543198668%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198542198665%_))))
                                (let ((_%hd198544198672%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198543198668%_)))
                                      (_%tl198545198675%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198543198668%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198545198675%_))
                                      ((lambda (_%L198678%_
                                                _%L198680%_
                                                _%L198681%_
                                                _%L198682%_
                                                _%L198683%_
                                                _%L198684%_
                                                _%L198685%_
                                                _%L198686%_
                                                _%L198687%_
                                                _%L198688%_
                                                _%L198689%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!class))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L198689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L198688%_ '()))
                   (cons (cons (let ()
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'quote))
                               (cons _%L198687%_ '()))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L198686%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L198685%_ '()))
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L198684%_ '()))
                                           (cons _%L198683%_
                                                 (cons _%L198682%_
                                                       (cons _%L198681%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L198680%_ '()))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L198678%_ '()))
                                 '())))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%hd198544198672%_
                                       _%hd198541198662%_
                                       _%hd198538198652%_
                                       _%hd198535198642%_
                                       _%hd198532198632%_
                                       _%hd198529198622%_
                                       _%hd198526198612%_
                                       _%hd198523198602%_
                                       _%hd198520198592%_
                                       _%hd198517198582%_
                                       _%hd198514198572%_)
                                      (_%g198497198551%_ _%g198498198555%_))))
                              (_%g198497198551%_ _%g198498198555%_))))
                      (_%g198497198551%_ _%g198498198555%_))))
              (_%g198497198551%_ _%g198498198555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198497198551%_
                                               _%g198498198555%_))))
                                      (_%g198497198551%_ _%g198498198555%_))))
                              (_%g198497198551%_ _%g198498198555%_))))
                      (_%g198497198551%_ _%g198498198555%_))))
              (_%g198497198551%_ _%g198498198555%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198497198551%_
                                               _%g198498198555%_))))
                                      (_%g198497198551%_ _%g198498198555%_))))
                              (_%g198497198551%_ _%g198498198555%_))))
                      (_%g198497198551%_ _%g198498198555%_)))))
          (_%g198496198732%_ _%$stx198493%_))))
    (define |gxc[:0:]#@predicate|
      (lambda (_%$stx198736%_)
        (let* ((_%g198740198754%_
                (lambda (_%g198741198750%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198741198750%_))))
               (_%g198739198795%_
                (lambda (_%g198741198758%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198741198758%_))
                      (let ((_%e198743198761%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198741198758%_))))
                        (let ((_%hd198744198765%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198743198761%_)))
                              (_%tl198745198768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198743198761%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198745198768%_))
                              (let ((_%e198746198771%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198745198768%_))))
                                (let ((_%hd198747198775%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198746198771%_)))
                                      (_%tl198748198778%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198746198771%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198748198778%_))
                                      ((lambda (_%L198781%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L198781%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198747198775%_)
                                      (_%g198740198754%_ _%g198741198758%_))))
                              (_%g198740198754%_ _%g198741198758%_))))
                      (_%g198740198754%_ _%g198741198758%_)))))
          (_%g198739198795%_ _%$stx198736%_))))
    (define |gxc[:0:]#@constructor|
      (lambda (_%$stx198799%_)
        (let* ((_%g198803198817%_
                (lambda (_%g198804198813%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198804198813%_))))
               (_%g198802198858%_
                (lambda (_%g198804198821%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198804198821%_))
                      (let ((_%e198806198824%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198804198821%_))))
                        (let ((_%hd198807198828%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198806198824%_)))
                              (_%tl198808198831%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198806198824%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198808198831%_))
                              (let ((_%e198809198834%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198808198831%_))))
                                (let ((_%hd198810198838%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198809198834%_)))
                                      (_%tl198811198841%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198809198834%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl198811198841%_))
                                      ((lambda (_%L198844%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!constructor))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L198844%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd198810198838%_)
                                      (_%g198803198817%_ _%g198804198821%_))))
                              (_%g198803198817%_ _%g198804198821%_))))
                      (_%g198803198817%_ _%g198804198821%_)))))
          (_%g198802198858%_ _%$stx198799%_))))
    (define |gxc[:0:]#@accessor|
      (lambda (_%$stx198862%_)
        (let* ((_%g198866198888%_
                (lambda (_%g198867198884%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198867198884%_))))
               (_%g198865198957%_
                (lambda (_%g198867198892%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198867198892%_))
                      (let ((_%e198871198895%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198867198892%_))))
                        (let ((_%hd198872198899%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198871198895%_)))
                              (_%tl198873198902%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198871198895%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198873198902%_))
                              (let ((_%e198874198905%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198873198902%_))))
                                (let ((_%hd198875198909%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198874198905%_)))
                                      (_%tl198876198912%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198874198905%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198876198912%_))
                                      (let ((_%e198877198915%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198876198912%_))))
                                        (let ((_%hd198878198919%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198877198915%_)))
                                              (_%tl198879198922%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198877198915%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198879198922%_))
                                              (let ((_%e198880198925%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198879198922%_))))
                                                (let ((_%hd198881198929%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198880198925%_)))
                                                      (_%tl198882198932%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198880198925%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198882198932%_))
                                                      ((lambda (_%L198935%_
                                                                _%L198937%_
                                                                _%L198938%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!accessor))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L198938%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L198937%_ '()))
                                   (cons _%L198935%_ '())))))
               _%hd198881198929%_
               _%hd198878198919%_
               _%hd198875198909%_)
              (_%g198866198888%_ _%g198867198892%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198866198888%_
                                               _%g198867198892%_))))
                                      (_%g198866198888%_ _%g198867198892%_))))
                              (_%g198866198888%_ _%g198867198892%_))))
                      (_%g198866198888%_ _%g198867198892%_)))))
          (_%g198865198957%_ _%$stx198862%_))))
    (define |gxc[:0:]#@mutator|
      (lambda (_%$stx198961%_)
        (let* ((_%g198965198987%_
                (lambda (_%g198966198983%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g198966198983%_))))
               (_%g198964199056%_
                (lambda (_%g198966198991%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g198966198991%_))
                      (let ((_%e198970198994%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g198966198991%_))))
                        (let ((_%hd198971198998%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e198970198994%_)))
                              (_%tl198972199001%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e198970198994%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl198972199001%_))
                              (let ((_%e198973199004%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl198972199001%_))))
                                (let ((_%hd198974199008%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e198973199004%_)))
                                      (_%tl198975199011%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e198973199004%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl198975199011%_))
                                      (let ((_%e198976199014%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl198975199011%_))))
                                        (let ((_%hd198977199018%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e198976199014%_)))
                                              (_%tl198978199021%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e198976199014%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl198978199021%_))
                                              (let ((_%e198979199024%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl198978199021%_))))
                                                (let ((_%hd198980199028%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e198979199024%_)))
                                                      (_%tl198981199031%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e198979199024%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl198981199031%_))
                                                      ((lambda (_%L199034%_
                                                                _%L199036%_
                                                                _%L199037%_)
                                                         (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!mutator))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L199037%_ '()))
                             (cons (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote))
                                         (cons _%L199036%_ '()))
                                   (cons _%L199034%_ '())))))
               _%hd198980199028%_
               _%hd198977199018%_
               _%hd198974199008%_)
              (_%g198965198987%_ _%g198966198991%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g198965198987%_
                                               _%g198966198991%_))))
                                      (_%g198965198987%_ _%g198966198991%_))))
                              (_%g198965198987%_ _%g198966198991%_))))
                      (_%g198965198987%_ _%g198966198991%_)))))
          (_%g198964199056%_ _%$stx198961%_))))
    (define |gxc[:0:]#@primitive-predicate|
      (lambda (_%$stx199060%_)
        (let* ((_%g199064199078%_
                (lambda (_%g199065199074%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199065199074%_))))
               (_%g199063199119%_
                (lambda (_%g199065199082%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199065199082%_))
                      (let ((_%e199067199085%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199065199082%_))))
                        (let ((_%hd199068199089%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199067199085%_)))
                              (_%tl199069199092%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199067199085%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199069199092%_))
                              (let ((_%e199070199095%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199069199092%_))))
                                (let ((_%hd199071199099%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199070199095%_)))
                                      (_%tl199072199102%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199070199095%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl199072199102%_))
                                      ((lambda (_%L199105%_)
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'make-!primitive-predicate))
                                               (cons (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote))
                                                           (cons _%L199105%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                       _%hd199071199099%_)
                                      (_%g199064199078%_ _%g199065199082%_))))
                              (_%g199064199078%_ _%g199065199082%_))))
                      (_%g199064199078%_ _%g199065199082%_)))))
          (_%g199063199119%_ _%$stx199060%_))))
    (define |gxc[:0:]#@interface|
      (lambda (_%$stx199123%_)
        (let* ((_%g199127199145%_
                (lambda (_%g199128199141%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199128199141%_))))
               (_%g199126199200%_
                (lambda (_%g199128199149%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199128199149%_))
                      (let ((_%e199131199152%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199128199149%_))))
                        (let ((_%hd199132199156%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199131199152%_)))
                              (_%tl199133199159%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199131199152%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199133199159%_))
                              (let ((_%e199134199162%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199133199159%_))))
                                (let ((_%hd199135199166%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199134199162%_)))
                                      (_%tl199136199169%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199134199162%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199136199169%_))
                                      (let ((_%e199137199172%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199136199169%_))))
                                        (let ((_%hd199138199176%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199137199172%_)))
                                              (_%tl199139199179%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199137199172%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199139199179%_))
                                              ((lambda (_%L199182%_
                                                        _%L199184%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!interface))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199184%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L199182%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199138199176%_
                                               _%hd199135199166%_)
                                              (_%g199127199145%_
                                               _%g199128199149%_))))
                                      (_%g199127199145%_ _%g199128199149%_))))
                              (_%g199127199145%_ _%g199128199149%_))))
                      (_%g199127199145%_ _%g199128199149%_)))))
          (_%g199126199200%_ _%$stx199123%_))))
    (define |gxc[:0:]#@lambda|
      (lambda (_%$stx199204%_)
        (let* ((_%__stx203546203547%_ _%$stx199204%_)
               (_%g199211199272%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203546203547%_)))))
          (let ((_%__kont203549203550%_
                 (lambda (_%L199510%_ _%L199512%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L199512%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L199510%_ '()))
                                     '())))))
                (_%__kont203551203552%_
                 (lambda (_%L199449%_ _%L199451%_ _%L199452%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'make-!lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L199452%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote))
                                           (cons _%L199451%_ '()))
                                     (cons 'signature:
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'apply))
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'make-!signature))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L199449%_ '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))))
                (_%__kont203553203554%_
                 (lambda (_%L199373%_ _%L199375%_)
                   (cons _%L199375%_ (cons _%L199373%_ (cons '#f '())))))
                (_%__kont203555203556%_
                 (lambda (_%L199323%_ _%L199325%_ _%L199326%_)
                   (cons _%L199326%_
                         (cons _%L199325%_
                               (cons '#f
                                     (cons 'signature:
                                           (cons _%L199323%_ '()))))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx203546203547%_))
                (let ((_%e199215199480%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx203546203547%_))))
                  (let ((_%tl199217199487%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199215199480%_)))
                        (_%hd199216199484%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199215199480%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl199217199487%_))
                        (let ((_%e199218199490%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl199217199487%_))))
                          (let ((_%tl199220199497%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199218199490%_)))
                                (_%hd199219199494%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199218199490%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199220199497%_))
                                (let ((_%e199221199500%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199220199497%_))))
                                  (let ((_%tl199223199507%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199221199500%_)))
                                        (_%hd199222199504%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199221199500%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199223199507%_))
                                        (_%__kont203549203550%_
                                         _%hd199222199504%_
                                         _%hd199219199494%_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl199223199507%_))
                                            (let ((_%e199236199425%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl199223199507%_))))
                                              (let ((_%tl199238199432%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e199236199425%_)))
                                                    (_%hd199237199429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e199236199425%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd199237199429%_))
                                                    (let ((_%e199239199435%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd199237199429%_))))
                                                      (if (equal? _%e199239199435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'signature:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl199238199432%_))
                      (let ((_%e199240199439%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl199238199432%_))))
                        (let ((_%tl199242199446%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199240199439%_)))
                              (_%hd199241199443%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199240199439%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl199242199446%_))
                              (_%__kont203551203552%_
                               _%hd199241199443%_
                               _%hd199222199504%_
                               _%hd199219199494%_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _%hd199222199504%_))
                                  (let ((_%e199263199309%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%hd199222199504%_))))
                                    (declare (not safe))
                                    (_%g199211199272%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%g199211199272%_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd199222199504%_))
                          (let ((_%e199263199309%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd199222199504%_))))
                            (if (equal? _%e199263199309%_ 'signature:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199238199432%_))
                                    (_%__kont203555203556%_
                                     _%hd199237199429%_
                                     _%hd199219199494%_
                                     _%hd199216199484%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g199211199272%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g199211199272%_))))
                          (let () (declare (not safe)) (_%g199211199272%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-datum? _%hd199222199504%_))
                      (let ((_%e199263199309%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%hd199222199504%_))))
                        (if (equal? _%e199263199309%_ 'signature:)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl199238199432%_))
                                (_%__kont203555203556%_
                                 _%hd199237199429%_
                                 _%hd199219199494%_
                                 _%hd199216199484%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g199211199272%_)))
                            (let () (declare (not safe)) (_%g199211199272%_))))
                      (let () (declare (not safe)) (_%g199211199272%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-datum?
                                                           _%hd199222199504%_))
                                                        (let ((_%e199263199309%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _%hd199222199504%_))))
                  (if (equal? _%e199263199309%_ 'signature:)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl199238199432%_))
                          (_%__kont203555203556%_
                           _%hd199237199429%_
                           _%hd199219199494%_
                           _%hd199216199484%_)
                          (let () (declare (not safe)) (_%g199211199272%_)))
                      (let () (declare (not safe)) (_%g199211199272%_))))
                (let () (declare (not safe)) (_%g199211199272%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _%hd199222199504%_))
                                                (let ((_%e199263199309%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%hd199222199504%_))))
                                                  (declare (not safe))
                                                  (_%g199211199272%_))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g199211199272%_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl199220199497%_))
                                    (_%__kont203553203554%_
                                     _%hd199219199494%_
                                     _%hd199216199484%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g199211199272%_))))))
                        (let () (declare (not safe)) (_%g199211199272%_)))))
                (let () (declare (not safe)) (_%g199211199272%_)))))))
    (define |gxc[:0:]#@case-lambda|
      (lambda (_%$stx199531%_)
        (let* ((_%g199535199564%_
                (lambda (_%g199536199560%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199536199560%_))))
               (_%g199534199673%_
                (lambda (_%g199536199568%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199536199568%_))
                      (let ((_%e199538199571%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199536199568%_))))
                        (let ((_%hd199539199575%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199538199571%_)))
                              (_%tl199540199578%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199538199571%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199540199578%_))
                              (let ((_g204176_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199540199578%_
                                        '0))))
                                (begin
                                  (let ((_g204177_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204176_)
                                               (##vector-length _g204176_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204177_ 2)))
                                        (error "Context expects 2 values"
                                               _g204177_)))
                                  (let ((_%target199541199581%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204176_ 0)))
                                        (_%tl199543199584%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204176_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199543199584%_))
                                        (letrec ((_%loop199544199587%_
                                                  (lambda (_%hd199542199591%_
                                                           _%clause199548199594%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199542199591%_))
                                                        (let ((_%e199545199597%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199542199591%_))))
                  (let ((_%lp-hd199546199601%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199545199597%_)))
                        (_%lp-tl199547199604%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199545199597%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _%lp-hd199546199601%_))
                        (let ((_g204178_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _%lp-hd199546199601%_
                                  '0))))
                          (begin
                            (let ((_g204179_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g204178_)
                                         (##vector-length _g204178_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g204179_ 2)))
                                  (error "Context expects 2 values"
                                         _g204179_)))
                            (let ((_%target199550199607%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g204178_ 0)))
                                  (_%tl199552199610%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g204178_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl199552199610%_))
                                  (letrec ((_%loop199553199613%_
                                            (lambda (_%hd199551199617%_
                                                     _%clause199557199620%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%hd199551199617%_))
                                                  (let ((_%e199554199623%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%hd199551199617%_))))
                                                    (let ((_%lp-hd199555199627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e199554199623%_)))
                                                          (_%lp-tl199556199630%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e199554199623%_))))
                                                      (_%loop199553199613%_
                                                       _%lp-tl199556199630%_
                                                       (cons _%lp-hd199555199627%_
                                                             _%clause199557199620%_))))
                                                  (let ((_%clause199558199633%_
                                                         (reverse _%clause199557199620%_)))
                                                    (_%loop199544199587%_
                                                     _%lp-tl199547199604%_
                                                     (cons _%clause199558199633%_
                                                           _%clause199548199594%_)))))))
                                    (_%loop199553199613%_
                                     _%target199550199607%_
                                     '()))
                                  (_%g199535199564%_ _%g199536199568%_)))))
                        (_%g199535199564%_ _%g199536199568%_))))
                (let ((_%clause199549199637%_
                       (reverse _%clause199548199594%_)))
                  ((lambda (_%L199641%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'make-!case-lambda))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '@list))
                                       (let ((__tmp204180
                                              (lambda (_%g199656199661%_
                                                       _%g199657199664%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               '@lambda))
                                                            (let ((__tmp204181
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g199658199667%_ _%g199659199670%_)
                             (cons _%g199658199667%_ _%g199659199670%_))))
                      (declare (not safe))
                      (__foldr1 __tmp204181 '() _%g199656199661%_)))
              _%g199657199664%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr1
                                          __tmp204180
                                          '()
                                          _%L199641%_)))
                                 '())))
                   _%clause199549199637%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199544199587%_
                                           _%target199541199581%_
                                           '()))
                                        (_%g199535199564%_
                                         _%g199536199568%_)))))
                              (_%g199535199564%_ _%g199536199568%_))))
                      (_%g199535199564%_ _%g199536199568%_)))))
          (_%g199534199673%_ _%$stx199531%_))))
    (define |gxc[:0:]#@kw-lambda|
      (lambda (_%$stx199679%_)
        (let* ((_%g199683199701%_
                (lambda (_%g199684199697%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199684199697%_))))
               (_%g199682199756%_
                (lambda (_%g199684199705%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199684199705%_))
                      (let ((_%e199687199708%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199684199705%_))))
                        (let ((_%hd199688199712%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199687199708%_)))
                              (_%tl199689199715%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199687199708%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199689199715%_))
                              (let ((_%e199690199718%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199689199715%_))))
                                (let ((_%hd199691199722%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199690199718%_)))
                                      (_%tl199692199725%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199690199718%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199692199725%_))
                                      (let ((_%e199693199728%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199692199725%_))))
                                        (let ((_%hd199694199732%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199693199728%_)))
                                              (_%tl199695199735%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199693199728%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199695199735%_))
                                              ((lambda (_%L199738%_
                                                        _%L199740%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199740%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L199738%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199694199732%_
                                               _%hd199691199722%_)
                                              (_%g199683199701%_
                                               _%g199684199705%_))))
                                      (_%g199683199701%_ _%g199684199705%_))))
                              (_%g199683199701%_ _%g199684199705%_))))
                      (_%g199683199701%_ _%g199684199705%_)))))
          (_%g199682199756%_ _%$stx199679%_))))
    (define |gxc[:0:]#@kw-lambda-dispatch|
      (lambda (_%$stx199760%_)
        (let* ((_%g199764199782%_
                (lambda (_%g199765199778%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199765199778%_))))
               (_%g199763199837%_
                (lambda (_%g199765199786%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199765199786%_))
                      (let ((_%e199768199789%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199765199786%_))))
                        (let ((_%hd199769199793%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199768199789%_)))
                              (_%tl199770199796%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199768199789%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199770199796%_))
                              (let ((_%e199771199799%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199770199796%_))))
                                (let ((_%hd199772199803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199771199799%_)))
                                      (_%tl199773199806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199771199799%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199773199806%_))
                                      (let ((_%e199774199809%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199773199806%_))))
                                        (let ((_%hd199775199813%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199774199809%_)))
                                              (_%tl199776199816%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199774199809%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199776199816%_))
                                              ((lambda (_%L199819%_
                                                        _%L199821%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'make-!kw-lambda-primary))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L199821%_ '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote))
                                 (cons _%L199819%_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199775199813%_
                                               _%hd199772199803%_)
                                              (_%g199764199782%_
                                               _%g199765199786%_))))
                                      (_%g199764199782%_ _%g199765199786%_))))
                              (_%g199764199782%_ _%g199765199786%_))))
                      (_%g199764199782%_ _%g199765199786%_)))))
          (_%g199763199837%_ _%$stx199760%_))))
    (define |gxc[:0:]#declare-inline-rules!|
      (lambda (_%$stx199841%_)
        (let* ((_%g199845199874%_
                (lambda (_%g199846199870%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199846199870%_))))
               (_%g199844199974%_
                (lambda (_%g199846199878%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199846199878%_))
                      (let ((_%e199849199881%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199846199878%_))))
                        (let ((_%hd199850199885%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199849199881%_)))
                              (_%tl199851199888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199849199881%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl199851199888%_))
                              (let ((_g204182_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl199851199888%_
                                        '0))))
                                (begin
                                  (let ((_g204183_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204182_)
                                               (##vector-length _g204182_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204183_ 2)))
                                        (error "Context expects 2 values"
                                               _g204183_)))
                                  (let ((_%target199852199891%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204182_ 0)))
                                        (_%tl199854199894%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204182_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199854199894%_))
                                        (letrec ((_%loop199855199897%_
                                                  (lambda (_%hd199853199901%_
                                                           _%rule199859199904%_
                                                           _%proc199860199906%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd199853199901%_))
                                                        (let ((_%e199856199909%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd199853199901%_))))
                  (let ((_%lp-hd199857199913%_
                         (let ()
                           (declare (not safe))
                           (##car _%e199856199909%_)))
                        (_%lp-tl199858199916%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e199856199909%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%lp-hd199857199913%_))
                        (let ((_%e199863199919%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%lp-hd199857199913%_))))
                          (let ((_%hd199864199923%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e199863199919%_)))
                                (_%tl199865199926%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e199863199919%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl199865199926%_))
                                (let ((_%e199866199929%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl199865199926%_))))
                                  (let ((_%hd199867199933%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e199866199929%_)))
                                        (_%tl199868199936%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e199866199929%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl199868199936%_))
                                        (_%loop199855199897%_
                                         _%lp-tl199858199916%_
                                         (cons _%hd199867199933%_
                                               _%rule199859199904%_)
                                         (cons _%hd199864199923%_
                                               _%proc199860199906%_))
                                        (_%g199845199874%_
                                         _%g199846199878%_))))
                                (_%g199845199874%_ _%g199846199878%_))))
                        (_%g199845199874%_ _%g199846199878%_))))
                (let ((_%rule199861199939%_ (reverse _%rule199859199904%_))
                      (_%proc199862199942%_ (reverse _%proc199860199906%_)))
                  ((lambda (_%L199945%_ _%L199947%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (begin
                             (let ()
                               (declare (not safe))
                               (gx#syntax-check-splice-targets
                                _%L199945%_
                                _%L199947%_))
                             (let ((__tmp204184
                                    (lambda (_%g199962199966%_
                                             _%g199963199969%_
                                             _%g199964199971%_)
                                      (cons (cons (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'declare-inline-rule!))
                                                  (cons _%g199963199969%_
                                                        (cons _%g199962199966%_
                                                              '())))
                                            _%g199964199971%_))))
                               (declare (not safe))
                               (__foldr2
                                __tmp204184
                                '()
                                _%L199945%_
                                _%L199947%_)))))
                   _%rule199861199939%_
                   _%proc199862199942%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop199855199897%_
                                           _%target199852199891%_
                                           '()
                                           '()))
                                        (_%g199845199874%_
                                         _%g199846199878%_)))))
                              (_%g199845199874%_ _%g199846199878%_))))
                      (_%g199845199874%_ _%g199846199878%_)))))
          (_%g199844199974%_ _%$stx199841%_))))
    (define |gxc[:0:]#declare-inline-rule!|
      (lambda (_%$stx199979%_)
        (let* ((_%g199983200001%_
                (lambda (_%g199984199997%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g199984199997%_))))
               (_%g199982200056%_
                (lambda (_%g199984200005%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g199984200005%_))
                      (let ((_%e199987200008%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g199984200005%_))))
                        (let ((_%hd199988200012%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e199987200008%_)))
                              (_%tl199989200015%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e199987200008%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl199989200015%_))
                              (let ((_%e199990200018%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl199989200015%_))))
                                (let ((_%hd199991200022%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e199990200018%_)))
                                      (_%tl199992200025%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e199990200018%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl199992200025%_))
                                      (let ((_%e199993200028%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl199992200025%_))))
                                        (let ((_%hd199994200032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e199993200028%_)))
                                              (_%tl199995200035%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e199993200028%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl199995200035%_))
                                              ((lambda (_%L200038%_
                                                        _%L200040%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'let))
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'type))
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'optimizer-lookup-type))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L200040%_ '()))
                                             '()))
                                 '()))
                     (cons (cons (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'if))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '!lambda?))
                                             (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'type))
                                                   '()))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'set!))
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f '!lambda-inline))
                       (cons (let ()
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f 'type))
                             '()))
                 (cons _%L200038%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (cons (cons (let ()
                                                           (declare (not safe))
                                                           (gx#datum->syntax__0
                                                            '#f
                                                            'displayln))
                                                         (cons '"*** WARNING unknown procedure "
                                                               (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L200040%_ '()))
                             (cons '"; ignoring inline rule" '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()))))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%hd199994200032%_
                                               _%hd199991200022%_)
                                              (_%g199983200001%_
                                               _%g199984200005%_))))
                                      (_%g199983200001%_ _%g199984200005%_))))
                              (_%g199983200001%_ _%g199984200005%_))))
                      (_%g199983200001%_ _%g199984200005%_)))))
          (_%g199982200056%_ _%$stx199979%_))))
    (define |gxc[:0:]#declare-primitive-predicates|
      (lambda (_%$stx200060%_)
        (let* ((_%__stx203664203665%_ _%$stx200060%_)
               (_%g200065200090%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203664203665%_)))))
          (let ((_%__kont203667203668%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont203669203670%_
                 (lambda (_%L200137%_ _%L200139%_ _%L200140%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-predicate))
                                     (cons _%L200140%_ (cons _%L200139%_ '())))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-predicates))
                                           _%L200137%_)
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx203664203665%_))
                (let ((_%e200067200166%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx203664203665%_))))
                  (let ((_%tl200069200173%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200067200166%_)))
                        (_%hd200068200170%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200067200166%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl200069200173%_))
                        (_%__kont203667203668%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl200069200173%_))
                            (let ((_%e200076200107%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl200069200173%_))))
                              (let ((_%tl200078200114%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e200076200107%_)))
                                    (_%hd200077200111%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e200076200107%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%hd200077200111%_))
                                    (let ((_%e200079200117%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%hd200077200111%_))))
                                      (let ((_%tl200081200124%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200079200117%_)))
                                            (_%hd200080200121%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200079200117%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200081200124%_))
                                            (let ((_%e200082200127%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl200081200124%_))))
                                              (let ((_%tl200084200134%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200082200127%_)))
                                                    (_%hd200083200131%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200082200127%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%tl200084200134%_))
                                                    (_%__kont203669203670%_
                                                     _%tl200078200114%_
                                                     _%hd200083200131%_
                                                     _%hd200080200121%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g200065200090%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g200065200090%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200065200090%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g200065200090%_))))))
                (let () (declare (not safe)) (_%g200065200090%_)))))))
    (define |gxc[:0:]#declare-primitive-procedures|
      (lambda (_%$stx200184%_)
        (let* ((_%__stx203708203709%_ _%$stx200184%_)
               (_%g200189200220%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203708203709%_)))))
          (let ((_%__kont203711203712%_
                 (lambda ()
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         '())))
                (_%__kont203713203714%_
                 (lambda (_%L200287%_ _%L200289%_ _%L200290%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'begin))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0
                                        '#f
                                        'declare-primitive-procedure))
                                     (cons _%L200290%_
                                           (let ((__tmp204185
                                                  (lambda (_%g200310200313%_
                                                           _%g200311200316%_)
                                                    (cons _%g200310200313%_
                                                          _%g200311200316%_))))
                                             (declare (not safe))
                                             (__foldr1
                                              __tmp204185
                                              '()
                                              _%L200289%_))))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'declare-primitive-procedures))
                                           _%L200287%_)
                                     '()))))))
            (let ((_%__match203751203752%_
                   (lambda (_%e200197200227%_
                            _%hd200198200231%_
                            _%tl200199200234%_
                            _%e200200200237%_
                            _%hd200201200241%_
                            _%tl200202200244%_
                            _%e200203200247%_
                            _%hd200204200251%_
                            _%tl200205200254%_
                            _%__splice203715203716%_
                            _%target200206200257%_
                            _%tl200208200260%_)
                     (letrec ((_%loop200209200263%_
                               (lambda (_%hd200207200267%_ _%sig200213200270%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%hd200207200267%_))
                                     (let ((_%e200210200273%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%hd200207200267%_))))
                                       (let ((_%lp-tl200212200280%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e200210200273%_)))
                                             (_%lp-hd200211200277%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e200210200273%_))))
                                         (_%loop200209200263%_
                                          _%lp-tl200212200280%_
                                          (cons _%lp-hd200211200277%_
                                                _%sig200213200270%_))))
                                     (let ((_%sig200214200283%_
                                            (reverse _%sig200213200270%_)))
                                       (_%__kont203713203714%_
                                        _%tl200202200244%_
                                        _%sig200214200283%_
                                        _%hd200204200251%_))))))
                       (_%loop200209200263%_ _%target200206200257%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203708203709%_))
                  (let ((_%e200191200326%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203708203709%_))))
                    (let ((_%tl200193200333%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200191200326%_)))
                          (_%hd200192200330%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200191200326%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200193200333%_))
                          (_%__kont203711203712%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200193200333%_))
                              (let ((_%e200200200237%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200193200333%_))))
                                (let ((_%tl200202200244%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200200200237%_)))
                                      (_%hd200201200241%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200200200237%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200201200241%_))
                                      (let ((_%e200203200247%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd200201200241%_))))
                                        (let ((_%tl200205200254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200203200247%_)))
                                              (_%hd200204200251%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200203200247%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl200205200254%_))
                                              (let ((_%__splice203715203716%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl200205200254%_
                                                        '0))))
                                                (let ((_%tl200208200260%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203715203716%_
                                                          '1)))
                                                      (_%target200206200257%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203715203716%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200208200260%_))
                                                      (_%__match203751203752%_
                                                       _%e200191200326%_
                                                       _%hd200192200330%_
                                                       _%tl200193200333%_
                                                       _%e200200200237%_
                                                       _%hd200201200241%_
                                                       _%tl200202200244%_
                                                       _%e200203200247%_
                                                       _%hd200204200251%_
                                                       _%tl200205200254%_
                                                       _%__splice203715203716%_
                                                       _%target200206200257%_
                                                       _%tl200208200260%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200189200220%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200189200220%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200189200220%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g200189200220%_))))))
                  (let () (declare (not safe)) (_%g200189200220%_))))))))
    (define |gxc[:0:]#declare-primitive-procedure|
      (lambda (_%$stx200345%_)
        (let* ((_%__stx203754203755%_ _%$stx200345%_)
               (_%g200350200397%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx203754203755%_)))))
          (let ((_%__kont203757203758%_
                 (lambda (_%L200559%_ _%L200561%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'declare-primitive-case-lambda))
                         (cons _%L200561%_
                               (let ((__tmp204186
                                      (lambda (_%g200581200584%_
                                               _%g200582200587%_)
                                        (cons _%g200581200584%_
                                              _%g200582200587%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp204186 '() _%L200559%_))))))
                (_%__kont203761203762%_
                 (lambda (_%L200454%_ _%L200456%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'declare-primitive-lambda))
                         (cons _%L200456%_
                               (let ((__tmp204187
                                      (lambda (_%g200473200476%_
                                               _%g200474200479%_)
                                        (cons _%g200473200476%_
                                              _%g200474200479%_))))
                                 (declare (not safe))
                                 (__foldr1 __tmp204187 '() _%L200454%_)))))))
            (let* ((_%__match203821203822%_
                    (lambda (_%e200377200404%_
                             _%hd200378200408%_
                             _%tl200379200411%_
                             _%e200380200414%_
                             _%hd200381200418%_
                             _%tl200382200421%_
                             _%__splice203763203764%_
                             _%target200383200424%_
                             _%tl200385200427%_)
                      (letrec ((_%loop200386200430%_
                                (lambda (_%hd200384200434%_
                                         _%sig200390200437%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200384200434%_))
                                      (let ((_%e200387200440%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd200384200434%_))))
                                        (let ((_%lp-tl200389200447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200387200440%_)))
                                              (_%lp-hd200388200444%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200387200440%_))))
                                          (_%loop200386200430%_
                                           _%lp-tl200389200447%_
                                           (cons _%lp-hd200388200444%_
                                                 _%sig200390200437%_))))
                                      (let ((_%sig200391200450%_
                                             (reverse _%sig200390200437%_)))
                                        (_%__kont203761203762%_
                                         _%sig200391200450%_
                                         _%hd200381200418%_))))))
                        (_%loop200386200430%_ _%target200383200424%_ '()))))
                   (_%__match203813203814%_
                    (lambda (_%e200377200404%_
                             _%hd200378200408%_
                             _%tl200379200411%_
                             _%e200380200414%_
                             _%hd200381200418%_
                             _%tl200382200421%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _%tl200382200421%_))
                          (let ((_%__splice203763203764%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _%tl200382200421%_
                                    '0))))
                            (let ((_%tl200385200427%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice203763203764%_
                                      '1)))
                                  (_%target200383200424%_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      _%__splice203763203764%_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl200385200427%_))
                                  (_%__match203821203822%_
                                   _%e200377200404%_
                                   _%hd200378200408%_
                                   _%tl200379200411%_
                                   _%e200380200414%_
                                   _%hd200381200418%_
                                   _%tl200382200421%_
                                   _%__splice203763203764%_
                                   _%target200383200424%_
                                   _%tl200385200427%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g200350200397%_)))))
                          (let () (declare (not safe)) (_%g200350200397%_)))))
                   (_%__match203801203802%_
                    (lambda (_%e200354200489%_
                             _%hd200355200493%_
                             _%tl200356200496%_
                             _%e200357200499%_
                             _%hd200358200503%_
                             _%tl200359200506%_
                             _%e200360200509%_
                             _%hd200361200513%_
                             _%tl200362200516%_
                             _%e200363200519%_
                             _%hd200364200523%_
                             _%tl200365200526%_
                             _%__splice203759203760%_
                             _%target200366200529%_
                             _%tl200368200532%_)
                      (letrec ((_%loop200369200535%_
                                (lambda (_%hd200367200539%_
                                         _%sig200373200542%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%hd200367200539%_))
                                      (let ((_%e200370200545%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%hd200367200539%_))))
                                        (let ((_%lp-tl200372200552%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e200370200545%_)))
                                              (_%lp-hd200371200549%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e200370200545%_))))
                                          (_%loop200369200535%_
                                           _%lp-tl200372200552%_
                                           (cons _%lp-hd200371200549%_
                                                 _%sig200373200542%_))))
                                      (let ((_%sig200374200555%_
                                             (reverse _%sig200373200542%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%tl200362200516%_))
                                            (_%__kont203757203758%_
                                             _%sig200374200555%_
                                             _%hd200358200503%_)
                                            (_%__match203813203814%_
                                             _%e200354200489%_
                                             _%hd200355200493%_
                                             _%tl200356200496%_
                                             _%e200357200499%_
                                             _%hd200358200503%_
                                             _%tl200359200506%_)))))))
                        (_%loop200369200535%_ _%target200366200529%_ '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203754203755%_))
                  (let ((_%e200354200489%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203754203755%_))))
                    (let ((_%tl200356200496%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200354200489%_)))
                          (_%hd200355200493%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200354200489%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl200356200496%_))
                          (let ((_%e200357200499%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl200356200496%_))))
                            (let ((_%tl200359200506%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e200357200499%_)))
                                  (_%hd200358200503%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e200357200499%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200359200506%_))
                                  (let ((_%e200360200509%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl200359200506%_))))
                                    (let ((_%tl200362200516%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200360200509%_)))
                                          (_%hd200361200513%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200360200509%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%hd200361200513%_))
                                          (let ((_%e200363200519%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%hd200361200513%_))))
                                            (let ((_%tl200365200526%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e200363200519%_)))
                                                  (_%hd200364200523%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e200363200519%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#identifier?
                                                     _%hd200364200523%_))
                                                  (if (let ((__tmp204188
                                                             |gxc[1]#_g204189_|))
                                                        (declare (not safe))
                                                        (gx#free-identifier=?
                                                         __tmp204188
                                                         _%hd200364200523%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair/null?
                                                             _%tl200365200526%_))
                                                          (let ((_%__splice203759203760%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl200365200526%_ '0))))
                    (let ((_%tl200368200532%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203759203760%_ '1)))
                          (_%target200366200529%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203759203760%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200368200532%_))
                          (_%__match203801203802%_
                           _%e200354200489%_
                           _%hd200355200493%_
                           _%tl200356200496%_
                           _%e200357200499%_
                           _%hd200358200503%_
                           _%tl200359200506%_
                           _%e200360200509%_
                           _%hd200361200513%_
                           _%tl200362200516%_
                           _%e200363200519%_
                           _%hd200364200523%_
                           _%tl200365200526%_
                           _%__splice203759203760%_
                           _%target200366200529%_
                           _%tl200368200532%_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl200359200506%_))
                              (let ((_%__splice203763203764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl200359200506%_
                                        '0))))
                                (let ((_%tl200385200427%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice203763203764%_
                                          '1)))
                                      (_%target200383200424%_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          _%__splice203763203764%_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%tl200385200427%_))
                                      (_%__match203821203822%_
                                       _%e200354200489%_
                                       _%hd200355200493%_
                                       _%tl200356200496%_
                                       _%e200357200499%_
                                       _%hd200358200503%_
                                       _%tl200359200506%_
                                       _%__splice203763203764%_
                                       _%target200383200424%_
                                       _%tl200385200427%_)
                                      (let ()
                                        (declare (not safe))
                                        (_%g200350200397%_)))))
                              (let ()
                                (declare (not safe))
                                (_%g200350200397%_))))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _%tl200359200506%_))
                      (let ((_%__splice203763203764%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice
                                _%tl200359200506%_
                                '0))))
                        (let ((_%tl200385200427%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203763203764%_ '1)))
                              (_%target200383200424%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _%__splice203763203764%_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl200385200427%_))
                              (_%__match203821203822%_
                               _%e200354200489%_
                               _%hd200355200493%_
                               _%tl200356200496%_
                               _%e200357200499%_
                               _%hd200358200503%_
                               _%tl200359200506%_
                               _%__splice203763203764%_
                               _%target200383200424%_
                               _%tl200385200427%_)
                              (let ()
                                (declare (not safe))
                                (_%g200350200397%_)))))
                      (let () (declare (not safe)) (_%g200350200397%_))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair/null? _%tl200359200506%_))
                  (let ((_%__splice203763203764%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-split-splice _%tl200359200506%_ '0))))
                    (let ((_%tl200385200427%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203763203764%_ '1)))
                          (_%target200383200424%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice203763203764%_ '0))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%tl200385200427%_))
                          (_%__match203821203822%_
                           _%e200354200489%_
                           _%hd200355200493%_
                           _%tl200356200496%_
                           _%e200357200499%_
                           _%hd200358200503%_
                           _%tl200359200506%_
                           _%__splice203763203764%_
                           _%target200383200424%_
                           _%tl200385200427%_)
                          (let () (declare (not safe)) (_%g200350200397%_)))))
                  (let () (declare (not safe)) (_%g200350200397%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%tl200359200506%_))
                                                      (let ((_%__splice203763203764%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%tl200359200506%_ '0))))
                (let ((_%tl200385200427%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203763203764%_ '1)))
                      (_%target200383200424%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice203763203764%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%tl200385200427%_))
                      (_%__match203821203822%_
                       _%e200354200489%_
                       _%hd200355200493%_
                       _%tl200356200496%_
                       _%e200357200499%_
                       _%hd200358200503%_
                       _%tl200359200506%_
                       _%__splice203763203764%_
                       _%target200383200424%_
                       _%tl200385200427%_)
                      (let () (declare (not safe)) (_%g200350200397%_)))))
              (let () (declare (not safe)) (_%g200350200397%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _%tl200359200506%_))
                                              (let ((_%__splice203763203764%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _%tl200359200506%_
                                                        '0))))
                                                (let ((_%tl200385200427%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203763203764%_
                                                          '1)))
                                                      (_%target200383200424%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice203763203764%_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200385200427%_))
                                                      (_%__match203821203822%_
                                                       _%e200354200489%_
                                                       _%hd200355200493%_
                                                       _%tl200356200496%_
                                                       _%e200357200499%_
                                                       _%hd200358200503%_
                                                       _%tl200359200506%_
                                                       _%__splice203763203764%_
                                                       _%target200383200424%_
                                                       _%tl200385200427%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g200350200397%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g200350200397%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl200359200506%_))
                                      (let ((_%__splice203763203764%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl200359200506%_
                                                '0))))
                                        (let ((_%tl200385200427%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203763203764%_
                                                  '1)))
                                              (_%target200383200424%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice203763203764%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl200385200427%_))
                                              (_%__match203821203822%_
                                               _%e200354200489%_
                                               _%hd200355200493%_
                                               _%tl200356200496%_
                                               _%e200357200499%_
                                               _%hd200358200503%_
                                               _%tl200359200506%_
                                               _%__splice203763203764%_
                                               _%target200383200424%_
                                               _%tl200385200427%_)
                                              (let ()
                                                (declare (not safe))
                                                (_%g200350200397%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200350200397%_))))))
                          (let () (declare (not safe)) (_%g200350200397%_)))))
                  (let () (declare (not safe)) (_%g200350200397%_))))))))
    (define |gxc[1]#verify-procedure!|
      (lambda (_%ctx201744%_ _%id201746%_)
        (let ((_%proc201750%_
               (let ((__tmp204190
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id201746%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp204190))))
          (if (procedure? _%proc201750%_)
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown procedure"
                 _%ctx201744%_
                 _%id201746%_))))))
    (define |gxc[1]#verify-class!|
      (lambda (_%ctx201735%_ _%id201737%_)
        (let ((_%klass201741%_
               (let ((__tmp204191
                      (lambda ()
                        (let ()
                          (declare (not safe))
                          (gx#eval-syntax__0 _%id201737%_)))))
                 (declare (not safe))
                 (__with-catch false __tmp204191))))
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass201741%_ 'class))
              '#!void
              (let ()
                (declare (not safe))
                (gx#raise-syntax-error
                 '#f
                 '"unknown class"
                 _%ctx201735%_
                 _%id201737%_))))))
    (define |gxc[1]#parse-signature|
      (lambda (_%ctx200985%_ _%proc200987%_ _%sig200988%_)
        (letrec ((_%signature-arity200990%_
                  (lambda (_%args201667%_)
                    (let _%loop201670%_ ((_%rest201673%_ _%args201667%_)
                                         (_%count201675%_ '0))
                      (let* ((_%rest201676201687%_ _%rest201673%_)
                             (_%E201680201693%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (error '"No clause matching"
                                         _%rest201676201687%_
                                         '([_ . rest])
                                         '([])
                                         '(_)))
                                '#!void)))
                        (let ((_%K201683201724%_
                               (lambda (_%rest201721%_)
                                 (_%loop201670%_
                                  _%rest201721%_
                                  (let ()
                                    (declare (not safe))
                                    (##fx+ _%count201675%_ '1)))))
                              (_%K201682201713%_ (lambda () _%count201675%_))
                              (_%K201681201701%_
                               (lambda () (cons _%count201675%_ '()))))
                          (let ((_%try-match201678201717%_
                                 (lambda ()
                                   (if (let ()
                                         (declare (not safe))
                                         (##null? _%rest201676201687%_))
                                       (_%K201682201713%_)
                                       (_%K201681201701%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest201676201687%_))
                                (let* ((_%tl201685201728%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%rest201676201687%_)))
                                       (_%rest201732%_ _%tl201685201728%_))
                                  (_%K201683201724%_ _%rest201732%_))
                                (_%try-match201678201717%_))))))))
                 (_%make-signature200992%_
                  (lambda (_%args201549%_
                           _%return201551%_
                           _%effect201552%_
                           _%unchecked201553%_)
                    (let ((__tmp204192
                           (lambda (_%g201554201556%_)
                             (|gxc[1]#verify-class!|
                              _%ctx200985%_
                              _%g201554201556%_))))
                      (declare (not safe))
                      (gx#stx-for-each1 __tmp204192 _%args201549%_))
                    (|gxc[1]#verify-class!| _%ctx200985%_ _%return201551%_)
                    (if _%unchecked201553%_
                        (|gxc[1]#verify-procedure!|
                         _%ctx200985%_
                         _%unchecked201553%_)
                        '#!void)
                    (let ((_%arity201560%_
                           (_%signature-arity200990%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-map1 gx#stx-e _%args201549%_)))))
                      (if _%effect201552%_
                          (let ((_%effect201563%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax->datum _%effect201552%_))))
                            (if (and (list? _%effect201563%_)
                                     (let ()
                                       (declare (not safe))
                                       (__andmap1 symbol? _%effect201563%_)))
                                '#!void
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"bad effect"
                                   _%ctx200985%_
                                   _%proc200987%_
                                   _%effect201563%_))))
                          '#!void)
                      (cons _%arity201560%_
                            (cons (let* ((_%g201566201589%_
                                          (lambda (_%g201567201585%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g201567201585%_))))
                                         (_%g201565201663%_
                                          (lambda (_%g201567201593%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%g201567201593%_))
                                                (let ((_%e201572201596%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%g201567201593%_))))
                                                  (let ((_%hd201573201600%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e201572201596%_)))
                                                        (_%tl201574201603%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e201572201596%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201574201603%_))
                                                        (let ((_%e201575201606%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl201574201603%_))))
                  (let ((_%hd201576201610%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201575201606%_)))
                        (_%tl201577201613%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201575201606%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl201577201613%_))
                        (let ((_%e201578201616%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201577201613%_))))
                          (let ((_%hd201579201620%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201578201616%_)))
                                (_%tl201580201623%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201578201616%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl201580201623%_))
                                (let ((_%e201581201626%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl201580201623%_))))
                                  (let ((_%hd201582201630%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e201581201626%_)))
                                        (_%tl201583201633%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e201581201626%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl201583201633%_))
                                        ((lambda (_%L201636%_
                                                  _%L201638%_
                                                  _%L201639%_
                                                  _%L201640%_)
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'make-!signature))
                                                 (cons 'arguments:
                                                       (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L201640%_ '()))
                     (cons 'return:
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'quote))
                                       (cons _%L201639%_ '()))
                                 (cons 'effect:
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L201638%_ '()))
                                             (cons 'unchecked:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L201636%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'builtin))
                                         '()))
                             '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%hd201582201630%_
                                         _%hd201579201620%_
                                         _%hd201576201610%_
                                         _%hd201573201600%_)
                                        (_%g201566201589%_
                                         _%g201567201593%_))))
                                (_%g201566201589%_ _%g201567201593%_))))
                        (_%g201566201589%_ _%g201567201593%_))))
                (_%g201566201589%_ _%g201567201593%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g201566201589%_
                                                 _%g201567201593%_)))))
                                    (_%g201565201663%_
                                     (list _%args201549%_
                                           _%return201551%_
                                           _%effect201552%_
                                           _%unchecked201553%_)))
                                  '()))))))
          (|gxc[1]#verify-procedure!| _%ctx200985%_ _%proc200987%_)
          (let* ((_%__stx203832203833%_ _%sig200988%_)
                 (_%g200999201102%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx203832203833%_)))))
            (let ((_%__kont203835203836%_
                   (lambda (_%L201530%_ _%L201532%_)
                     (_%make-signature200992%_
                      _%L201532%_
                      _%L201530%_
                      '#f
                      '#f)))
                  (_%__kont203837203838%_
                   (lambda (_%L201481%_ _%L201483%_ _%L201484%_)
                     (_%make-signature200992%_
                      _%L201484%_
                      _%L201483%_
                      _%L201481%_
                      '#f)))
                  (_%__kont203839203840%_
                   (lambda (_%L201405%_ _%L201407%_ _%L201408%_)
                     (_%make-signature200992%_
                      _%L201408%_
                      _%L201407%_
                      _%L201405%_
                      (let ((__tmp204193
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc200987%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp204193)))))
                  (_%__kont203841203842%_
                   (lambda (_%L201311%_ _%L201313%_ _%L201314%_ _%L201315%_)
                     (_%make-signature200992%_
                      _%L201315%_
                      _%L201314%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L201311%_)))))
                  (_%__kont203843203844%_
                   (lambda (_%L201218%_ _%L201220%_)
                     (_%make-signature200992%_
                      _%L201220%_
                      _%L201218%_
                      '#f
                      (let ((__tmp204194
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%proc200987%_))))
                        (declare (not safe))
                        (make-symbol__1 '"##" __tmp204194)))))
                  (_%__kont203845203846%_
                   (lambda (_%L201153%_ _%L201155%_ _%L201156%_)
                     (_%make-signature200992%_
                      _%L201156%_
                      _%L201155%_
                      '#f
                      (let () (declare (not safe)) (gx#stx-e _%L201153%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx203832203833%_))
                  (let ((_%e201003201510%_
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%__stx203832203833%_))))
                    (let ((_%tl201005201517%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e201003201510%_)))
                          (_%hd201004201514%_
                           (let ()
                             (declare (not safe))
                             (##car _%e201003201510%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl201005201517%_))
                          (let ((_%e201006201520%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl201005201517%_))))
                            (let ((_%tl201008201527%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e201006201520%_)))
                                  (_%hd201007201524%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e201006201520%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl201008201527%_))
                                  (_%__kont203835203836%_
                                   _%hd201007201524%_
                                   _%hd201004201514%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201008201527%_))
                                      (let ((_%e201018201457%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201008201527%_))))
                                        (let ((_%tl201020201464%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201018201457%_)))
                                              (_%hd201019201461%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201018201457%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-datum?
                                                 _%hd201019201461%_))
                                              (let ((_%e201021201467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%hd201019201461%_))))
                                                (if (equal? _%e201021201467%_
                                                            'effect:)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%tl201020201464%_))
                                                        (let ((_%e201022201471%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%tl201020201464%_))))
                  (let ((_%tl201024201478%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e201022201471%_)))
                        (_%hd201023201475%_
                         (let ()
                           (declare (not safe))
                           (##car _%e201022201471%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl201024201478%_))
                        (_%__kont203837203838%_
                         _%hd201023201475%_
                         _%hd201007201524%_
                         _%hd201004201514%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl201024201478%_))
                            (let ((_%e201041201391%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl201024201478%_))))
                              (let ((_%tl201043201398%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e201041201391%_)))
                                    (_%hd201042201395%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e201041201391%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-datum? _%hd201042201395%_))
                                    (let ((_%e201044201401%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%hd201042201395%_))))
                                      (if (equal? _%e201044201401%_
                                                  'unchecked:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201043201398%_))
                                              (_%__kont203839203840%_
                                               _%hd201023201475%_
                                               _%hd201007201524%_
                                               _%hd201004201514%_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl201043201398%_))
                                                  (let ((_%e201066201301%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl201043201398%_))))
                                                    (let ((_%tl201068201308%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e201066201301%_)))
                                                          (_%hd201067201305%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e201066201301%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl201068201308%_))
                                                          (_%__kont203841203842%_
                                                           _%hd201067201305%_
                                                           _%hd201023201475%_
                                                           _%hd201007201524%_
                                                           _%hd201004201514%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g200999201102%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g200999201102%_))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g200999201102%_))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g200999201102%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g200999201102%_))))))
                (let () (declare (not safe)) (_%g200999201102%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (equal? _%e201021201467%_
                                                                'unchecked:)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl201020201464%_))
                                                            (_%__kont203843203844%_
                                                             _%hd201007201524%_
                                                             _%hd201004201514%_)
                                                            (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-pair? _%tl201020201464%_))
                        (let ((_%e201094201143%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl201020201464%_))))
                          (let ((_%tl201096201150%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201094201143%_)))
                                (_%hd201095201147%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201094201143%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%tl201096201150%_))
                                (_%__kont203845203846%_
                                 _%hd201095201147%_
                                 _%hd201007201524%_
                                 _%hd201004201514%_)
                                (let ()
                                  (declare (not safe))
                                  (_%g200999201102%_)))))
                        (let () (declare (not safe)) (_%g200999201102%_))))
                (let () (declare (not safe)) (_%g200999201102%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g200999201102%_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_%g200999201102%_))))))
                          (let () (declare (not safe)) (_%g200999201102%_)))))
                  (let () (declare (not safe)) (_%g200999201102%_))))))))
    (define |gxc[1]#signature->unchecked-signature|
      (lambda (_%sig200596%_)
        (let* ((_%g200599200679%_
                (lambda (_%g200600200675%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g200600200675%_))))
               (_%g200598200981%_
                (lambda (_%g200600200683%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g200600200683%_))
                      (let ((_%e200606200686%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g200600200683%_))))
                        (let ((_%hd200607200690%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200606200686%_)))
                              (_%tl200608200693%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200606200686%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl200608200693%_))
                              (let ((_%e200609200696%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl200608200693%_))))
                                (let ((_%hd200610200700%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200609200696%_)))
                                      (_%tl200611200703%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200609200696%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _%hd200610200700%_))
                                      (let ((_%e200612200706%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _%hd200610200700%_))))
                                        (if (equal? _%e200612200706%_
                                                    'arguments:)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200611200703%_))
                                                (let ((_%e200613200710%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl200611200703%_))))
                                                  (let ((_%hd200614200714%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200613200710%_)))
                                                        (_%tl200615200717%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200613200710%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd200614200714%_))
                                                        (let ((_%e200616200720%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd200614200714%_))))
                  (let ((_%hd200617200724%_
                         (let ()
                           (declare (not safe))
                           (##car _%e200616200720%_)))
                        (_%tl200618200727%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e200616200720%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#identifier? _%hd200617200724%_))
                        (if (let ((__tmp204195 |gxc[1]#_g204196_|))
                              (declare (not safe))
                              (gx#free-identifier=?
                               __tmp204195
                               _%hd200617200724%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200618200727%_))
                                (let ((_%e200619200730%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200618200727%_))))
                                  (let ((_%hd200620200734%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200619200730%_)))
                                        (_%tl200621200737%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200619200730%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl200621200737%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%tl200615200717%_))
                                            (let ((_%e200622200740%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%tl200615200717%_))))
                                              (let ((_%hd200623200744%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200622200740%_)))
                                                    (_%tl200624200747%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200622200740%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _%hd200623200744%_))
                                                    (let ((_%e200625200750%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%hd200623200744%_))))
                                                      (if (equal? _%e200625200750%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          'return:)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl200624200747%_))
                      (let ((_%e200626200754%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl200624200747%_))))
                        (let ((_%hd200627200758%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e200626200754%_)))
                              (_%tl200628200761%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e200626200754%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%hd200627200758%_))
                              (let ((_%e200629200764%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%hd200627200758%_))))
                                (let ((_%hd200630200768%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e200629200764%_)))
                                      (_%tl200631200771%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e200629200764%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%hd200630200768%_))
                                      (if (let ((__tmp204197
                                                 |gxc[1]#_g204198_|))
                                            (declare (not safe))
                                            (gx#free-identifier=?
                                             __tmp204197
                                             _%hd200630200768%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200631200771%_))
                                              (let ((_%e200632200774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200631200771%_))))
                                                (let ((_%hd200633200778%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200632200774%_)))
                                                      (_%tl200634200781%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200632200774%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%tl200634200781%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl200628200761%_))
                                                          (let ((_%e200635200784%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl200628200761%_))))
                    (let ((_%hd200636200788%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200635200784%_)))
                          (_%tl200637200791%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200635200784%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-datum? _%hd200636200788%_))
                          (let ((_%e200638200794%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%hd200636200788%_))))
                            (if (equal? _%e200638200794%_ 'effect:)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%tl200637200791%_))
                                    (let ((_%e200639200798%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e
                                              _%tl200637200791%_))))
                                      (let ((_%hd200640200802%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e200639200798%_)))
                                            (_%tl200641200805%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e200639200798%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%hd200640200802%_))
                                            (let ((_%e200642200808%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _%hd200640200802%_))))
                                              (let ((_%hd200643200812%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e200642200808%_)))
                                                    (_%tl200644200815%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e200642200808%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _%hd200643200812%_))
                                                    (if (let ((__tmp204199
                                                               |gxc[1]#_g204200_|))
                                                          (declare (not safe))
                                                          (gx#free-identifier=?
                                                           __tmp204199
                                                           _%hd200643200812%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%tl200644200815%_))
                                                            (let ((_%e200645200818%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%tl200644200815%_))))
                      (let ((_%hd200646200822%_
                             (let ()
                               (declare (not safe))
                               (##car _%e200645200818%_)))
                            (_%tl200647200825%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e200645200818%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%tl200647200825%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%tl200641200805%_))
                                (let ((_%e200648200828%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%tl200641200805%_))))
                                  (let ((_%hd200649200832%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200648200828%_)))
                                        (_%tl200650200835%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200648200828%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _%hd200649200832%_))
                                        (let ((_%e200651200838%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%hd200649200832%_))))
                                          (if (equal? _%e200651200838%_
                                                      'unchecked:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl200650200835%_))
                                                  (let ((_%e200652200842%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl200650200835%_))))
                                                    (let ((_%hd200653200846%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e200652200842%_)))
                                                          (_%tl200654200849%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e200652200842%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%hd200653200846%_))
                                                          (let ((_%e200655200852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%hd200653200846%_))))
                    (let ((_%hd200656200856%_
                           (let ()
                             (declare (not safe))
                             (##car _%e200655200852%_)))
                          (_%tl200657200859%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e200655200852%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%hd200656200856%_))
                          (if (let ((__tmp204201 |gxc[1]#_g204202_|))
                                (declare (not safe))
                                (gx#free-identifier=?
                                 __tmp204201
                                 _%hd200656200856%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%tl200657200859%_))
                                  (let ((_%e200658200862%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-e _%tl200657200859%_))))
                                    (let ((_%hd200659200866%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e200658200862%_)))
                                          (_%tl200660200869%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e200658200862%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _%tl200660200869%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl200654200849%_))
                                              (let ((_%e200661200872%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl200654200849%_))))
                                                (let ((_%hd200662200876%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e200661200872%_)))
                                                      (_%tl200663200879%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e200661200872%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-datum?
                                                         _%hd200662200876%_))
                                                      (let ((_%e200664200882%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%hd200662200876%_))))
                (if (equal? _%e200664200882%_ 'origin:)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl200663200879%_))
                        (let ((_%e200665200886%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl200663200879%_))))
                          (let ((_%hd200666200890%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e200665200886%_)))
                                (_%tl200667200893%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e200665200886%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%hd200666200890%_))
                                (let ((_%e200668200896%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _%hd200666200890%_))))
                                  (let ((_%hd200669200900%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e200668200896%_)))
                                        (_%tl200670200903%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e200668200896%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _%hd200669200900%_))
                                        (if (let ((__tmp204203
                                                   |gxc[1]#_g204204_|))
                                              (declare (not safe))
                                              (gx#free-identifier=?
                                               __tmp204203
                                               _%hd200669200900%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%tl200670200903%_))
                                                (let ((_%e200671200906%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _%tl200670200903%_))))
                                                  (let ((_%hd200672200910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e200671200906%_)))
                                                        (_%tl200673200913%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e200671200906%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%tl200673200913%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-null?
                                                               _%tl200667200893%_))
                                                            ((lambda (_%L200916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%L200918%_
                              _%L200919%_
                              _%L200920%_
                              _%L200921%_)
                       (if (let () (declare (not safe)) (gx#stx-e _%L200918%_))
                           (cons _%L200918%_
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'make-!signature))
                                             (cons 'return:
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'quote))
                       (cons _%L200920%_ '()))
                 (cons 'origin:
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L200916%_ '()))
                             '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '()))
                           '#f))
                     _%hd200672200910%_
                     _%hd200659200866%_
                     _%hd200646200822%_
                     _%hd200633200778%_
                     _%hd200620200734%_)
                    (_%g200599200679%_ _%g200600200683%_))
                (_%g200599200679%_ _%g200600200683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200599200679%_
                                                 _%g200600200683%_))
                                            (_%g200599200679%_
                                             _%g200600200683%_))
                                        (_%g200599200679%_
                                         _%g200600200683%_))))
                                (_%g200599200679%_ _%g200600200683%_))))
                        (_%g200599200679%_ _%g200600200683%_))
                    (_%g200599200679%_ _%g200600200683%_)))
              (_%g200599200679%_ _%g200600200683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200599200679%_
                                               _%g200600200683%_))
                                          (_%g200599200679%_
                                           _%g200600200683%_))))
                                  (_%g200599200679%_ _%g200600200683%_))
                              (_%g200599200679%_ _%g200600200683%_))
                          (_%g200599200679%_ _%g200600200683%_))))
                  (_%g200599200679%_ _%g200600200683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g200599200679%_
                                                   _%g200600200683%_))
                                              (_%g200599200679%_
                                               _%g200600200683%_)))
                                        (_%g200599200679%_
                                         _%g200600200683%_))))
                                (_%g200599200679%_ _%g200600200683%_))
                            (_%g200599200679%_ _%g200600200683%_))))
                    (_%g200599200679%_ _%g200600200683%_))
                (_%g200599200679%_ _%g200600200683%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200599200679%_
                                                     _%g200600200683%_))))
                                            (_%g200599200679%_
                                             _%g200600200683%_))))
                                    (_%g200599200679%_ _%g200600200683%_))
                                (_%g200599200679%_ _%g200600200683%_)))
                          (_%g200599200679%_ _%g200600200683%_))))
                  (_%g200599200679%_ _%g200600200683%_))
              (_%g200599200679%_ _%g200600200683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g200599200679%_
                                               _%g200600200683%_))
                                          (_%g200599200679%_
                                           _%g200600200683%_))
                                      (_%g200599200679%_ _%g200600200683%_))))
                              (_%g200599200679%_ _%g200600200683%_))))
                      (_%g200599200679%_ _%g200600200683%_))
                  (_%g200599200679%_ _%g200600200683%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g200599200679%_
                                                     _%g200600200683%_))))
                                            (_%g200599200679%_
                                             _%g200600200683%_))
                                        (_%g200599200679%_
                                         _%g200600200683%_))))
                                (_%g200599200679%_ _%g200600200683%_))
                            (_%g200599200679%_ _%g200600200683%_))
                        (_%g200599200679%_ _%g200600200683%_))))
                (_%g200599200679%_ _%g200600200683%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g200599200679%_
                                                 _%g200600200683%_))
                                            (_%g200599200679%_
                                             _%g200600200683%_)))
                                      (_%g200599200679%_ _%g200600200683%_))))
                              (_%g200599200679%_ _%g200600200683%_))))
                      (_%g200599200679%_ _%g200600200683%_)))))
          (_%g200598200981%_ _%sig200596%_))))
    (define |gxc[:0:]#declare-primitive-predicate|
      (lambda (_%stx201753%_)
        (let* ((_%g201756201774%_
                (lambda (_%g201757201770%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201757201770%_))))
               (_%g201755201829%_
                (lambda (_%g201757201778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201757201778%_))
                      (let ((_%e201760201781%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201757201778%_))))
                        (let ((_%hd201761201785%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201760201781%_)))
                              (_%tl201762201788%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201760201781%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201762201788%_))
                              (let ((_%e201763201791%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201762201788%_))))
                                (let ((_%hd201764201795%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201763201791%_)))
                                      (_%tl201765201798%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201763201791%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%tl201765201798%_))
                                      (let ((_%e201766201801%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%tl201765201798%_))))
                                        (let ((_%hd201767201805%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e201766201801%_)))
                                              (_%tl201768201808%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e201766201801%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl201768201808%_))
                                              ((lambda (_%L201811%_
                                                        _%L201813%_)
                                                 (if (and (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L201813%_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%L201811%_)))
                                                     (begin
                                                       (|gxc[1]#verify-procedure!|
                                                        _%stx201753%_
                                                        _%L201813%_)
                                                       (|gxc[1]#verify-class!|
                                                        _%stx201753%_
                                                        _%L201811%_)
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'declare-type))
                     (cons _%L201813%_
                           (cons (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0
                                          '#f
                                          'make-!primitive-predicate))
                                       (cons (cons (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'quote))
                                                   (cons _%L201811%_ '()))
                                             '()))
                                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g201756201774%_
                                                      _%g201757201778%_)))
                                               _%hd201767201805%_
                                               _%hd201764201795%_)
                                              (_%g201756201774%_
                                               _%g201757201778%_))))
                                      (_%g201756201774%_ _%g201757201778%_))))
                              (_%g201756201774%_ _%g201757201778%_))))
                      (_%g201756201774%_ _%g201757201778%_)))))
          (_%g201755201829%_ _%stx201753%_))))
    (define |gxc[:0:]#declare-primitive-lambda|
      (lambda (_%stx201833%_)
        (let* ((_%g201836201860%_
                (lambda (_%g201837201856%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g201837201856%_))))
               (_%g201835202143%_
                (lambda (_%g201837201864%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g201837201864%_))
                      (let ((_%e201840201867%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g201837201864%_))))
                        (let ((_%hd201841201871%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e201840201867%_)))
                              (_%tl201842201874%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e201840201867%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl201842201874%_))
                              (let ((_%e201843201877%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl201842201874%_))))
                                (let ((_%hd201844201881%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e201843201877%_)))
                                      (_%tl201845201884%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e201843201877%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl201845201884%_))
                                      (let ((_g204205_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl201845201884%_
                                                '0))))
                                        (begin
                                          (let ((_g204206_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204205_)
                                                       (##vector-length
                                                        _g204205_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204206_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204206_)))
                                          (let ((_%target201846201887%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g204205_ 0)))
                                                (_%tl201848201890%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g204205_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl201848201890%_))
                                                (letrec ((_%loop201849201893%_
                                                          (lambda (_%hd201847201897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%signature201853201900%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd201847201897%_))
                        (let ((_%e201850201903%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd201847201897%_))))
                          (let ((_%lp-hd201851201907%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e201850201903%_)))
                                (_%lp-tl201852201910%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e201850201903%_))))
                            (_%loop201849201893%_
                             _%lp-tl201852201910%_
                             (cons _%lp-hd201851201907%_
                                   _%signature201853201900%_))))
                        (let ((_%signature201854201913%_
                               (reverse _%signature201853201900%_)))
                          ((lambda (_%L201917%_ _%L201919%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L201919%_))
                                 (let* ((_%g201937201952%_
                                         (lambda (_%g201938201948%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g201938201948%_))))
                                        (_%g201936202131%_
                                         (lambda (_%g201938201956%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g201938201956%_))
                                               (let ((_%e201941201959%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g201938201956%_))))
                                                 (let ((_%hd201942201963%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e201941201959%_)))
                                                       (_%tl201943201966%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e201941201959%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl201943201966%_))
                                                       (let ((_%e201944201969%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl201943201966%_))))
                 (let ((_%hd201945201973%_
                        (let ()
                          (declare (not safe))
                          (##car _%e201944201969%_)))
                       (_%tl201946201976%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e201944201969%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%tl201946201976%_))
                       ((lambda (_%L201979%_ _%L201981%_)
                          (let* ((_%g201997202005%_
                                  (lambda (_%g201998202001%_)
                                    (let ()
                                      (declare (not safe))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g201998202001%_))))
                                 (_%g201996202127%_
                                  (lambda (_%g201998202009%_)
                                    ((lambda (_%L202012%_)
                                       (let* ((_%unchecked202025%_
                                               (|gxc[1]#signature->unchecked-signature|
                                                _%L201979%_))
                                              (_%g202028202036%_
                                               (lambda (_%g202029202032%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g202029202032%_))))
                                              (_%g202027202059%_
                                               (lambda (_%g202029202040%_)
                                                 ((lambda (_%L202043%_)
                                                    (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'begin))
                                                          (cons _%L202012%_
                                                                (cons _%L202043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%g202029202040%_))))
                                         (_%g202027202059%_
                                          (if _%unchecked202025%_
                                              (let* ((_%g202063202078%_
                                                      (lambda (_%g202064202074%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g202064202074%_))))
                                                     (_%g202062202123%_
                                                      (lambda (_%g202064202082%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%g202064202082%_))
                                                            (let ((_%e202067202085%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _%g202064202082%_))))
                      (let ((_%hd202068202089%_
                             (let ()
                               (declare (not safe))
                               (##car _%e202067202085%_)))
                            (_%tl202069202092%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e202067202085%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%tl202069202092%_))
                            (let ((_%e202070202095%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _%tl202069202092%_))))
                              (let ((_%hd202071202099%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e202070202095%_)))
                                    (_%tl202072202102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e202070202095%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%tl202072202102%_))
                                    ((lambda (_%L202105%_ _%L202107%_)
                                       (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'declare-type))
                                             (cons _%L202107%_
                                                   (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#datum->syntax__0 '#f 'make-!primitive-lambda))
                       (cons (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote))
                                   (cons _%L201981%_ '()))
                             (cons '#f
                                   (cons 'signature: (cons _%L202105%_ '())))))
                 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     _%hd202071202099%_
                                     _%hd202068202089%_)
                                    (_%g202063202078%_ _%g202064202082%_))))
                            (_%g202063202078%_ _%g202064202082%_))))
                    (_%g202063202078%_ _%g202064202082%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g202062202123%_
                                                 _%unchecked202025%_))
                                              '(begin)))))
                                     _%g201998202009%_))))
                            (_%g201996202127%_
                             (cons (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'declare-type))
                                   (cons _%L201919%_
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'make-!primitive-lambda))
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'quote))
                         (cons _%L201981%_ '()))
                   (cons '#f (cons 'signature: (cons _%L201979%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))))))
                        _%hd201945201973%_
                        _%hd201942201963%_)
                       (_%g201937201952%_ _%g201938201956%_))))
               (_%g201937201952%_ _%g201938201956%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g201937201952%_
                                                _%g201938201956%_)))))
                                   (_%g201936202131%_
                                    (|gxc[1]#parse-signature|
                                     _%stx201833%_
                                     _%L201919%_
                                     (let ((__tmp204207
                                            (lambda (_%g202134202137%_
                                                     _%g202135202140%_)
                                              (cons _%g202134202137%_
                                                    _%g202135202140%_))))
                                       (declare (not safe))
                                       (__foldr1
                                        __tmp204207
                                        '()
                                        _%L201917%_)))))
                                 (_%g201836201860%_ _%g201837201864%_)))
                           _%signature201854201913%_
                           _%hd201844201881%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop201849201893%_
                                                   _%target201846201887%_
                                                   '()))
                                                (_%g201836201860%_
                                                 _%g201837201864%_)))))
                                      (_%g201836201860%_ _%g201837201864%_))))
                              (_%g201836201860%_ _%g201837201864%_))))
                      (_%g201836201860%_ _%g201837201864%_)))))
          (_%g201835202143%_ _%stx201833%_))))
    (define |gxc[:0:]#declare-primitive-case-lambda|
      (lambda (_%stx202148%_)
        (let* ((_%g202151202175%_
                (lambda (_%g202152202171%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g202152202171%_))))
               (_%g202150203058%_
                (lambda (_%g202152202179%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g202152202179%_))
                      (let ((_%e202155202182%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g202152202179%_))))
                        (let ((_%hd202156202186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e202155202182%_)))
                              (_%tl202157202189%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e202155202182%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%tl202157202189%_))
                              (let ((_%e202158202192%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _%tl202157202189%_))))
                                (let ((_%hd202159202196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e202158202192%_)))
                                      (_%tl202160202199%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e202158202192%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _%tl202160202199%_))
                                      (let ((_g204208_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _%tl202160202199%_
                                                '0))))
                                        (begin
                                          (let ((_g204209_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g204208_)
                                                       (##vector-length
                                                        _g204208_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g204209_ 2)))
                                                (error "Context expects 2 values"
                                                       _g204209_)))
                                          (let ((_%target202161202202%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g204208_ 0)))
                                                (_%tl202163202205%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _g204208_
                                                    1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%tl202163202205%_))
                                                (letrec ((_%loop202164202208%_
                                                          (lambda (_%hd202162202212%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%case-signature202168202215%_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%hd202162202212%_))
                        (let ((_%e202165202218%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%hd202162202212%_))))
                          (let ((_%lp-hd202166202222%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e202165202218%_)))
                                (_%lp-tl202167202225%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e202165202218%_))))
                            (_%loop202164202208%_
                             _%lp-tl202167202225%_
                             (cons _%lp-hd202166202222%_
                                   _%case-signature202168202215%_))))
                        (let ((_%case-signature202169202228%_
                               (reverse _%case-signature202168202215%_)))
                          ((lambda (_%L202232%_ _%L202234%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%L202234%_))
                                 (let* ((_%signatures202265%_
                                         (map (lambda (_%g202251202253%_)
                                                (|gxc[1]#parse-signature|
                                                 _%stx202148%_
                                                 _%L202234%_
                                                 _%g202251202253%_))
                                              (let ((__tmp204210
                                                     (lambda (_%g202256202259%_
                                                              _%g202257202262%_)
                                                       (cons _%g202256202259%_
                                                             _%g202257202262%_))))
                                                (declare (not safe))
                                                (__foldr1
                                                 __tmp204210
                                                 '()
                                                 _%L202232%_))))
                                        (_%g202268202294%_
                                         (lambda (_%g202269202290%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g202269202290%_))))
                                        (_%g202267203054%_
                                         (lambda (_%g202269202298%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair/null?
                                                  _%g202269202298%_))
                                               (let ((_g204211_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-split-splice
                                                         _%g202269202298%_
                                                         '0))))
                                                 (begin
                                                   (let ((_g204212_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g204211_)
                        (##vector-length _g204211_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g204212_ 2)))
                 (error "Context expects 2 values" _g204212_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%target202272202301%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g204211_
                                                             0)))
                                                         (_%tl202274202304%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g204211_
                                                             1))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202274202304%_))
                                                         (letrec ((_%loop202275202307%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%hd202273202311%_
                                    _%sig202279202314%_
                                    _%arity202280202316%_)
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd202273202311%_))
                                 (let ((_%e202276202319%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd202273202311%_))))
                                   (let ((_%lp-hd202277202323%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e202276202319%_)))
                                         (_%lp-tl202278202326%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e202276202319%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair?
                                            _%lp-hd202277202323%_))
                                         (let ((_%e202283202329%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#syntax-e
                                                   _%lp-hd202277202323%_))))
                                           (let ((_%hd202284202333%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%e202283202329%_)))
                                                 (_%tl202285202336%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%e202283202329%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl202285202336%_))
                                                 (let ((_%e202286202339%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl202285202336%_))))
                                                   (let ((_%hd202287202343%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202286202339%_)))
                                                         (_%tl202288202346%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202286202339%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202288202346%_))
                                                         (_%loop202275202307%_
                                                          _%lp-tl202278202326%_
                                                          (cons _%hd202287202343%_
                                                                _%sig202279202314%_)
                                                          (cons _%hd202284202333%_
                                                                _%arity202280202316%_))
                                                         (_%g202268202294%_
                                                          _%g202269202298%_))))
                                                 (_%g202268202294%_
                                                  _%g202269202298%_))))
                                         (_%g202268202294%_
                                          _%g202269202298%_))))
                                 (let ((_%sig202281202349%_
                                        (reverse _%sig202279202314%_))
                                       (_%arity202282202352%_
                                        (reverse _%arity202280202316%_)))
                                   ((lambda (_%L202355%_ _%L202357%_)
                                      (let* ((_%g202374202382%_
                                              (lambda (_%g202375202378%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g202375202378%_))))
                                             (_%g202373203039%_
                                              (lambda (_%g202375202386%_)
                                                ((lambda (_%L202389%_)
                                                   (let* ((_%g202402202410%_
                                                           (lambda (_%g202403202406%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%g202403202406%_))))
                  (_%g202401202432%_
                   (lambda (_%g202403202414%_)
                     ((lambda (_%L202417%_)
                        (cons (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f 'begin))
                              (cons _%L202389%_ (cons _%L202417%_ '()))))
                      _%g202403202414%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202401202432%_
                                                      (let ((_g204213_
                                                             (let _%loop202436%_ ((_%rest202439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                           _%signatures202265%_)
                                          (_%unchecked-proc202441%_ '#f)
                                          (_%unchecked-clauses202442%_ '()))
                       (let* ((_%rest202443202451%_ _%rest202439%_)
                              (_%else202445202463%_
                               (lambda ()
                                 (values _%unchecked-proc202441%_
                                         (reverse!
                                          _%unchecked-clauses202442%_))))
                              (_%K202447202904%_
                               (lambda (_%rest202467%_ _%hd202469%_)
                                 (let* ((_%g202471202558%_
                                         (lambda (_%g202472202554%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g202472202554%_))))
                                        (_%g202470202900%_
                                         (lambda (_%g202472202562%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%g202472202562%_))
                                               (let ((_%e202479202565%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%g202472202562%_))))
                                                 (let ((_%hd202480202569%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e202479202565%_)))
                                                       (_%tl202481202572%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e202479202565%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%tl202481202572%_))
                                                       (let ((_%e202482202575%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-e _%tl202481202572%_))))
                 (let ((_%hd202483202579%_
                        (let ()
                          (declare (not safe))
                          (##car _%e202482202575%_)))
                       (_%tl202484202582%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%e202482202575%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%hd202483202579%_))
                       (let ((_%e202485202585%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%hd202483202579%_))))
                         (let ((_%hd202486202589%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e202485202585%_)))
                               (_%tl202487202592%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e202485202585%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%tl202487202592%_))
                               (let ((_%e202488202595%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%tl202487202592%_))))
                                 (let ((_%hd202489202599%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e202488202595%_)))
                                       (_%tl202490202602%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e202488202595%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-datum? _%hd202489202599%_))
                                       (let ((_%e202491202605%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%hd202489202599%_))))
                                         (if (equal? _%e202491202605%_
                                                     'arguments:)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl202490202602%_))
                                                 (let ((_%e202492202609%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl202490202602%_))))
                                                   (let ((_%hd202493202613%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202492202609%_)))
                                                         (_%tl202494202616%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202492202609%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%hd202493202613%_))
                                                         (let ((_%e202495202619%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#syntax-e _%hd202493202613%_))))
                   (let ((_%hd202496202623%_
                          (let ()
                            (declare (not safe))
                            (##car _%e202495202619%_)))
                         (_%tl202497202626%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%e202495202619%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%hd202496202623%_))
                         (if (let ((__tmp204215 |gxc[1]#_g204216_|))
                               (declare (not safe))
                               (gx#free-identifier=?
                                __tmp204215
                                _%hd202496202623%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl202497202626%_))
                                 (let ((_%e202498202629%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl202497202626%_))))
                                   (let ((_%hd202499202633%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e202498202629%_)))
                                         (_%tl202500202636%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e202498202629%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-null? _%tl202500202636%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%tl202494202616%_))
                                             (let ((_%e202501202639%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%tl202494202616%_))))
                                               (let ((_%hd202502202643%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e202501202639%_)))
                                                     (_%tl202503202646%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e202501202639%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-datum?
                                                        _%hd202502202643%_))
                                                     (let ((_%e202504202649%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%hd202502202643%_))))
                                                       (if (equal? _%e202504202649%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'return:)
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%tl202503202646%_))
                       (let ((_%e202505202653%_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-e _%tl202503202646%_))))
                         (let ((_%hd202506202657%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%e202505202653%_)))
                               (_%tl202507202660%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%e202505202653%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%hd202506202657%_))
                               (let ((_%e202508202663%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#syntax-e _%hd202506202657%_))))
                                 (let ((_%hd202509202667%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%e202508202663%_)))
                                       (_%tl202510202670%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%e202508202663%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#identifier? _%hd202509202667%_))
                                       (if (let ((__tmp204217
                                                  |gxc[1]#_g204218_|))
                                             (declare (not safe))
                                             (gx#free-identifier=?
                                              __tmp204217
                                              _%hd202509202667%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl202510202670%_))
                                               (let ((_%e202511202673%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl202510202670%_))))
                                                 (let ((_%hd202512202677%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e202511202673%_)))
                                                       (_%tl202513202680%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e202511202673%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%tl202513202680%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%tl202507202660%_))
                                                           (let ((_%e202514202683%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%tl202507202660%_))))
                     (let ((_%hd202515202687%_
                            (let ()
                              (declare (not safe))
                              (##car _%e202514202683%_)))
                           (_%tl202516202690%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e202514202683%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-datum? _%hd202515202687%_))
                           (let ((_%e202517202693%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%hd202515202687%_))))
                             (if (equal? _%e202517202693%_ 'effect:)
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%tl202516202690%_))
                                     (let ((_%e202518202697%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#syntax-e
                                               _%tl202516202690%_))))
                                       (let ((_%hd202519202701%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%e202518202697%_)))
                                             (_%tl202520202704%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%e202518202697%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%hd202519202701%_))
                                             (let ((_%e202521202707%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#syntax-e
                                                       _%hd202519202701%_))))
                                               (let ((_%hd202522202711%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e202521202707%_)))
                                                     (_%tl202523202714%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e202521202707%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#identifier?
                                                        _%hd202522202711%_))
                                                     (if (let ((__tmp204219
                                                                |gxc[1]#_g204220_|))
                                                           (declare (not safe))
                                                           (gx#free-identifier=?
                                                            __tmp204219
                                                            _%hd202522202711%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%tl202523202714%_))
                     (let ((_%e202524202717%_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-e _%tl202523202714%_))))
                       (let ((_%hd202525202721%_
                              (let ()
                                (declare (not safe))
                                (##car _%e202524202717%_)))
                             (_%tl202526202724%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%e202524202717%_))))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-null? _%tl202526202724%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%tl202520202704%_))
                                 (let ((_%e202527202727%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%tl202520202704%_))))
                                   (let ((_%hd202528202731%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e202527202727%_)))
                                         (_%tl202529202734%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e202527202727%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-datum? _%hd202528202731%_))
                                         (let ((_%e202530202737%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%hd202528202731%_))))
                                           (if (equal? _%e202530202737%_
                                                       'unchecked:)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%tl202529202734%_))
                                                   (let ((_%e202531202741%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#syntax-e
                                                             _%tl202529202734%_))))
                                                     (let ((_%hd202532202745%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%e202531202741%_)))
                                                           (_%tl202533202748%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%e202531202741%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%hd202532202745%_))
                                                           (let ((_%e202534202751%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#syntax-e _%hd202532202745%_))))
                     (let ((_%hd202535202755%_
                            (let ()
                              (declare (not safe))
                              (##car _%e202534202751%_)))
                           (_%tl202536202758%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%e202534202751%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#identifier? _%hd202535202755%_))
                           (if (let ((__tmp204221 |gxc[1]#_g204222_|))
                                 (declare (not safe))
                                 (gx#free-identifier=?
                                  __tmp204221
                                  _%hd202535202755%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%tl202536202758%_))
                                   (let ((_%e202537202761%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _%tl202536202758%_))))
                                     (let ((_%hd202538202765%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e202537202761%_)))
                                           (_%tl202539202768%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e202537202761%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _%tl202539202768%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%tl202533202748%_))
                                               (let ((_%e202540202771%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#syntax-e
                                                         _%tl202533202748%_))))
                                                 (let ((_%hd202541202775%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%e202540202771%_)))
                                                       (_%tl202542202778%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%e202540202771%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-datum?
                                                          _%hd202541202775%_))
                                                       (let ((_%e202543202781%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%hd202541202775%_))))
                 (if (equal? _%e202543202781%_ 'origin:)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%tl202542202778%_))
                         (let ((_%e202544202785%_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-e _%tl202542202778%_))))
                           (let ((_%hd202545202789%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e202544202785%_)))
                                 (_%tl202546202792%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e202544202785%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%hd202545202789%_))
                                 (let ((_%e202547202795%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-e _%hd202545202789%_))))
                                   (let ((_%hd202548202799%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e202547202795%_)))
                                         (_%tl202549202802%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e202547202795%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier? _%hd202548202799%_))
                                         (if (let ((__tmp204223
                                                    |gxc[1]#_g204224_|))
                                               (declare (not safe))
                                               (gx#free-identifier=?
                                                __tmp204223
                                                _%hd202548202799%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%tl202549202802%_))
                                                 (let ((_%e202550202805%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#syntax-e
                                                           _%tl202549202802%_))))
                                                   (let ((_%hd202551202809%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%e202550202805%_)))
                                                         (_%tl202552202812%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%e202550202805%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%tl202552202812%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-null? _%tl202546202792%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%tl202484202582%_))
                         ((lambda (_%L202815%_
                                   _%L202817%_
                                   _%L202818%_
                                   _%L202819%_
                                   _%L202820%_
                                   _%L202821%_)
                            (let ((_%clause202892%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0
                                            '#f
                                            'make-!primitive-lambda))
                                         (cons (cons (let ()
                                                       (declare (not safe))
                                                       (gx#datum->syntax__0
                                                        '#f
                                                        'quote))
                                                     (cons _%L202821%_ '()))
                                               (cons '#f
                                                     (cons 'signature:
                                                           (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (declare (not safe))
                                 (gx#datum->syntax__0 '#f 'make-!signature))
                               (cons 'return:
                                     (cons (cons (let ()
                                                   (declare (not safe))
                                                   (gx#datum->syntax__0
                                                    '#f
                                                    'quote))
                                                 (cons _%L202819%_ '()))
                                           (cons 'origin:
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L202815%_ '()))
               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%unchecked202894%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%L202817%_))))
                              (_%loop202436%_
                               _%rest202467%_
                               (let ((_%$e202896%_ _%unchecked202894%_))
                                 (if _%$e202896%_
                                     _%$e202896%_
                                     _%unchecked-proc202441%_))
                               (cons _%clause202892%_
                                     _%unchecked-clauses202442%_))))
                          _%hd202551202809%_
                          _%hd202538202765%_
                          _%hd202525202721%_
                          _%hd202512202677%_
                          _%hd202499202633%_
                          _%hd202480202569%_)
                         (_%g202471202558%_ _%g202472202562%_))
                     (_%g202471202558%_ _%g202472202562%_))
                 (_%g202471202558%_ _%g202472202562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g202471202558%_
                                                  _%g202472202562%_))
                                             (_%g202471202558%_
                                              _%g202472202562%_))
                                         (_%g202471202558%_
                                          _%g202472202562%_))))
                                 (_%g202471202558%_ _%g202472202562%_))))
                         (_%g202471202558%_ _%g202472202562%_))
                     (_%g202471202558%_ _%g202472202562%_)))
               (_%g202471202558%_ _%g202472202562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g202471202558%_
                                                _%g202472202562%_))
                                           (_%g202471202558%_
                                            _%g202472202562%_))))
                                   (_%g202471202558%_ _%g202472202562%_))
                               (_%g202471202558%_ _%g202472202562%_))
                           (_%g202471202558%_ _%g202472202562%_))))
                   (_%g202471202558%_ _%g202472202562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g202471202558%_
                                                    _%g202472202562%_))
                                               (_%g202471202558%_
                                                _%g202472202562%_)))
                                         (_%g202471202558%_
                                          _%g202472202562%_))))
                                 (_%g202471202558%_ _%g202472202562%_))
                             (_%g202471202558%_ _%g202472202562%_))))
                     (_%g202471202558%_ _%g202472202562%_))
                 (_%g202471202558%_ _%g202472202562%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202471202558%_
                                                      _%g202472202562%_))))
                                             (_%g202471202558%_
                                              _%g202472202562%_))))
                                     (_%g202471202558%_ _%g202472202562%_))
                                 (_%g202471202558%_ _%g202472202562%_)))
                           (_%g202471202558%_ _%g202472202562%_))))
                   (_%g202471202558%_ _%g202472202562%_))
               (_%g202471202558%_ _%g202472202562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g202471202558%_
                                                _%g202472202562%_))
                                           (_%g202471202558%_
                                            _%g202472202562%_))
                                       (_%g202471202558%_ _%g202472202562%_))))
                               (_%g202471202558%_ _%g202472202562%_))))
                       (_%g202471202558%_ _%g202472202562%_))
                   (_%g202471202558%_ _%g202472202562%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%g202471202558%_
                                                      _%g202472202562%_))))
                                             (_%g202471202558%_
                                              _%g202472202562%_))
                                         (_%g202471202558%_
                                          _%g202472202562%_))))
                                 (_%g202471202558%_ _%g202472202562%_))
                             (_%g202471202558%_ _%g202472202562%_))
                         (_%g202471202558%_ _%g202472202562%_))))
                 (_%g202471202558%_ _%g202472202562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g202471202558%_
                                                  _%g202472202562%_))
                                             (_%g202471202558%_
                                              _%g202472202562%_)))
                                       (_%g202471202558%_ _%g202472202562%_))))
                               (_%g202471202558%_ _%g202472202562%_))))
                       (_%g202471202558%_ _%g202472202562%_))))
               (_%g202471202558%_ _%g202472202562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g202471202558%_
                                                _%g202472202562%_)))))
                                   (_%g202470202900%_ _%hd202469%_)))))
                         (if (let ()
                               (declare (not safe))
                               (##pair? _%rest202443202451%_))
                             (let ((_%hd202448202908%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%rest202443202451%_)))
                                   (_%tl202449202911%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%rest202443202451%_))))
                               (let* ((_%hd202914%_ _%hd202448202908%_)
                                      (_%rest202917%_ _%tl202449202911%_))
                                 (_%K202447202904%_
                                  _%rest202917%_
                                  _%hd202914%_)))
                             (_%else202445202463%_))))))
                (begin
                  (let ((_g204214_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g204213_)
                               (##vector-length _g204213_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g204214_ 2)))
                        (error "Context expects 2 values" _g204214_)))
                  (let ((_%unchecked-proc202920%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g204213_ 0)))
                        (_%unchecked-clauses202922%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g204213_ 1))))
                    (if _%unchecked-proc202920%_
                        (let* ((_%g202924202948%_
                                (lambda (_%g202925202944%_)
                                  (let ()
                                    (declare (not safe))
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g202925202944%_))))
                               (_%g202923203035%_
                                (lambda (_%g202925202952%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%g202925202952%_))
                                      (let ((_%e202928202955%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _%g202925202952%_))))
                                        (let ((_%hd202929202959%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e202928202955%_)))
                                              (_%tl202930202962%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e202928202955%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl202930202962%_))
                                              (let ((_%e202931202965%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl202930202962%_))))
                                                (let ((_%hd202932202969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e202931202965%_)))
                                                      (_%tl202933202972%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e202931202965%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%hd202932202969%_))
                                                      (let ((_g204225_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _%hd202932202969%_ '0))))
                (begin
                  (let ((_g204226_
                         (let ()
                           (declare (not safe))
                           (if (##values? _g204225_)
                               (##vector-length _g204225_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g204226_ 2)))
                        (error "Context expects 2 values" _g204226_)))
                  (let ((_%target202934202975%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g204225_ 0)))
                        (_%tl202936202978%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _g204225_ 1))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%tl202936202978%_))
                        (letrec ((_%loop202937202981%_
                                  (lambda (_%hd202935202985%_
                                           _%clause202941202988%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%hd202935202985%_))
                                        (let ((_%e202938202991%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _%hd202935202985%_))))
                                          (let ((_%lp-hd202939202995%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e202938202991%_)))
                                                (_%lp-tl202940202998%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e202938202991%_))))
                                            (_%loop202937202981%_
                                             _%lp-tl202940202998%_
                                             (cons _%lp-hd202939202995%_
                                                   _%clause202941202988%_))))
                                        (let ((_%clause202942203001%_
                                               (reverse _%clause202941202988%_)))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%tl202933202972%_))
                                              ((lambda (_%L203005%_
                                                        _%L203007%_)
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'declare-type))
                                                       (cons _%L203007%_
                                                             (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (declare (not safe))
                                   (gx#datum->syntax__0
                                    '#f
                                    'make-!primitive-case-lambda))
                                 (cons (cons (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list))
                                             (let ((__tmp204227
                                                    (lambda (_%g203026203029%_
                                                             _%g203027203032%_)
                                                      (cons _%g203026203029%_
                                                            _%g203027203032%_))))
                                               (declare (not safe))
                                               (__foldr1
                                                __tmp204227
                                                '()
                                                _%L203005%_)))
                                       '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%clause202942203001%_
                                               _%hd202929202959%_)
                                              (_%g202924202948%_
                                               _%g202925202952%_)))))))
                          (_%loop202937202981%_ _%target202934202975%_ '()))
                        (_%g202924202948%_ _%g202925202952%_)))))
              (_%g202924202948%_ _%g202925202952%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%g202924202948%_
                                               _%g202925202952%_))))
                                      (_%g202924202948%_ _%g202925202952%_)))))
                          (_%g202923203035%_
                           (list _%unchecked-proc202920%_
                                 _%unchecked-clauses202922%_)))
                        '(begin))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%g202375202386%_))))
                                        (_%g202373203039%_
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type))
                                               (cons _%L202234%_
                                                     (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'make-!primitive-case-lambda))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f '@list))
                                     (begin
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-check-splice-targets
                                          _%L202355%_
                                          _%L202357%_))
                                       (let ((__tmp204228
                                              (lambda (_%g203042203046%_
                                                       _%g203043203049%_
                                                       _%g203044203051%_)
                                                (cons (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'make-!primitive-lambda))
                                                            (cons (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote))
                                (cons _%g203043203049%_ '()))
                          (cons '#f
                                (cons 'signature:
                                      (cons _%g203042203046%_ '())))))
              _%g203044203051%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (declare (not safe))
                                         (__foldr2
                                          __tmp204228
                                          '()
                                          _%L202355%_
                                          _%L202357%_))))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    _%sig202281202349%_
                                    _%arity202282202352%_))))))
                   (_%loop202275202307%_ _%target202272202301%_ '() '()))
                 (_%g202268202294%_ _%g202269202298%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g202268202294%_
                                                _%g202269202298%_)))))
                                   (_%g202267203054%_ _%signatures202265%_))
                                 (_%g202151202175%_ _%g202152202179%_)))
                           _%case-signature202169202228%_
                           _%hd202159202196%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%loop202164202208%_
                                                   _%target202161202202%_
                                                   '()))
                                                (_%g202151202175%_
                                                 _%g202152202179%_)))))
                                      (_%g202151202175%_ _%g202152202179%_))))
                              (_%g202151202175%_ _%g202152202179%_))))
                      (_%g202151202175%_ _%g202152202179%_)))))
          (_%g202150203058%_ _%stx202148%_))))
    (define |gxc[:0:]#declare-builtin-class|
      (lambda (_%$stx203066%_)
        (let* ((_%__stx204048204049%_ _%$stx203066%_)
               (_%g203072203132%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx204048204049%_)))))
          (let ((_%__kont204051204052%_
                 (lambda (_%L203354%_ _%L203356%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203356%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L203356%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L203354%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f '@list))
                           '())
                     (cons '#f
                           (cons '#f (cons '#f (cons '#t (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont204053204054%_
                 (lambda (_%L203279%_ _%L203281%_ _%L203282%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203282%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L203282%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L203281%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203279%_ '()))
                     (cons '#f
                           (cons '#f (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))))
                (_%__kont204055204056%_
                 (lambda (_%L203193%_ _%L203195%_ _%L203196%_)
                   (cons (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0
                            '#f
                            'optimizer-declare-builtin-class!))
                         (cons (cons (let ()
                                       (declare (not safe))
                                       (gx#datum->syntax__0 '#f 'quote))
                                     (cons _%L203196%_ '()))
                               (cons (cons (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0
                                              '#f
                                              'make-!class))
                                           (cons (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'class-type-id))
                                                       (cons _%L203196%_ '()))
                                                 (cons (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f 'quote))
                     (cons _%L203195%_ '()))
               (cons (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote))
                           (cons _%L203193%_ '()))
                     (cons '#f
                           (cons '#t (cons '#f (cons '#f (cons '#f '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '()))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx204048204049%_))
                (let ((_%e203076203310%_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e _%__stx204048204049%_))))
                  (let ((_%tl203078203317%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203076203310%_)))
                        (_%hd203077203314%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203076203310%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%tl203078203317%_))
                        (let ((_%e203079203320%_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _%tl203078203317%_))))
                          (let ((_%tl203081203327%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e203079203320%_)))
                                (_%hd203080203324%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e203079203320%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _%hd203080203324%_))
                                (let ((_%e203082203330%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%hd203080203324%_))))
                                  (if (equal? _%e203082203330%_ 'system:)
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _%tl203081203327%_))
                                          (let ((_%e203083203334%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-e
                                                    _%tl203081203327%_))))
                                            (let ((_%tl203085203341%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e203083203334%_)))
                                                  (_%hd203084203338%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e203083203334%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203085203341%_))
                                                  (let ((_%e203086203344%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203085203341%_))))
                                                    (let ((_%tl203088203351%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203086203344%_)))
                                                          (_%hd203087203348%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203086203344%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%tl203088203351%_))
                                                          (_%__kont204051204052%_
                                                           _%hd203087203348%_
                                                           _%hd203084203338%_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_%g203072203132%_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203072203132%_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_%g203072203132%_)))
                                      (if (equal? _%e203082203330%_ 'struct:)
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%tl203081203327%_))
                                              (let ((_%e203099203249%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-e
                                                        _%tl203081203327%_))))
                                                (let ((_%tl203101203256%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%e203099203249%_)))
                                                      (_%hd203100203253%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%e203099203249%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%tl203101203256%_))
                                                      (let ((_%e203102203259%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _%tl203101203256%_))))
                (let ((_%tl203104203266%_
                       (let () (declare (not safe)) (##cdr _%e203102203259%_)))
                      (_%hd203103203263%_
                       (let ()
                         (declare (not safe))
                         (##car _%e203102203259%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%tl203104203266%_))
                      (let ((_%e203105203269%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%tl203104203266%_))))
                        (let ((_%tl203107203276%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203105203269%_)))
                              (_%hd203106203273%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203105203269%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _%tl203107203276%_))
                              (_%__kont204053204054%_
                               _%hd203106203273%_
                               _%hd203103203263%_
                               _%hd203100203253%_)
                              (let ()
                                (declare (not safe))
                                (_%g203072203132%_)))))
                      (let () (declare (not safe)) (_%g203072203132%_)))))
              (let () (declare (not safe)) (_%g203072203132%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_%g203072203132%_)))
                                          (if (equal? _%e203082203330%_
                                                      'class:)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%tl203081203327%_))
                                                  (let ((_%e203118203163%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _%tl203081203327%_))))
                                                    (let ((_%tl203120203170%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e203118203163%_)))
                                                          (_%hd203119203167%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e203118203163%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%tl203120203170%_))
                                                          (let ((_%e203121203173%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#syntax-e _%tl203120203170%_))))
                    (let ((_%tl203123203180%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e203121203173%_)))
                          (_%hd203122203177%_
                           (let ()
                             (declare (not safe))
                             (##car _%e203121203173%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%tl203123203180%_))
                          (let ((_%e203124203183%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-e _%tl203123203180%_))))
                            (let ((_%tl203126203190%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e203124203183%_)))
                                  (_%hd203125203187%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e203124203183%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%tl203126203190%_))
                                  (_%__kont204055204056%_
                                   _%hd203125203187%_
                                   _%hd203122203177%_
                                   _%hd203119203167%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g203072203132%_)))))
                          (let () (declare (not safe)) (_%g203072203132%_)))))
                  (let () (declare (not safe)) (_%g203072203132%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g203072203132%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g203072203132%_))))))
                                (let ()
                                  (declare (not safe))
                                  (_%g203072203132%_)))))
                        (let () (declare (not safe)) (_%g203072203132%_)))))
                (let () (declare (not safe)) (_%g203072203132%_)))))))
    (define |gxc[:0:]#declare-builtin-classes|
      (lambda (_%$stx203378%_)
        (let* ((_%g203382203402%_
                (lambda (_%g203383203398%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g203383203398%_))))
               (_%g203381203473%_
                (lambda (_%g203383203406%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%g203383203406%_))
                      (let ((_%e203385203409%_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _%g203383203406%_))))
                        (let ((_%hd203386203413%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e203385203409%_)))
                              (_%tl203387203416%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e203385203409%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _%tl203387203416%_))
                              (let ((_g204229_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _%tl203387203416%_
                                        '0))))
                                (begin
                                  (let ((_g204230_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g204229_)
                                               (##vector-length _g204229_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g204230_ 2)))
                                        (error "Context expects 2 values"
                                               _g204230_)))
                                  (let ((_%target203388203419%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204229_ 0)))
                                        (_%tl203390203422%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g204229_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%tl203390203422%_))
                                        (letrec ((_%loop203391203425%_
                                                  (lambda (_%hd203389203429%_
                                                           _%decl203395203432%_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _%hd203389203429%_))
                                                        (let ((_%e203392203435%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _%hd203389203429%_))))
                  (let ((_%lp-hd203393203439%_
                         (let ()
                           (declare (not safe))
                           (##car _%e203392203435%_)))
                        (_%lp-tl203394203442%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e203392203435%_))))
                    (_%loop203391203425%_
                     _%lp-tl203394203442%_
                     (cons _%lp-hd203393203439%_ _%decl203395203432%_))))
                (let ((_%decl203396203445%_ (reverse _%decl203395203432%_)))
                  ((lambda (_%L203449%_)
                     (cons (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'begin))
                           (let ((__tmp204231
                                  (lambda (_%g203464203467%_ _%g203465203470%_)
                                    (cons (cons (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'declare-builtin-class))
                                                _%g203464203467%_)
                                          _%g203465203470%_))))
                             (declare (not safe))
                             (__foldr1 __tmp204231 '() _%L203449%_))))
                   _%decl203396203445%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%loop203391203425%_
                                           _%target203388203419%_
                                           '()))
                                        (_%g203382203402%_
                                         _%g203383203406%_)))))
                              (_%g203382203402%_ _%g203383203406%_))))
                      (_%g203382203402%_ _%g203383203406%_)))))
          (_%g203381203473%_ _%$stx203378%_))))))

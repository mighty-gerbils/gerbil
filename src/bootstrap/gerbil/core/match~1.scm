(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/match[1]#_g34271_|
    (##structure
     gx#syntax-quote::t
     'apply
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34272_|
    (##structure
     gx#syntax-quote::t
     'quasiquote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34273_|
    (##structure
     gx#syntax-quote::t
     'quote
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34276_|
    (##structure
     gx#syntax-quote::t
     'vector
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34277_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34278_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34279_|
    (##structure gx#syntax-quote::t 'box #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34280_|
    (##structure
     gx#syntax-quote::t
     '@list
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34281_|
    (##structure
     gx#syntax-quote::t
     'cons*
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34282_|
    (##structure
     gx#syntax-quote::t
     'cons
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34283_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34284_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34285_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34286_|
    (##structure gx#syntax-quote::t '? #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34287_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34288_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34297_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34304_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34305_|
    (##structure
     gx#syntax-quote::t
     '<...>
     #f
     (gx#current-expander-context)
     '()))
  (define |gerbil/core/match[1]#_g34306_|
    (##structure gx#syntax-quote::t '<> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34323_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34324_|
    (##structure gx#syntax-quote::t '=> #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34325_|
    (##structure gx#syntax-quote::t 'not #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34326_|
    (##structure gx#syntax-quote::t 'or #f (gx#current-expander-context) '()))
  (define |gerbil/core/match[1]#_g34329_|
    (##structure gx#syntax-quote::t 'and #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core/match[1]#match-macro::t|
      (make-class-type
       'gerbil/core#match-macro::t
       'match-macro
       (list gerbil/core/macro-object#macro-object::t)
       '()
       '()
       '#f))
    (define |gerbil/core/match[1]#match-macro?|
      (make-class-predicate |gerbil/core/match[1]#match-macro::t|))
    (define |gerbil/core/match[1]#make-match-macro|
      (lambda _%$args31922%_
        (apply make-instance
               |gerbil/core/match[1]#match-macro::t|
               _%$args31922%_)))
    (define |gerbil/core/match[1]#match-macro-macro|
      (make-class-slot-accessor |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#match-macro-macro-set!|
      (make-class-slot-mutator |gerbil/core/match[1]#match-macro::t| 'macro))
    (define |gerbil/core/match[1]#&match-macro-macro|
      (make-class-slot-unchecked-accessor
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#&match-macro-macro-set!|
      (make-class-slot-unchecked-mutator
       |gerbil/core/match[1]#match-macro::t|
       'macro))
    (define |gerbil/core/match[1]#syntax-local-match-macro?|
      (lambda (_%stx31919%_)
        (if (gx#identifier? _%stx31919%_)
            (|gerbil/core/match[1]#match-macro?|
             (gx#syntax-local-value _%stx31919%_ false))
            '#f)))
    (define |gerbil/core/match[1]#parse-match-pattern|
      (let ((_%$%opt-lambda3021931905%_
             (lambda (_%stx30221%_ _%match-stx30223%_)
               (letrec ((_%parse130225%_
                         (lambda (_%hd30584%_)
                           (let* ((_%$%g3061030752%_
                                   (lambda (_%$%g3061130748%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g3061130748%_)))
                                  (_%$%g3060930763%_
                                   (lambda (_%$%g3061130756%_)
                                     ((lambda ()
                                        (_%parse-error30232%_ _%hd30584%_)))))
                                  (_%$%g3060830781%_
                                   (lambda (_%$%g3061130767%_)
                                     ((lambda (_%$%g3074630770%_)
                                        (if (gx#stx-datum? _%$%g3074630770%_)
                                            (cons 'datum:
                                                  (cons (gx#stx-e
                                                         _%$%g3074630770%_)
                                                        '()))
                                            (_%$%g3060930763%_
                                             _%$%g3061130767%_)))
                                      _%$%g3061130767%_)))
                                  (_%$%g3060730797%_
                                   (lambda (_%$%g3061130785%_)
                                     ((lambda (_%$%g3074530788%_)
                                        (if (and (gx#identifier?
                                                  _%$%g3074530788%_)
                                                 (not (gx#ellipsis?
                                                       _%$%g3074530788%_)))
                                            (cons 'var:
                                                  (cons _%$%g3074530788%_ '()))
                                            (_%$%g3060830781%_
                                             _%$%g3061130785%_)))
                                      _%$%g3061130785%_)))
                                  (_%$%g3060630813%_
                                   (lambda (_%$%g3061130801%_)
                                     ((lambda (_%$%g3074430804%_)
                                        (if (gx#underscore? _%$%g3074430804%_)
                                            (cons 'any: '())
                                            (_%$%g3060730797%_
                                             _%$%g3061130801%_)))
                                      _%$%g3061130801%_)))
                                  (_%$%g3060530845%_
                                   (lambda (_%$%g3061130817%_)
                                     (if (gx#stx-pair? _%$%g3061130817%_)
                                         (let ((_%$%e3074130820%_
                                                (gx#syntax-e
                                                 _%$%g3061130817%_)))
                                           (let ((_%$%hd3074230824%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3074130820%_)))
                                                 (_%$%tl3074330827%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3074130820%_))))
                                             ((lambda (_%$%g3074030830%_)
                                                (if (|gerbil/core/match[1]#syntax-local-match-macro?|
                                                     _%$%g3074030830%_)
                                                    (_%parse130225%_
                                                     (gx#core-apply-expander
                                                      (gx#syntax-local-e
                                                       _%$%g3074030830%_)
                                                      (gx#stx-wrap-source
                                                       (cons 'match:
                                                             _%hd30584%_)
                                                       (let ((_%$e30841%_
                                                              (gx#stx-source
                                                               _%hd30584%_)))
                                                         (if _%$e30841%_
                                                             _%$e30841%_
                                                             (gx#stx-source
                                                              _%stx30221%_))))))
                                                    (_%$%g3060630813%_
                                                     _%$%g3061130817%_)))
                                              _%$%hd3074230824%_)))
                                         (_%$%g3060630813%_
                                          _%$%g3061130817%_))))
                                  (_%$%g3060430899%_
                                   (lambda (_%$%g3061130849%_)
                                     (if (gx#stx-pair? _%$%g3061130849%_)
                                         (let ((_%$%e3073130852%_
                                                (gx#syntax-e
                                                 _%$%g3061130849%_)))
                                           (let ((_%$%hd3073230856%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3073130852%_)))
                                                 (_%$%tl3073330859%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3073130852%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3073230856%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34271_|
                                                      _%$%hd3073230856%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl3073330859%_)
                                                         (let ((_%$%e3073430862%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl3073330859%_)))
                   (let ((_%$%hd3073530866%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e3073430862%_)))
                         (_%$%tl3073630869%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e3073430862%_))))
                     (if (gx#stx-pair? _%$%tl3073630869%_)
                         (let ((_%$%e3073730872%_
                                (gx#syntax-e _%$%tl3073630869%_)))
                           (let ((_%$%hd3073830876%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e3073730872%_)))
                                 (_%$%tl3073930879%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e3073730872%_))))
                             (if (gx#stx-null? _%$%tl3073930879%_)
                                 ((lambda (_%$%g3072930882%_ _%$%g3073030884%_)
                                    (cons 'apply:
                                          (cons _%$%g3073030884%_
                                                (cons (_%parse130225%_
                                                       _%$%g3072930882%_)
                                                      '()))))
                                  _%$%hd3073830876%_
                                  _%$%hd3073530866%_)
                                 (_%$%g3060530845%_ _%$%g3061130849%_))))
                         (_%$%g3060530845%_ _%$%g3061130849%_))))
                 (_%$%g3060530845%_ _%$%g3061130849%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3060530845%_
                                                      _%$%g3061130849%_))
                                                 (_%$%g3060530845%_
                                                  _%$%g3061130849%_))))
                                         (_%$%g3060530845%_
                                          _%$%g3061130849%_))))
                                  (_%$%g3060330939%_
                                   (lambda (_%$%g3061130903%_)
                                     (if (gx#stx-pair? _%$%g3061130903%_)
                                         (let ((_%$%e3072330906%_
                                                (gx#syntax-e
                                                 _%$%g3061130903%_)))
                                           (let ((_%$%hd3072430910%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3072330906%_)))
                                                 (_%$%tl3072530913%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3072330906%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3072430910%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34272_|
                                                      _%$%hd3072430910%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl3072530913%_)
                                                         (let ((_%$%e3072630916%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl3072530913%_)))
                   (let ((_%$%hd3072730920%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e3072630916%_)))
                         (_%$%tl3072830923%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e3072630916%_))))
                     (if (gx#stx-null? _%$%tl3072830923%_)
                         ((lambda (_%$%g3072230926%_)
                            (_%parse-qq30231%_ _%$%g3072230926%_))
                          _%$%hd3072730920%_)
                         (_%$%g3060430899%_ _%$%g3061130903%_))))
                 (_%$%g3060430899%_ _%$%g3061130903%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3060430899%_
                                                      _%$%g3061130903%_))
                                                 (_%$%g3060430899%_
                                                  _%$%g3061130903%_))))
                                         (_%$%g3060430899%_
                                          _%$%g3061130903%_))))
                                  (_%$%g3060230979%_
                                   (lambda (_%$%g3061130943%_)
                                     (if (gx#stx-pair? _%$%g3061130943%_)
                                         (let ((_%$%e3071630946%_
                                                (gx#syntax-e
                                                 _%$%g3061130943%_)))
                                           (let ((_%$%hd3071730950%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3071630946%_)))
                                                 (_%$%tl3071830953%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3071630946%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3071730950%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34273_|
                                                      _%$%hd3071730950%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl3071830953%_)
                                                         (let ((_%$%e3071930956%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl3071830953%_)))
                   (let ((_%$%hd3072030960%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e3071930956%_)))
                         (_%$%tl3072130963%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e3071930956%_))))
                     (if (gx#stx-null? _%$%tl3072130963%_)
                         ((lambda (_%$%g3071530966%_)
                            (cons 'datum:
                                  (cons (gx#stx-e _%$%g3071530966%_) '())))
                          _%$%hd3072030960%_)
                         (_%$%g3060330939%_ _%$%g3061130943%_))))
                 (_%$%g3060330939%_ _%$%g3061130943%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3060330939%_
                                                      _%$%g3061130943%_))
                                                 (_%$%g3060330939%_
                                                  _%$%g3061130943%_))))
                                         (_%$%g3060330939%_
                                          _%$%g3061130943%_))))
                                  (_%$%g3060131029%_
                                   (lambda (_%$%g3061130983%_)
                                     (if (gx#stx-pair? _%$%g3061130983%_)
                                         (let ((_%$%e3070930986%_
                                                (gx#syntax-e
                                                 _%$%g3061130983%_)))
                                           (let ((_%$%hd3071030990%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3070930986%_)))
                                                 (_%$%tl3071130993%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3070930986%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl3071130993%_)
                                                 (let ((_%$%e3071230996%_
                                                        (gx#syntax-e
                                                         _%$%tl3071130993%_)))
                                                   (let ((_%$%hd3071331000%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e3071230996%_)))
                                                         (_%$%tl3071431003%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e3071230996%_))))
                                                     (if (gx#stx-null?
                                                          _%$%tl3071431003%_)
                                                         ((lambda (_%$%g3070731006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g3070831008%_)
                    (if (and (gx#identifier? _%$%g3070831008%_)
                             (or (gx#free-identifier=?
                                  _%$%g3070831008%_
                                  (gx#datum->syntax '#f 'eq?))
                                 (gx#free-identifier=?
                                  _%$%g3070831008%_
                                  (gx#datum->syntax '#f 'eqv?))
                                 (gx#free-identifier=?
                                  _%$%g3070831008%_
                                  (gx#datum->syntax '#f 'equal?))))
                        (cons '?:
                              (cons (cons (gx#datum->syntax '#f 'cut)
                                          (cons _%$%g3070831008%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '<>)
                                                      (cons _%$%g3070731006%_
                                                            '()))))
                                    '()))
                        (_%$%g3060230979%_ _%$%g3061130983%_)))
                  _%$%hd3071331000%_
                  _%$%hd3071030990%_)
                 (_%$%g3060230979%_ _%$%g3061130983%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g3060230979%_
                                                  _%$%g3061130983%_))))
                                         (_%$%g3060230979%_
                                          _%$%g3061130983%_))))
                                  (_%$%g3060031059%_
                                   (lambda (_%$%g3061131033%_)
                                     (if (gx#stx-pair? _%$%g3061131033%_)
                                         (let ((_%$%e3070431036%_
                                                (gx#syntax-e
                                                 _%$%g3061131033%_)))
                                           (let ((_%$%hd3070531040%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3070431036%_)))
                                                 (_%$%tl3070631043%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3070431036%_))))
                                             ((lambda (_%$%g3070231046%_
                                                       _%$%g3070331048%_)
                                                (if (gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                                     _%$%g3070331048%_)
                                                    (cons 'class:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g3070331048%_)
                        (cons (_%parse-class-body30230%_ _%$%g3070231046%_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3060131029%_
                                                     _%$%g3061131033%_)))
                                              _%$%tl3070631043%_
                                              _%$%hd3070531040%_)))
                                         (_%$%g3060131029%_
                                          _%$%g3061131033%_))))
                                  (_%$%g3059931089%_
                                   (lambda (_%$%g3061131063%_)
                                     (if (gx#stx-pair? _%$%g3061131063%_)
                                         (let ((_%$%e3069931066%_
                                                (gx#syntax-e
                                                 _%$%g3061131063%_)))
                                           (let ((_%$%hd3070031070%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3069931066%_)))
                                                 (_%$%tl3070131073%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3069931066%_))))
                                             ((lambda (_%$%g3069731076%_
                                                       _%$%g3069831078%_)
                                                (if (gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                                     _%$%g3069831078%_
                                                     gerbil/core/mop~MOP-2#!class-type-struct?)
                                                    (cons 'struct:
                                                          (cons (gx#syntax-local-value
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g3069831078%_)
                        (cons (_%parse-vector30228%_ _%$%g3069731076%_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3060031059%_
                                                     _%$%g3061131063%_)))
                                              _%$%tl3070131073%_
                                              _%$%hd3070031070%_)))
                                         (_%$%g3060031059%_
                                          _%$%g3061131063%_))))
                                  (_%$%g3059831150%_
                                   (lambda (_%$%g3061131093%_)
                                     (if (gx#stx-vector? _%$%g3061131093%_)
                                         (let ((_%$%e3068731096%_
                                                (vector->list
                                                 (gx#syntax-e
                                                  _%$%g3061131093%_))))
                                           (if (gx#stx-pair/null?
                                                _%$%e3068731096%_)
                                               (let ((_g34274_
                                                      (gx#syntax-split-splice
                                                       _%$%e3068731096%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g34275_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34274_)
                        (##values-length _g34274_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g34275_ 2)))
                 (error "Context expects 2 values" _g34275_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target3068831100%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g34274_
                                                             0)))
                                                         (_%$%tl3069031103%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g34274_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl3069031103%_)
                                                         (letrec ((_%$%loop3069131106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd3068931110%_ _%$%body3069531113%_)
                             (if (gx#stx-pair? _%$%hd3068931110%_)
                                 (let ((_%$%e3069231115%_
                                        (gx#syntax-e _%$%hd3068931110%_)))
                                   (let ((_%$%lp-hd3069331119%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e3069231115%_)))
                                         (_%$%lp-tl3069431122%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e3069231115%_))))
                                     (_%$%loop3069131106%_
                                      _%$%lp-tl3069431122%_
                                      (cons _%$%lp-hd3069331119%_
                                            _%$%body3069531113%_))))
                                 (let ((_%$%body3069631125%_
                                        (reverse _%$%body3069531113%_)))
                                   ((lambda (_%$%g3068631128%_)
                                      (cons 'vector:
                                            (cons (_%parse-vector30228%_
                                                   (foldr (lambda (_%$%g3114131144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g3114231147%_)
                    (cons _%$%g3114131144%_ _%$%g3114231147%_))
                  '()
                  _%$%g3068631128%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())))
                                    _%$%body3069631125%_))))))
                   (_%$%loop3069131106%_ _%$%target3068831100%_ '()))
                 (_%$%g3059931089%_ _%$%g3061131093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g3059931089%_
                                                _%$%g3061131093%_)))
                                         (_%$%g3059931089%_
                                          _%$%g3061131093%_))))
                                  (_%$%g3059731178%_
                                   (lambda (_%$%g3061131154%_)
                                     (if (gx#stx-pair? _%$%g3061131154%_)
                                         (let ((_%$%e3068331157%_
                                                (gx#syntax-e
                                                 _%$%g3061131154%_)))
                                           (let ((_%$%hd3068431161%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3068331157%_)))
                                                 (_%$%tl3068531164%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3068331157%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3068431161%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34276_|
                                                      _%$%hd3068431161%_)
                                                     ((lambda (_%$%g3068231167%_)
                                                        (cons 'vector:
                                                              (cons (_%parse-vector30228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g3068231167%_)
                            '())))
              _%$%tl3068531164%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3059831150%_
                                                      _%$%g3061131154%_))
                                                 (_%$%g3059831150%_
                                                  _%$%g3061131154%_))))
                                         (_%$%g3059831150%_
                                          _%$%g3061131154%_))))
                                  (_%$%g3059631206%_
                                   (lambda (_%$%g3061131182%_)
                                     (if (gx#stx-pair? _%$%g3061131182%_)
                                         (let ((_%$%e3067931185%_
                                                (gx#syntax-e
                                                 _%$%g3061131182%_)))
                                           (let ((_%$%hd3068031189%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3067931185%_)))
                                                 (_%$%tl3068131192%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3067931185%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3068031189%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34277_|
                                                      _%$%hd3068031189%_)
                                                     ((lambda (_%$%g3067831195%_)
                                                        (cons 'values:
                                                              (cons (_%parse-vector30228%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g3067831195%_)
                            '())))
              _%$%tl3068131192%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3059731178%_
                                                      _%$%g3061131182%_))
                                                 (_%$%g3059731178%_
                                                  _%$%g3061131182%_))))
                                         (_%$%g3059731178%_
                                          _%$%g3061131182%_))))
                                  (_%$%g3059531246%_
                                   (lambda (_%$%g3061131210%_)
                                     (if (gx#stx-pair? _%$%g3061131210%_)
                                         (let ((_%$%e3067231213%_
                                                (gx#syntax-e
                                                 _%$%g3061131210%_)))
                                           (let ((_%$%hd3067331217%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3067231213%_)))
                                                 (_%$%tl3067431220%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3067231213%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3067331217%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34278_|
                                                      _%$%hd3067331217%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl3067431220%_)
                                                         (let ((_%$%e3067531223%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl3067431220%_)))
                   (let ((_%$%hd3067631227%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e3067531223%_)))
                         (_%$%tl3067731230%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e3067531223%_))))
                     (if (gx#stx-null? _%$%tl3067731230%_)
                         ((lambda (_%$%g3067131233%_)
                            (_%parse130225%_ _%$%g3067131233%_))
                          _%$%hd3067631227%_)
                         (_%$%g3059631206%_ _%$%g3061131210%_))))
                 (_%$%g3059631206%_ _%$%g3061131210%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3059631206%_
                                                      _%$%g3061131210%_))
                                                 (_%$%g3059631206%_
                                                  _%$%g3061131210%_))))
                                         (_%$%g3059631206%_
                                          _%$%g3061131210%_))))
                                  (_%$%g3059431267%_
                                   (lambda (_%$%g3061131250%_)
                                     (if (gx#stx-box? _%$%g3061131250%_)
                                         (let ((_%$%e3067031253%_
                                                (unbox (gx#syntax-e
                                                        _%$%g3061131250%_))))
                                           ((lambda (_%$%g3066931257%_)
                                              (cons 'box:
                                                    (cons (_%parse130225%_
                                                           _%$%g3066931257%_)
                                                          '())))
                                            _%$%e3067031253%_))
                                         (_%$%g3059531246%_
                                          _%$%g3061131250%_))))
                                  (_%$%g3059331307%_
                                   (lambda (_%$%g3061131271%_)
                                     (if (gx#stx-pair? _%$%g3061131271%_)
                                         (let ((_%$%e3066331274%_
                                                (gx#syntax-e
                                                 _%$%g3061131271%_)))
                                           (let ((_%$%hd3066431278%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3066331274%_)))
                                                 (_%$%tl3066531281%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3066331274%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3066431278%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34279_|
                                                      _%$%hd3066431278%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl3066531281%_)
                                                         (let ((_%$%e3066631284%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl3066531281%_)))
                   (let ((_%$%hd3066731288%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e3066631284%_)))
                         (_%$%tl3066831291%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e3066631284%_))))
                     (if (gx#stx-null? _%$%tl3066831291%_)
                         ((lambda (_%$%g3066231294%_)
                            (cons 'box:
                                  (cons (_%parse130225%_ _%$%g3066231294%_)
                                        '())))
                          _%$%hd3066731288%_)
                         (_%$%g3059431267%_ _%$%g3061131271%_))))
                 (_%$%g3059431267%_ _%$%g3061131271%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3059431267%_
                                                      _%$%g3061131271%_))
                                                 (_%$%g3059431267%_
                                                  _%$%g3061131271%_))))
                                         (_%$%g3059431267%_
                                          _%$%g3061131271%_))))
                                  (_%$%g3059231335%_
                                   (lambda (_%$%g3061131311%_)
                                     (if (gx#stx-pair? _%$%g3061131311%_)
                                         (let ((_%$%e3065931314%_
                                                (gx#syntax-e
                                                 _%$%g3061131311%_)))
                                           (let ((_%$%hd3066031318%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3065931314%_)))
                                                 (_%$%tl3066131321%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3065931314%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3066031318%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34280_|
                                                      _%$%hd3066031318%_)
                                                     ((lambda (_%$%g3065831324%_)
                                                        (_%parse-list30227%_
                                                         _%$%g3065831324%_))
                                                      _%$%tl3066131321%_)
                                                     (_%$%g3059331307%_
                                                      _%$%g3061131311%_))
                                                 (_%$%g3059331307%_
                                                  _%$%g3061131311%_))))
                                         (_%$%g3059331307%_
                                          _%$%g3061131311%_))))
                                  (_%$%g3059131391%_
                                   (lambda (_%$%g3061131339%_)
                                     (if (gx#stx-pair? _%$%g3061131339%_)
                                         (let ((_%$%e3064931342%_
                                                (gx#syntax-e
                                                 _%$%g3061131339%_)))
                                           (let ((_%$%hd3065031346%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3064931342%_)))
                                                 (_%$%tl3065131349%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3064931342%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3065031346%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34281_|
                                                      _%$%hd3065031346%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl3065131349%_)
                                                         (let ((_%$%e3065231352%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl3065131349%_)))
                   (let ((_%$%hd3065331356%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e3065231352%_)))
                         (_%$%tl3065431359%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e3065231352%_))))
                     (if (gx#stx-pair? _%$%tl3065431359%_)
                         (let ((_%$%e3065531362%_
                                (gx#syntax-e _%$%tl3065431359%_)))
                           (let ((_%$%hd3065631366%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e3065531362%_)))
                                 (_%$%tl3065731369%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e3065531362%_))))
                             ((lambda (_%$%g3064631372%_
                                       _%$%g3064731374%_
                                       _%$%g3064831375%_)
                                (if (gx#stx-null? _%$%g3064631372%_)
                                    (cons 'cons:
                                          (cons (_%parse130225%_
                                                 _%$%g3064831375%_)
                                                (cons (_%parse130225%_
                                                       _%$%g3064731374%_)
                                                      '())))
                                    (cons 'cons:
                                          (cons (_%parse130225%_
                                                 _%$%g3064831375%_)
                                                (cons (_%parse130225%_
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'cons*)
                                                             (cons _%$%g3064731374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g3064631372%_)))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%$%tl3065731369%_
                              _%$%hd3065631366%_
                              _%$%hd3065331356%_)))
                         (_%$%g3059231335%_ _%$%g3061131339%_))))
                 (_%$%g3059231335%_ _%$%g3061131339%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3059231335%_
                                                      _%$%g3061131339%_))
                                                 (_%$%g3059231335%_
                                                  _%$%g3061131339%_))))
                                         (_%$%g3059231335%_
                                          _%$%g3061131339%_))))
                                  (_%$%g3059031445%_
                                   (lambda (_%$%g3061131395%_)
                                     (if (gx#stx-pair? _%$%g3061131395%_)
                                         (let ((_%$%e3063731398%_
                                                (gx#syntax-e
                                                 _%$%g3061131395%_)))
                                           (let ((_%$%hd3063831402%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3063731398%_)))
                                                 (_%$%tl3063931405%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3063731398%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3063831402%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34282_|
                                                      _%$%hd3063831402%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl3063931405%_)
                                                         (let ((_%$%e3064031408%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl3063931405%_)))
                   (let ((_%$%hd3064131412%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e3064031408%_)))
                         (_%$%tl3064231415%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e3064031408%_))))
                     (if (gx#stx-pair? _%$%tl3064231415%_)
                         (let ((_%$%e3064331418%_
                                (gx#syntax-e _%$%tl3064231415%_)))
                           (let ((_%$%hd3064431422%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e3064331418%_)))
                                 (_%$%tl3064531425%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e3064331418%_))))
                             (if (gx#stx-null? _%$%tl3064531425%_)
                                 ((lambda (_%$%g3063531428%_ _%$%g3063631430%_)
                                    (cons 'cons:
                                          (cons (_%parse130225%_
                                                 _%$%g3063631430%_)
                                                (cons (_%parse130225%_
                                                       _%$%g3063531428%_)
                                                      '()))))
                                  _%$%hd3064431422%_
                                  _%$%hd3064131412%_)
                                 (_%$%g3059131391%_ _%$%g3061131395%_))))
                         (_%$%g3059131391%_ _%$%g3061131395%_))))
                 (_%$%g3059131391%_ _%$%g3061131395%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3059131391%_
                                                      _%$%g3061131395%_))
                                                 (_%$%g3059131391%_
                                                  _%$%g3061131395%_))))
                                         (_%$%g3059131391%_
                                          _%$%g3061131395%_))))
                                  (_%$%g3058931485%_
                                   (lambda (_%$%g3061131449%_)
                                     (if (gx#stx-pair? _%$%g3061131449%_)
                                         (let ((_%$%e3062931452%_
                                                (gx#syntax-e
                                                 _%$%g3061131449%_)))
                                           (let ((_%$%hd3063031456%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3062931452%_)))
                                                 (_%$%tl3063131459%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3062931452%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3063031456%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34283_|
                                                      _%$%hd3063031456%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl3063131459%_)
                                                         (let ((_%$%e3063231462%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl3063131459%_)))
                   (let ((_%$%hd3063331466%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e3063231462%_)))
                         (_%$%tl3063431469%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e3063231462%_))))
                     (if (gx#stx-null? _%$%tl3063431469%_)
                         ((lambda (_%$%g3062831472%_)
                            (cons 'not:
                                  (cons (_%parse130225%_ _%$%g3062831472%_)
                                        '())))
                          _%$%hd3063331466%_)
                         (_%$%g3059031445%_ _%$%g3061131449%_))))
                 (_%$%g3059031445%_ _%$%g3061131449%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3059031445%_
                                                      _%$%g3061131449%_))
                                                 (_%$%g3059031445%_
                                                  _%$%g3061131449%_))))
                                         (_%$%g3059031445%_
                                          _%$%g3061131449%_))))
                                  (_%$%g3058831570%_
                                   (lambda (_%$%g3061131489%_)
                                     (if (gx#stx-pair? _%$%g3061131489%_)
                                         (let ((_%$%e3062531492%_
                                                (gx#syntax-e
                                                 _%$%g3061131489%_)))
                                           (let ((_%$%hd3062631496%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3062531492%_)))
                                                 (_%$%tl3062731499%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3062531492%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3062631496%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34284_|
                                                      _%$%hd3062631496%_)
                                                     ((lambda (_%$%g3062431502%_)
                                                        (if (gx#stx-list?
                                                             _%$%g3062431502%_)
                                                            (let* ((_%$%g3151431525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g3151531521%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3151531521%_)))
                           (_%$%g3151331536%_
                            (lambda (_%$%g3151531529%_)
                              ((lambda ()
                                 (cons 'or:
                                       (gx#stx-map
                                        _%parse130225%_
                                        _%$%g3062431502%_))))))
                           (_%$%g3151231566%_
                            (lambda (_%$%g3151531540%_)
                              (if (gx#stx-pair? _%$%g3151531540%_)
                                  (let ((_%$%e3151731543%_
                                         (gx#syntax-e _%$%g3151531540%_)))
                                    (let ((_%$%hd3151831547%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3151731543%_)))
                                          (_%$%tl3151931550%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3151731543%_))))
                                      (if (gx#stx-null? _%$%tl3151931550%_)
                                          ((lambda (_%$%g3151631553%_)
                                             (_%parse130225%_
                                              _%$%g3151631553%_))
                                           _%$%hd3151831547%_)
                                          (_%$%g3151331536%_
                                           _%$%g3151531540%_))))
                                  (_%$%g3151331536%_ _%$%g3151531540%_)))))
                      (_%$%g3151231566%_ _%$%g3062431502%_))
                    (_%$%g3058931485%_ _%$%g3061131489%_)))
              _%$%tl3062731499%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3058931485%_
                                                      _%$%g3061131489%_))
                                                 (_%$%g3058931485%_
                                                  _%$%g3061131489%_))))
                                         (_%$%g3058931485%_
                                          _%$%g3061131489%_))))
                                  (_%$%g3058731655%_
                                   (lambda (_%$%g3061131574%_)
                                     (if (gx#stx-pair? _%$%g3061131574%_)
                                         (let ((_%$%e3062131577%_
                                                (gx#syntax-e
                                                 _%$%g3061131574%_)))
                                           (let ((_%$%hd3062231581%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3062131577%_)))
                                                 (_%$%tl3062331584%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3062131577%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3062231581%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34285_|
                                                      _%$%hd3062231581%_)
                                                     ((lambda (_%$%g3062031587%_)
                                                        (if (gx#stx-list?
                                                             _%$%g3062031587%_)
                                                            (let* ((_%$%g3159931610%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g3160031606%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g3160031606%_)))
                           (_%$%g3159831621%_
                            (lambda (_%$%g3160031614%_)
                              ((lambda ()
                                 (cons 'and:
                                       (gx#stx-map
                                        _%parse130225%_
                                        _%$%g3062031587%_))))))
                           (_%$%g3159731651%_
                            (lambda (_%$%g3160031625%_)
                              (if (gx#stx-pair? _%$%g3160031625%_)
                                  (let ((_%$%e3160231628%_
                                         (gx#syntax-e _%$%g3160031625%_)))
                                    (let ((_%$%hd3160331632%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e3160231628%_)))
                                          (_%$%tl3160431635%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e3160231628%_))))
                                      (if (gx#stx-null? _%$%tl3160431635%_)
                                          ((lambda (_%$%g3160131638%_)
                                             (_%parse130225%_
                                              _%$%g3160131638%_))
                                           _%$%hd3160331632%_)
                                          (_%$%g3159831621%_
                                           _%$%g3160031625%_))))
                                  (_%$%g3159831621%_ _%$%g3160031625%_)))))
                      (_%$%g3159731651%_ _%$%g3062031587%_))
                    (_%$%g3058831570%_ _%$%g3061131574%_)))
              _%$%tl3062331584%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3058831570%_
                                                      _%$%g3061131574%_))
                                                 (_%$%g3058831570%_
                                                  _%$%g3061131574%_))))
                                         (_%$%g3058831570%_
                                          _%$%g3061131574%_))))
                                  (_%$%g3058631901%_
                                   (lambda (_%$%g3061131659%_)
                                     (if (gx#stx-pair? _%$%g3061131659%_)
                                         (let ((_%$%e3061431662%_
                                                (gx#syntax-e
                                                 _%$%g3061131659%_)))
                                           (let ((_%$%hd3061531666%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3061431662%_)))
                                                 (_%$%tl3061631669%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3061431662%_))))
                                             (if (gx#identifier?
                                                  _%$%hd3061531666%_)
                                                 (if (gx#free-identifier=?
                                                      |gerbil/core/match[1]#_g34286_|
                                                      _%$%hd3061531666%_)
                                                     (if (gx#stx-pair?
                                                          _%$%tl3061631669%_)
                                                         (let ((_%$%e3061731672%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%tl3061631669%_)))
                   (let ((_%$%hd3061831676%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e3061731672%_)))
                         (_%$%tl3061931679%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e3061731672%_))))
                     ((lambda (_%$%g3061231682%_ _%$%g3061331684%_)
                        (let* ((_%$%g3170131734%_
                                (lambda (_%$%g3170231730%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g3170231730%_)))
                               (_%$%g3170031745%_
                                (lambda (_%$%g3170231738%_)
                                  ((lambda ()
                                     (_%parse-error30232%_ _%hd30584%_)))))
                               (_%$%g3169931818%_
                                (lambda (_%$%g3170231749%_)
                                  (if (gx#stx-pair? _%$%g3170231749%_)
                                      (let ((_%$%e3171631752%_
                                             (gx#syntax-e _%$%g3170231749%_)))
                                        (let ((_%$%hd3171731756%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3171631752%_)))
                                              (_%$%tl3171831759%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3171631752%_))))
                                          (if (gx#stx-datum?
                                               _%$%hd3171731756%_)
                                              (let ((_%$%e3171931762%_
                                                     (gx#stx-e
                                                      _%$%hd3171731756%_)))
                                                (if (equal? _%$%e3171931762%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%$%tl3171831759%_)
                                                        (let ((_%$%e3172031766%_
                                                               (gx#syntax-e
                                                                _%$%tl3171831759%_)))
                                                          (let ((_%$%hd3172131770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3172031766%_)))
                        (_%$%tl3172231773%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3172031766%_))))
                    (if (gx#stx-pair? _%$%tl3172231773%_)
                        (let ((_%$%e3172331776%_
                               (gx#syntax-e _%$%tl3172231773%_)))
                          (let ((_%$%hd3172431780%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3172331776%_)))
                                (_%$%tl3172531783%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3172331776%_))))
                            (if (gx#identifier? _%$%hd3172431780%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g34287_|
                                     _%$%hd3172431780%_)
                                    (if (gx#stx-pair? _%$%tl3172531783%_)
                                        (let ((_%$%e3172631786%_
                                               (gx#syntax-e
                                                _%$%tl3172531783%_)))
                                          (let ((_%$%hd3172731790%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3172631786%_)))
                                                (_%$%tl3172831793%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3172631786%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl3172831793%_)
                                                ((lambda (_%$%g3171431796%_
                                                          _%$%g3171531798%_)
                                                   (cons '?:
                                                         (cons _%$%g3061331684%_
                                                               (cons '::
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _%$%g3171531798%_
                                   (cons '=>:
                                         (cons (_%parse130225%_
                                                _%$%g3171431796%_)
                                               '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%hd3172731790%_
                                                 _%$%hd3172131770%_)
                                                (_%$%g3170031745%_
                                                 _%$%g3170231749%_))))
                                        (_%$%g3170031745%_ _%$%g3170231749%_))
                                    (_%$%g3170031745%_ _%$%g3170231749%_))
                                (_%$%g3170031745%_ _%$%g3170231749%_))))
                        (_%$%g3170031745%_ _%$%g3170231749%_))))
                (_%$%g3170031745%_ _%$%g3170231749%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3170031745%_
                                                     _%$%g3170231749%_)))
                                              (_%$%g3170031745%_
                                               _%$%g3170231749%_))))
                                      (_%$%g3170031745%_ _%$%g3170231749%_))))
                               (_%$%g3169831858%_
                                (lambda (_%$%g3170231822%_)
                                  (if (gx#stx-pair? _%$%g3170231822%_)
                                      (let ((_%$%e3170831825%_
                                             (gx#syntax-e _%$%g3170231822%_)))
                                        (let ((_%$%hd3170931829%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3170831825%_)))
                                              (_%$%tl3171031832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3170831825%_))))
                                          (if (gx#identifier?
                                               _%$%hd3170931829%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g34288_|
                                                   _%$%hd3170931829%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl3171031832%_)
                                                      (let ((_%$%e3171131835%_
                                                             (gx#syntax-e
                                                              _%$%tl3171031832%_)))
                                                        (let ((_%$%hd3171231839%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e3171131835%_)))
                      (_%$%tl3171331842%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e3171131835%_))))
                  (if (gx#stx-null? _%$%tl3171331842%_)
                      ((lambda (_%$%g3170731845%_)
                         (cons '?:
                               (cons _%$%g3061331684%_
                                     (cons '=>:
                                           (cons (_%parse130225%_
                                                  _%$%g3170731845%_)
                                                 '())))))
                       _%$%hd3171231839%_)
                      (_%$%g3169931818%_ _%$%g3170231822%_))))
              (_%$%g3169931818%_ _%$%g3170231822%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g3169931818%_
                                                   _%$%g3170231822%_))
                                              (_%$%g3169931818%_
                                               _%$%g3170231822%_))))
                                      (_%$%g3169931818%_ _%$%g3170231822%_))))
                               (_%$%g3169731886%_
                                (lambda (_%$%g3170231862%_)
                                  (if (gx#stx-pair? _%$%g3170231862%_)
                                      (let ((_%$%e3170431865%_
                                             (gx#syntax-e _%$%g3170231862%_)))
                                        (let ((_%$%hd3170531869%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3170431865%_)))
                                              (_%$%tl3170631872%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3170431865%_))))
                                          (if (gx#stx-null? _%$%tl3170631872%_)
                                              ((lambda (_%$%g3170331875%_)
                                                 (cons '?:
                                                       (cons _%$%g3061331684%_
                                                             (cons (_%parse130225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g3170331875%_)
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd3170531869%_)
                                              (_%$%g3169831858%_
                                               _%$%g3170231862%_))))
                                      (_%$%g3169831858%_ _%$%g3170231862%_))))
                               (_%$%g3169631897%_
                                (lambda (_%$%g3170231890%_)
                                  (if (gx#stx-null? _%$%g3170231890%_)
                                      ((lambda ()
                                         (cons '?:
                                               (cons _%$%g3061331684%_ '()))))
                                      (_%$%g3169731886%_ _%$%g3170231890%_)))))
                          (_%$%g3169631897%_ _%$%g3061231682%_)))
                      _%$%tl3061931679%_
                      _%$%hd3061831676%_)))
                 (_%$%g3058731655%_ _%$%g3061131659%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3058731655%_
                                                      _%$%g3061131659%_))
                                                 (_%$%g3058731655%_
                                                  _%$%g3061131659%_))))
                                         (_%$%g3058731655%_
                                          _%$%g3061131659%_)))))
                             (_%$%g3058631901%_ _%hd30584%_))))
                        (_%parse-list30227%_
                         (lambda (_%body30407%_)
                           (let* ((_%$%g3041330442%_
                                   (lambda (_%$%g3041430438%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g3041430438%_)))
                                  (_%$%g3041230459%_
                                   (lambda (_%$%g3041430446%_)
                                     ((lambda ()
                                        (if (gx#stx-null? _%body30407%_)
                                            (cons 'null: '())
                                            (if (not (gx#stx-pair?
                                                      _%body30407%_))
                                                (_%parse130225%_ _%body30407%_)
                                                (_%parse-error30232%_
                                                 _%body30407%_)))))))
                                  (_%$%g3041130491%_
                                   (lambda (_%$%g3041430463%_)
                                     (if (gx#stx-pair? _%$%g3041430463%_)
                                         (let ((_%$%e3043430466%_
                                                (gx#syntax-e
                                                 _%$%g3041430463%_)))
                                           (let ((_%$%hd3043530470%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3043430466%_)))
                                                 (_%$%tl3043630473%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3043430466%_))))
                                             ((lambda (_%$%g3043230476%_
                                                       _%$%g3043330478%_)
                                                (if (not (gx#ellipsis?
                                                          _%$%g3043330478%_))
                                                    (cons 'cons:
                                                          (cons (_%parse130225%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g3043330478%_)
                        (cons (_%parse-list30227%_ _%$%g3043230476%_) '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3041230459%_
                                                     _%$%g3041430463%_)))
                                              _%$%tl3043630473%_
                                              _%$%hd3043530470%_)))
                                         (_%$%g3041230459%_
                                          _%$%g3041430463%_))))
                                  (_%$%g3041030535%_
                                   (lambda (_%$%g3041430495%_)
                                     (if (gx#stx-pair? _%$%g3041430495%_)
                                         (let ((_%$%e3042630498%_
                                                (gx#syntax-e
                                                 _%$%g3041430495%_)))
                                           (let ((_%$%hd3042730502%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3042630498%_)))
                                                 (_%$%tl3042830505%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3042630498%_))))
                                             (if (gx#stx-pair?
                                                  _%$%tl3042830505%_)
                                                 (let ((_%$%e3042930508%_
                                                        (gx#syntax-e
                                                         _%$%tl3042830505%_)))
                                                   (let ((_%$%hd3043030512%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e3042930508%_)))
                                                         (_%$%tl3043130515%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e3042930508%_))))
                                                     ((lambda (_%$%g3042330518%_
                                                               _%$%g3042430520%_
                                                               _%$%g3042530521%_)
                                                        (if (gx#ellipsis?
                                                             _%$%g3042430520%_)
                                                            (cons 'splice:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (_%parse130225%_ _%$%g3042530521%_)
                                (cons (_%parse-list30227%_ _%$%g3042330518%_)
                                      '())))
                    (_%$%g3041130491%_ _%$%g3041430495%_)))
              _%$%tl3043130515%_
              _%$%hd3043030512%_
              _%$%hd3042730502%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g3041130491%_
                                                  _%$%g3041430495%_))))
                                         (_%$%g3041130491%_
                                          _%$%g3041430495%_))))
                                  (_%$%g3040930580%_
                                   (lambda (_%$%g3041430539%_)
                                     (if (gx#stx-pair? _%$%g3041430539%_)
                                         (let ((_%$%e3041630542%_
                                                (gx#syntax-e
                                                 _%$%g3041430539%_)))
                                           (let ((_%$%hd3041730546%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3041630542%_)))
                                                 (_%$%tl3041830549%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3041630542%_))))
                                             (if (gx#stx-datum?
                                                  _%$%hd3041730546%_)
                                                 (let ((_%$%e3041930552%_
                                                        (gx#stx-e
                                                         _%$%hd3041730546%_)))
                                                   (if (equal? _%$%e3041930552%_
                                                               '::)
                                                       (if (gx#stx-pair?
                                                            _%$%tl3041830549%_)
                                                           (let ((_%$%e3042030556%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl3041830549%_)))
                     (let ((_%$%hd3042130560%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e3042030556%_)))
                           (_%$%tl3042230563%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e3042030556%_))))
                       (if (gx#stx-null? _%$%tl3042230563%_)
                           ((lambda (_%$%g3041530566%_)
                              (_%parse130225%_ _%$%g3041530566%_))
                            _%$%hd3042130560%_)
                           (_%$%g3041030535%_ _%$%g3041430539%_))))
                   (_%$%g3041030535%_ _%$%g3041430539%_))
               (_%$%g3041030535%_ _%$%g3041430539%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g3041030535%_
                                                  _%$%g3041430539%_))))
                                         (_%$%g3041030535%_
                                          _%$%g3041430539%_)))))
                             (_%$%g3040930580%_ _%body30407%_))))
                        (_%parse-vector30228%_
                         (lambda (_%body30404%_)
                           (if (_%simple-vector?30229%_ _%body30404%_)
                               (cons 'simple:
                                     (cons (gx#stx-map
                                            _%parse130225%_
                                            _%body30404%_)
                                           '()))
                               (cons 'list:
                                     (cons (_%parse-list30227%_ _%body30404%_)
                                           '())))))
                        (_%simple-vector?30229%_
                         (lambda (_%body30341%_)
                           (let* ((_%$%g3034530357%_
                                   (lambda (_%$%g3034630353%_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _%$%g3034630353%_)))
                                  (_%$%g3034430368%_
                                   (lambda (_%$%g3034630361%_)
                                     ((lambda ()
                                        (gx#stx-null? _%body30341%_)))))
                                  (_%$%g3034330400%_
                                   (lambda (_%$%g3034630372%_)
                                     (if (gx#stx-pair? _%$%g3034630372%_)
                                         (let ((_%$%e3034930375%_
                                                (gx#syntax-e
                                                 _%$%g3034630372%_)))
                                           (let ((_%$%hd3035030379%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e3034930375%_)))
                                                 (_%$%tl3035130382%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e3034930375%_))))
                                             ((lambda (_%$%g3034730385%_
                                                       _%$%g3034830387%_)
                                                (if (not (gx#ellipsis?
                                                          _%$%g3034830387%_))
                                                    (_%simple-vector?30229%_
                                                     _%$%g3034730385%_)
                                                    '#f))
                                              _%$%tl3035130382%_
                                              _%$%hd3035030379%_)))
                                         (_%$%g3034430368%_
                                          _%$%g3034630372%_)))))
                             (_%$%g3034330400%_ _%body30341%_))))
                        (_%parse-class-body30230%_
                         (lambda (_%body30250%_)
                           (let _%recur30253%_ ((_%rest30256%_ _%body30250%_))
                             (let* ((_%$%g3026030276%_
                                     (lambda (_%$%g3026130272%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g3026130272%_)))
                                    (_%$%g3025930287%_
                                     (lambda (_%$%g3026130280%_)
                                       ((lambda ()
                                          (if (gx#stx-null? _%rest30256%_)
                                              '()
                                              (_%parse-error30232%_
                                               _%rest30256%_))))))
                                    (_%$%g3025830337%_
                                     (lambda (_%$%g3026130291%_)
                                       (if (gx#stx-pair? _%$%g3026130291%_)
                                           (let ((_%$%e3026530294%_
                                                  (gx#syntax-e
                                                   _%$%g3026130291%_)))
                                             (let ((_%$%hd3026630298%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e3026530294%_)))
                                                   (_%$%tl3026730301%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e3026530294%_))))
                                               (if (gx#stx-pair?
                                                    _%$%tl3026730301%_)
                                                   (let ((_%$%e3026830304%_
                                                          (gx#syntax-e
                                                           _%$%tl3026730301%_)))
                                                     (let ((_%$%hd3026930308%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e3026830304%_)))
                                                           (_%$%tl3027030311%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e3026830304%_))))
                                                       ((lambda (_%$%g3026230314%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g3026330316%_
                         _%$%g3026430317%_)
                  (if (gx#stx-keyword? _%$%g3026430317%_)
                      (cons* _%$%g3026430317%_
                             (_%parse130225%_ _%$%g3026330316%_)
                             (_%recur30253%_ _%$%g3026230314%_))
                      (_%$%g3025930287%_ _%$%g3026130291%_)))
                _%$%tl3027030311%_
                _%$%hd3026930308%_
                _%$%hd3026630298%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g3025930287%_
                                                    _%$%g3026130291%_))))
                                           (_%$%g3025930287%_
                                            _%$%g3026130291%_)))))
                               (_%$%g3025830337%_ _%rest30256%_)))))
                        (_%parse-qq30231%_
                         (lambda (_%hd30237%_)
                           (let ((_%$%g3023930246%_
                                  (lambda (_%$%g3024030242%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%$%g3024030242%_))))
                             (_%$%g3023930246%_ _%hd30237%_))))
                        (_%parse-error30232%_
                         (lambda (_%hd30234%_)
                           (apply gx#raise-syntax-error
                                  '#f
                                  '"bad syntax; illegal pattern"
                                  (if _%match-stx30223%_
                                      (cons _%match-stx30223%_
                                            (cons _%stx30221%_
                                                  (cons _%hd30234%_ '())))
                                      (cons _%stx30221%_
                                            (cons _%hd30234%_ '())))))))
                 (_%parse130225%_ _%stx30221%_)))))
        (lambda _g34289_
          (let ((_g34290_ (let () (declare (not safe)) (##length _g34289_))))
            (cond ((let () (declare (not safe)) (##fx= _g34290_ 1))
                   (apply (lambda (_%stx31909%_)
                            (let ((_%match-stx31912%_ '#f))
                              (_%$%opt-lambda3021931905%_
                               _%stx31909%_
                               _%match-stx31912%_)))
                          _g34289_))
                  ((let () (declare (not safe)) (##fx= _g34290_ 2))
                   (apply _%$%opt-lambda3021931905%_ _g34289_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    |gerbil/core/match[1]#parse-match-pattern|
                    _g34289_)))))))
    (define |gerbil/core/match[1]#match-pattern?|
      (lambda (_%stx30206%_)
        (call/cc (lambda (_%E30209%_)
                   (with-exception-handler
                    (let ((_%E!30212%_ (current-exception-handler)))
                      (lambda (_%e30215%_)
                        (if (syntax-error? _%e30215%_)
                            (_%E30209%_ '#f)
                            (_%E!30212%_ _%e30215%_))))
                    (lambda ()
                      (|gerbil/core/match[1]#parse-match-pattern| _%stx30206%_)
                      '#t))))))
    (define |gerbil/core/match[1]#match-pattern-vars|
      (lambda (_%ptree28941%_)
        (letrec ((_%loop28944%_
                  (lambda (_%ptree29231%_ _%vars29233%_ _%K29234%_)
                    (let* ((_%$%g2924729357%_
                            (lambda (_%$%g2924829353%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2924829353%_)))
                           (_%$%g2924629368%_
                            (lambda (_%$%g2924829361%_)
                              ((lambda () (_%K29234%_ _%vars29233%_)))))
                           (_%$%g2924529420%_
                            (lambda (_%$%g2924829372%_)
                              (if (gx#stx-pair? _%$%g2924829372%_)
                                  (let ((_%$%e2934529375%_
                                         (gx#syntax-e _%$%g2924829372%_)))
                                    (let ((_%$%hd2934629379%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2934529375%_)))
                                          (_%$%tl2934729382%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2934529375%_))))
                                      (if (gx#stx-datum? _%$%hd2934629379%_)
                                          (let ((_%$%e2934829385%_
                                                 (gx#stx-e
                                                  _%$%hd2934629379%_)))
                                            (if (equal? _%$%e2934829385%_
                                                        'var:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2934729382%_)
                                                    (let ((_%$%e2934929389%_
                                                           (gx#syntax-e
                                                            _%$%tl2934729382%_)))
                                                      (let ((_%$%hd2935029393%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2934929389%_)))
                    (_%$%tl2935129396%_
                     (let () (declare (not safe)) (##cdr _%$%e2934929389%_))))
                (if (gx#stx-null? _%$%tl2935129396%_)
                    ((lambda (_%$%g2934429399%_)
                       (if (find (lambda (_%$%g2941429416%_)
                                   (gx#bound-identifier=?
                                    _%$%g2941429416%_
                                    _%$%g2934429399%_))
                                 _%vars29233%_)
                           (_%K29234%_ _%vars29233%_)
                           (_%K29234%_
                            (cons _%$%g2934429399%_ _%vars29233%_))))
                     _%$%hd2935029393%_)
                    (_%$%g2924629368%_ _%$%g2924829372%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2924629368%_
                                                     _%$%g2924829372%_))
                                                (_%$%g2924629368%_
                                                 _%$%g2924829372%_)))
                                          (_%$%g2924629368%_
                                           _%$%g2924829372%_))))
                                  (_%$%g2924629368%_ _%$%g2924829372%_))))
                           (_%$%g2924429479%_
                            (lambda (_%$%g2924829424%_)
                              (if (gx#stx-pair? _%$%g2924829424%_)
                                  (let ((_%$%e2933429427%_
                                         (gx#syntax-e _%$%g2924829424%_)))
                                    (let ((_%$%hd2933529431%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2933429427%_)))
                                          (_%$%tl2933629434%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2933429427%_))))
                                      (if (gx#stx-datum? _%$%hd2933529431%_)
                                          (let ((_%$%e2933729437%_
                                                 (gx#stx-e
                                                  _%$%hd2933529431%_)))
                                            (if (equal? _%$%e2933729437%_
                                                        'apply:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2933629434%_)
                                                    (let ((_%$%e2933829441%_
                                                           (gx#syntax-e
                                                            _%$%tl2933629434%_)))
                                                      (let ((_%$%hd2933929445%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2933829441%_)))
                    (_%$%tl2934029448%_
                     (let () (declare (not safe)) (##cdr _%$%e2933829441%_))))
                (if (gx#stx-pair? _%$%tl2934029448%_)
                    (let ((_%$%e2934129451%_ (gx#syntax-e _%$%tl2934029448%_)))
                      (let ((_%$%hd2934229455%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2934129451%_)))
                            (_%$%tl2934329458%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2934129451%_))))
                        (if (gx#stx-null? _%$%tl2934329458%_)
                            ((lambda (_%$%g2933229461%_ _%$%g2933329463%_)
                               (_%loop28944%_
                                _%$%g2933229461%_
                                _%vars29233%_
                                _%K29234%_))
                             _%$%hd2934229455%_
                             _%$%hd2933929445%_)
                            (_%$%g2924529420%_ _%$%g2924829424%_))))
                    (_%$%g2924529420%_ _%$%g2924829424%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2924529420%_
                                                     _%$%g2924829424%_))
                                                (_%$%g2924529420%_
                                                 _%$%g2924829424%_)))
                                          (_%$%g2924529420%_
                                           _%$%g2924829424%_))))
                                  (_%$%g2924529420%_ _%$%g2924829424%_))))
                           (_%$%g2924329536%_
                            (lambda (_%$%g2924829483%_)
                              (if (gx#stx-pair? _%$%g2924829483%_)
                                  (let ((_%$%e2932229486%_
                                         (gx#syntax-e _%$%g2924829483%_)))
                                    (let ((_%$%hd2932329490%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2932229486%_)))
                                          (_%$%tl2932429493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2932229486%_))))
                                      (if (gx#stx-datum? _%$%hd2932329490%_)
                                          (let ((_%$%e2932529496%_
                                                 (gx#stx-e
                                                  _%$%hd2932329490%_)))
                                            (if (equal? _%$%e2932529496%_
                                                        'class:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2932429493%_)
                                                    (let ((_%$%e2932629500%_
                                                           (gx#syntax-e
                                                            _%$%tl2932429493%_)))
                                                      (let ((_%$%hd2932729504%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2932629500%_)))
                    (_%$%tl2932829507%_
                     (let () (declare (not safe)) (##cdr _%$%e2932629500%_))))
                (if (gx#stx-pair? _%$%tl2932829507%_)
                    (let ((_%$%e2932929510%_ (gx#syntax-e _%$%tl2932829507%_)))
                      (let ((_%$%hd2933029514%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2932929510%_)))
                            (_%$%tl2933129517%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2932929510%_))))
                        (if (gx#stx-null? _%$%tl2933129517%_)
                            ((lambda (_%$%g2932129520%_)
                               (_%loop-class-list28948%_
                                _%$%g2932129520%_
                                _%vars29233%_
                                _%K29234%_))
                             _%$%hd2933029514%_)
                            (_%$%g2924429479%_ _%$%g2924829483%_))))
                    (_%$%g2924429479%_ _%$%g2924829483%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2924429479%_
                                                     _%$%g2924829483%_))
                                                (_%$%g2924429479%_
                                                 _%$%g2924829483%_)))
                                          (_%$%g2924429479%_
                                           _%$%g2924829483%_))))
                                  (_%$%g2924429479%_ _%$%g2924829483%_))))
                           (_%$%g2924229593%_
                            (lambda (_%$%g2924829540%_)
                              (if (gx#stx-pair? _%$%g2924829540%_)
                                  (let ((_%$%e2931129543%_
                                         (gx#syntax-e _%$%g2924829540%_)))
                                    (let ((_%$%hd2931229547%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2931129543%_)))
                                          (_%$%tl2931329550%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2931129543%_))))
                                      (if (gx#stx-datum? _%$%hd2931229547%_)
                                          (let ((_%$%e2931429553%_
                                                 (gx#stx-e
                                                  _%$%hd2931229547%_)))
                                            (if (equal? _%$%e2931429553%_
                                                        'struct:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2931329550%_)
                                                    (let ((_%$%e2931529557%_
                                                           (gx#syntax-e
                                                            _%$%tl2931329550%_)))
                                                      (let ((_%$%hd2931629561%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2931529557%_)))
                    (_%$%tl2931729564%_
                     (let () (declare (not safe)) (##cdr _%$%e2931529557%_))))
                (if (gx#stx-pair? _%$%tl2931729564%_)
                    (let ((_%$%e2931829567%_ (gx#syntax-e _%$%tl2931729564%_)))
                      (let ((_%$%hd2931929571%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2931829567%_)))
                            (_%$%tl2932029574%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2931829567%_))))
                        (if (gx#stx-null? _%$%tl2932029574%_)
                            ((lambda (_%$%g2931029577%_)
                               (_%loop-vector28946%_
                                _%$%g2931029577%_
                                _%vars29233%_
                                _%K29234%_))
                             _%$%hd2931929571%_)
                            (_%$%g2924329536%_ _%$%g2924829540%_))))
                    (_%$%g2924329536%_ _%$%g2924829540%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2924329536%_
                                                     _%$%g2924829540%_))
                                                (_%$%g2924329536%_
                                                 _%$%g2924829540%_)))
                                          (_%$%g2924329536%_
                                           _%$%g2924829540%_))))
                                  (_%$%g2924329536%_ _%$%g2924829540%_))))
                           (_%$%g2924129639%_
                            (lambda (_%$%g2924829597%_)
                              (if (gx#stx-pair? _%$%g2924829597%_)
                                  (let ((_%$%e2930429600%_
                                         (gx#syntax-e _%$%g2924829597%_)))
                                    (let ((_%$%hd2930529604%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2930429600%_)))
                                          (_%$%tl2930629607%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2930429600%_))))
                                      (if (gx#stx-pair? _%$%tl2930629607%_)
                                          (let ((_%$%e2930729610%_
                                                 (gx#syntax-e
                                                  _%$%tl2930629607%_)))
                                            (let ((_%$%hd2930829614%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e2930729610%_)))
                                                  (_%$%tl2930929617%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e2930729610%_))))
                                              (if (gx#stx-null?
                                                   _%$%tl2930929617%_)
                                                  ((lambda (_%$%g2930229620%_
                                                            _%$%g2930329622%_)
                                                     (if (or (gx#stx-eq?
                                                              'values:
                                                              _%$%g2930329622%_)
                                                             (gx#stx-eq?
                                                              'vector:
                                                              _%$%g2930329622%_))
                                                         (_%loop-vector28946%_
                                                          _%$%g2930229620%_
                                                          _%vars29233%_
                                                          _%K29234%_)
                                                         (_%$%g2924229593%_
                                                          _%$%g2924829597%_)))
                                                   _%$%hd2930829614%_
                                                   _%$%hd2930529604%_)
                                                  (_%$%g2924229593%_
                                                   _%$%g2924829597%_))))
                                          (_%$%g2924229593%_
                                           _%$%g2924829597%_))))
                                  (_%$%g2924229593%_ _%$%g2924829597%_))))
                           (_%$%g2924029684%_
                            (lambda (_%$%g2924829643%_)
                              (if (gx#stx-pair? _%$%g2924829643%_)
                                  (let ((_%$%e2929529646%_
                                         (gx#syntax-e _%$%g2924829643%_)))
                                    (let ((_%$%hd2929629650%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2929529646%_)))
                                          (_%$%tl2929729653%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2929529646%_))))
                                      (if (gx#stx-datum? _%$%hd2929629650%_)
                                          (let ((_%$%e2929829656%_
                                                 (gx#stx-e
                                                  _%$%hd2929629650%_)))
                                            (if (equal? _%$%e2929829656%_
                                                        'box:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2929729653%_)
                                                    (let ((_%$%e2929929660%_
                                                           (gx#syntax-e
                                                            _%$%tl2929729653%_)))
                                                      (let ((_%$%hd2930029664%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2929929660%_)))
                    (_%$%tl2930129667%_
                     (let () (declare (not safe)) (##cdr _%$%e2929929660%_))))
                (if (gx#stx-null? _%$%tl2930129667%_)
                    ((lambda (_%$%g2929429670%_)
                       (_%loop28944%_
                        _%$%g2929429670%_
                        _%vars29233%_
                        _%K29234%_))
                     _%$%hd2930029664%_)
                    (_%$%g2924129639%_ _%$%g2924829643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2924129639%_
                                                     _%$%g2924829643%_))
                                                (_%$%g2924129639%_
                                                 _%$%g2924829643%_)))
                                          (_%$%g2924129639%_
                                           _%$%g2924829643%_))))
                                  (_%$%g2924129639%_ _%$%g2924829643%_))))
                           (_%$%g2923929748%_
                            (lambda (_%$%g2924829688%_)
                              (if (gx#stx-pair? _%$%g2924829688%_)
                                  (let ((_%$%e2928429691%_
                                         (gx#syntax-e _%$%g2924829688%_)))
                                    (let ((_%$%hd2928529695%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2928429691%_)))
                                          (_%$%tl2928629698%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2928429691%_))))
                                      (if (gx#stx-datum? _%$%hd2928529695%_)
                                          (let ((_%$%e2928729701%_
                                                 (gx#stx-e
                                                  _%$%hd2928529695%_)))
                                            (if (equal? _%$%e2928729701%_
                                                        'splice:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2928629698%_)
                                                    (let ((_%$%e2928829705%_
                                                           (gx#syntax-e
                                                            _%$%tl2928629698%_)))
                                                      (let ((_%$%hd2928929709%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2928829705%_)))
                    (_%$%tl2929029712%_
                     (let () (declare (not safe)) (##cdr _%$%e2928829705%_))))
                (if (gx#stx-pair? _%$%tl2929029712%_)
                    (let ((_%$%e2929129715%_ (gx#syntax-e _%$%tl2929029712%_)))
                      (let ((_%$%hd2929229719%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2929129715%_)))
                            (_%$%tl2929329722%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2929129715%_))))
                        (if (gx#stx-null? _%$%tl2929329722%_)
                            ((lambda (_%$%g2928229725%_ _%$%g2928329727%_)
                               (_%loop28944%_
                                _%$%g2928329727%_
                                _%vars29233%_
                                (lambda (_%$%g2974229744%_)
                                  (_%loop28944%_
                                   _%$%g2928229725%_
                                   _%$%g2974229744%_
                                   _%K29234%_))))
                             _%$%hd2929229719%_
                             _%$%hd2928929709%_)
                            (_%$%g2924029684%_ _%$%g2924829688%_))))
                    (_%$%g2924029684%_ _%$%g2924829688%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2924029684%_
                                                     _%$%g2924829688%_))
                                                (_%$%g2924029684%_
                                                 _%$%g2924829688%_)))
                                          (_%$%g2924029684%_
                                           _%$%g2924829688%_))))
                                  (_%$%g2924029684%_ _%$%g2924829688%_))))
                           (_%$%g2923829812%_
                            (lambda (_%$%g2924829752%_)
                              (if (gx#stx-pair? _%$%g2924829752%_)
                                  (let ((_%$%e2927229755%_
                                         (gx#syntax-e _%$%g2924829752%_)))
                                    (let ((_%$%hd2927329759%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2927229755%_)))
                                          (_%$%tl2927429762%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2927229755%_))))
                                      (if (gx#stx-datum? _%$%hd2927329759%_)
                                          (let ((_%$%e2927529765%_
                                                 (gx#stx-e
                                                  _%$%hd2927329759%_)))
                                            (if (equal? _%$%e2927529765%_
                                                        'cons:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2927429762%_)
                                                    (let ((_%$%e2927629769%_
                                                           (gx#syntax-e
                                                            _%$%tl2927429762%_)))
                                                      (let ((_%$%hd2927729773%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2927629769%_)))
                    (_%$%tl2927829776%_
                     (let () (declare (not safe)) (##cdr _%$%e2927629769%_))))
                (if (gx#stx-pair? _%$%tl2927829776%_)
                    (let ((_%$%e2927929779%_ (gx#syntax-e _%$%tl2927829776%_)))
                      (let ((_%$%hd2928029783%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2927929779%_)))
                            (_%$%tl2928129786%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2927929779%_))))
                        (if (gx#stx-null? _%$%tl2928129786%_)
                            ((lambda (_%$%g2927029789%_ _%$%g2927129791%_)
                               (_%loop28944%_
                                _%$%g2927129791%_
                                _%vars29233%_
                                (lambda (_%$%g2980629808%_)
                                  (_%loop28944%_
                                   _%$%g2927029789%_
                                   _%$%g2980629808%_
                                   _%K29234%_))))
                             _%$%hd2928029783%_
                             _%$%hd2927729773%_)
                            (_%$%g2923929748%_ _%$%g2924829752%_))))
                    (_%$%g2923929748%_ _%$%g2924829752%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2923929748%_
                                                     _%$%g2924829752%_))
                                                (_%$%g2923929748%_
                                                 _%$%g2924829752%_)))
                                          (_%$%g2923929748%_
                                           _%$%g2924829752%_))))
                                  (_%$%g2923929748%_ _%$%g2924829752%_))))
                           (_%$%g2923729857%_
                            (lambda (_%$%g2924829816%_)
                              (if (gx#stx-pair? _%$%g2924829816%_)
                                  (let ((_%$%e2926329819%_
                                         (gx#syntax-e _%$%g2924829816%_)))
                                    (let ((_%$%hd2926429823%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2926329819%_)))
                                          (_%$%tl2926529826%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2926329819%_))))
                                      (if (gx#stx-datum? _%$%hd2926429823%_)
                                          (let ((_%$%e2926629829%_
                                                 (gx#stx-e
                                                  _%$%hd2926429823%_)))
                                            (if (equal? _%$%e2926629829%_
                                                        'not:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2926529826%_)
                                                    (let ((_%$%e2926729833%_
                                                           (gx#syntax-e
                                                            _%$%tl2926529826%_)))
                                                      (let ((_%$%hd2926829837%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2926729833%_)))
                    (_%$%tl2926929840%_
                     (let () (declare (not safe)) (##cdr _%$%e2926729833%_))))
                (if (gx#stx-null? _%$%tl2926929840%_)
                    ((lambda (_%$%g2926229843%_)
                       (_%loop28944%_
                        _%$%g2926229843%_
                        _%vars29233%_
                        _%K29234%_))
                     _%$%hd2926829837%_)
                    (_%$%g2923829812%_ _%$%g2924829816%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2923829812%_
                                                     _%$%g2924829816%_))
                                                (_%$%g2923829812%_
                                                 _%$%g2924829816%_)))
                                          (_%$%g2923829812%_
                                           _%$%g2924829816%_))))
                                  (_%$%g2923829812%_ _%$%g2924829816%_))))
                           (_%$%g2923629956%_
                            (lambda (_%$%g2924829861%_)
                              (if (gx#stx-pair? _%$%g2924829861%_)
                                  (let ((_%$%e2925929864%_
                                         (gx#syntax-e _%$%g2924829861%_)))
                                    (let ((_%$%hd2926029868%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2925929864%_)))
                                          (_%$%tl2926129871%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2925929864%_))))
                                      ((lambda (_%$%g2925729874%_
                                                _%$%g2925829876%_)
                                         (if (or (gx#stx-eq?
                                                  'and:
                                                  _%$%g2925829876%_)
                                                 (gx#stx-eq?
                                                  'or:
                                                  _%$%g2925829876%_))
                                             (let* ((_%$%g2989229904%_
                                                     (lambda (_%$%g2989329900%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g2989329900%_)))
                                                    (_%$%g2989129915%_
                                                     (lambda (_%$%g2989329908%_)
                                                       ((lambda ()
                                                          (_%K29234%_
                                                           _%vars29233%_)))))
                                                    (_%$%g2989029952%_
                                                     (lambda (_%$%g2989329919%_)
                                                       (if (gx#stx-pair?
                                                            _%$%g2989329919%_)
                                                           (let ((_%$%e2989629922%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%g2989329919%_)))
                     (let ((_%$%hd2989729926%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e2989629922%_)))
                           (_%$%tl2989829929%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e2989629922%_))))
                       ((lambda (_%$%g2989429932%_ _%$%g2989529934%_)
                          (_%loop28944%_
                           _%$%g2989529934%_
                           _%vars29233%_
                           (lambda (_%$%g2994629948%_)
                             (_%loop28944%_
                              (cons _%$%g2925829876%_ _%$%g2989429932%_)
                              _%$%g2994629948%_
                              _%K29234%_))))
                        _%$%tl2989829929%_
                        _%$%hd2989729926%_)))
                   (_%$%g2989129915%_ _%$%g2989329919%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2989029952%_
                                                _%$%g2925729874%_))
                                             (_%$%g2923729857%_
                                              _%$%g2924829861%_)))
                                       _%$%tl2926129871%_
                                       _%$%hd2926029868%_)))
                                  (_%$%g2923729857%_ _%$%g2924829861%_))))
                           (_%$%g2923530202%_
                            (lambda (_%$%g2924829960%_)
                              (if (gx#stx-pair? _%$%g2924829960%_)
                                  (let ((_%$%e2925029963%_
                                         (gx#syntax-e _%$%g2924829960%_)))
                                    (let ((_%$%hd2925129967%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2925029963%_)))
                                          (_%$%tl2925229970%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2925029963%_))))
                                      (if (gx#stx-datum? _%$%hd2925129967%_)
                                          (let ((_%$%e2925329973%_
                                                 (gx#stx-e
                                                  _%$%hd2925129967%_)))
                                            (if (equal? _%$%e2925329973%_ '?:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2925229970%_)
                                                    (let ((_%$%e2925429977%_
                                                           (gx#syntax-e
                                                            _%$%tl2925229970%_)))
                                                      (let ((_%$%hd2925529981%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2925429977%_)))
                    (_%$%tl2925629984%_
                     (let () (declare (not safe)) (##cdr _%$%e2925429977%_))))
                ((lambda (_%$%g2924929987%_)
                   (let* ((_%$%g3000430038%_
                           (lambda (_%$%g3000530034%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g3000530034%_)))
                          (_%$%g3000330049%_
                           (lambda (_%$%g3000530042%_)
                             ((lambda () (_%K29234%_ _%vars29233%_)))))
                          (_%$%g3000230125%_
                           (lambda (_%$%g3000530053%_)
                             (if (gx#stx-pair? _%$%g3000530053%_)
                                 (let ((_%$%e3001930056%_
                                        (gx#syntax-e _%$%g3000530053%_)))
                                   (let ((_%$%hd3002030060%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e3001930056%_)))
                                         (_%$%tl3002130063%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e3001930056%_))))
                                     (if (gx#stx-datum? _%$%hd3002030060%_)
                                         (let ((_%$%e3002230066%_
                                                (gx#stx-e _%$%hd3002030060%_)))
                                           (if (equal? _%$%e3002230066%_ '::)
                                               (if (gx#stx-pair?
                                                    _%$%tl3002130063%_)
                                                   (let ((_%$%e3002330070%_
                                                          (gx#syntax-e
                                                           _%$%tl3002130063%_)))
                                                     (let ((_%$%hd3002430074%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e3002330070%_)))
                                                           (_%$%tl3002530077%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e3002330070%_))))
                                                       (if (gx#stx-pair?
                                                            _%$%tl3002530077%_)
                                                           (let ((_%$%e3002630080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%tl3002530077%_)))
                     (let ((_%$%hd3002730084%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e3002630080%_)))
                           (_%$%tl3002830087%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e3002630080%_))))
                       (if (gx#stx-datum? _%$%hd3002730084%_)
                           (let ((_%$%e3002930090%_
                                  (gx#stx-e _%$%hd3002730084%_)))
                             (if (equal? _%$%e3002930090%_ '=>:)
                                 (if (gx#stx-pair? _%$%tl3002830087%_)
                                     (let ((_%$%e3003030094%_
                                            (gx#syntax-e _%$%tl3002830087%_)))
                                       (let ((_%$%hd3003130098%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e3003030094%_)))
                                             (_%$%tl3003230101%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e3003030094%_))))
                                         (if (gx#stx-null? _%$%tl3003230101%_)
                                             ((lambda (_%$%g3001830104%_)
                                                (_%loop28944%_
                                                 _%$%g3001830104%_
                                                 _%vars29233%_
                                                 _%K29234%_))
                                              _%$%hd3003130098%_)
                                             (_%$%g3000330049%_
                                              _%$%g3000530053%_))))
                                     (_%$%g3000330049%_ _%$%g3000530053%_))
                                 (_%$%g3000330049%_ _%$%g3000530053%_)))
                           (_%$%g3000330049%_ _%$%g3000530053%_))))
                   (_%$%g3000330049%_ _%$%g3000530053%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g3000330049%_
                                                    _%$%g3000530053%_))
                                               (_%$%g3000330049%_
                                                _%$%g3000530053%_)))
                                         (_%$%g3000330049%_
                                          _%$%g3000530053%_))))
                                 (_%$%g3000330049%_ _%$%g3000530053%_))))
                          (_%$%g3000130170%_
                           (lambda (_%$%g3000530129%_)
                             (if (gx#stx-pair? _%$%g3000530129%_)
                                 (let ((_%$%e3001130132%_
                                        (gx#syntax-e _%$%g3000530129%_)))
                                   (let ((_%$%hd3001230136%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e3001130132%_)))
                                         (_%$%tl3001330139%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e3001130132%_))))
                                     (if (gx#stx-datum? _%$%hd3001230136%_)
                                         (let ((_%$%e3001430142%_
                                                (gx#stx-e _%$%hd3001230136%_)))
                                           (if (equal? _%$%e3001430142%_ '=>:)
                                               (if (gx#stx-pair?
                                                    _%$%tl3001330139%_)
                                                   (let ((_%$%e3001530146%_
                                                          (gx#syntax-e
                                                           _%$%tl3001330139%_)))
                                                     (let ((_%$%hd3001630150%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e3001530146%_)))
                                                           (_%$%tl3001730153%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e3001530146%_))))
                                                       (if (gx#stx-null?
                                                            _%$%tl3001730153%_)
                                                           ((lambda (_%$%g3001030156%_)
                                                              (_%loop28944%_
                                                               _%$%g3001030156%_
                                                               _%vars29233%_
                                                               _%K29234%_))
                                                            _%$%hd3001630150%_)
                                                           (_%$%g3000230125%_
                                                            _%$%g3000530129%_))))
                                                   (_%$%g3000230125%_
                                                    _%$%g3000530129%_))
                                               (_%$%g3000230125%_
                                                _%$%g3000530129%_)))
                                         (_%$%g3000230125%_
                                          _%$%g3000530129%_))))
                                 (_%$%g3000230125%_ _%$%g3000530129%_))))
                          (_%$%g3000030198%_
                           (lambda (_%$%g3000530174%_)
                             (if (gx#stx-pair? _%$%g3000530174%_)
                                 (let ((_%$%e3000730177%_
                                        (gx#syntax-e _%$%g3000530174%_)))
                                   (let ((_%$%hd3000830181%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e3000730177%_)))
                                         (_%$%tl3000930184%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e3000730177%_))))
                                     (if (gx#stx-null? _%$%tl3000930184%_)
                                         ((lambda (_%$%g3000630187%_)
                                            (_%loop28944%_
                                             _%$%g3000630187%_
                                             _%vars29233%_
                                             _%K29234%_))
                                          _%$%hd3000830181%_)
                                         (_%$%g3000130170%_
                                          _%$%g3000530174%_))))
                                 (_%$%g3000130170%_ _%$%g3000530174%_)))))
                     (_%$%g3000030198%_ _%$%g2924929987%_)))
                 _%$%tl2925629984%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2923629956%_
                                                     _%$%g2924829960%_))
                                                (_%$%g2923629956%_
                                                 _%$%g2924829960%_)))
                                          (_%$%g2923629956%_
                                           _%$%g2924829960%_))))
                                  (_%$%g2923629956%_ _%$%g2924829960%_)))))
                      (_%$%g2923530202%_ _%ptree29231%_))))
                 (_%loop-vector28946%_
                  (lambda (_%body29107%_ _%vars29109%_ _%K29110%_)
                    (let* ((_%$%g2911329136%_
                            (lambda (_%$%g2911429132%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2911429132%_)))
                           (_%$%g2911229182%_
                            (lambda (_%$%g2911429140%_)
                              (if (gx#stx-pair? _%$%g2911429140%_)
                                  (let ((_%$%e2912429143%_
                                         (gx#syntax-e _%$%g2911429140%_)))
                                    (let ((_%$%hd2912529147%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2912429143%_)))
                                          (_%$%tl2912629150%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2912429143%_))))
                                      (if (gx#stx-datum? _%$%hd2912529147%_)
                                          (let ((_%$%e2912729153%_
                                                 (gx#stx-e
                                                  _%$%hd2912529147%_)))
                                            (if (equal? _%$%e2912729153%_
                                                        'list:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2912629150%_)
                                                    (let ((_%$%e2912829157%_
                                                           (gx#syntax-e
                                                            _%$%tl2912629150%_)))
                                                      (let ((_%$%hd2912929161%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2912829157%_)))
                    (_%$%tl2913029164%_
                     (let () (declare (not safe)) (##cdr _%$%e2912829157%_))))
                (if (gx#stx-null? _%$%tl2913029164%_)
                    ((lambda (_%$%g2912329167%_)
                       (_%loop28944%_
                        _%$%g2912329167%_
                        _%vars29109%_
                        _%K29110%_))
                     _%$%hd2912929161%_)
                    (_%$%g2911329136%_ _%$%g2911429140%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2911329136%_
                                                     _%$%g2911429140%_))
                                                (_%$%g2911329136%_
                                                 _%$%g2911429140%_)))
                                          (_%$%g2911329136%_
                                           _%$%g2911429140%_))))
                                  (_%$%g2911329136%_ _%$%g2911429140%_))))
                           (_%$%g2911129227%_
                            (lambda (_%$%g2911429186%_)
                              (if (gx#stx-pair? _%$%g2911429186%_)
                                  (let ((_%$%e2911629189%_
                                         (gx#syntax-e _%$%g2911429186%_)))
                                    (let ((_%$%hd2911729193%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2911629189%_)))
                                          (_%$%tl2911829196%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2911629189%_))))
                                      (if (gx#stx-datum? _%$%hd2911729193%_)
                                          (let ((_%$%e2911929199%_
                                                 (gx#stx-e
                                                  _%$%hd2911729193%_)))
                                            (if (equal? _%$%e2911929199%_
                                                        'simple:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2911829196%_)
                                                    (let ((_%$%e2912029203%_
                                                           (gx#syntax-e
                                                            _%$%tl2911829196%_)))
                                                      (let ((_%$%hd2912129207%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2912029203%_)))
                    (_%$%tl2912229210%_
                     (let () (declare (not safe)) (##cdr _%$%e2912029203%_))))
                (if (gx#stx-null? _%$%tl2912229210%_)
                    ((lambda (_%$%g2911529213%_)
                       (_%loop-list28947%_
                        _%$%g2911529213%_
                        _%vars29109%_
                        _%K29110%_))
                     _%$%hd2912129207%_)
                    (_%$%g2911229182%_ _%$%g2911429186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2911229182%_
                                                     _%$%g2911429186%_))
                                                (_%$%g2911229182%_
                                                 _%$%g2911429186%_)))
                                          (_%$%g2911229182%_
                                           _%$%g2911429186%_))))
                                  (_%$%g2911229182%_ _%$%g2911429186%_)))))
                      (_%$%g2911129227%_ _%body29107%_))))
                 (_%loop-list28947%_
                  (lambda (_%rest29037%_ _%vars29039%_ _%K29040%_)
                    (let* ((_%$%g2904329055%_
                            (lambda (_%$%g2904429051%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2904429051%_)))
                           (_%$%g2904229066%_
                            (lambda (_%$%g2904429059%_)
                              ((lambda () (_%K29040%_ _%vars29039%_)))))
                           (_%$%g2904129103%_
                            (lambda (_%$%g2904429070%_)
                              (if (gx#stx-pair? _%$%g2904429070%_)
                                  (let ((_%$%e2904729073%_
                                         (gx#syntax-e _%$%g2904429070%_)))
                                    (let ((_%$%hd2904829077%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2904729073%_)))
                                          (_%$%tl2904929080%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2904729073%_))))
                                      ((lambda (_%$%g2904529083%_
                                                _%$%g2904629085%_)
                                         (_%loop28944%_
                                          _%$%g2904629085%_
                                          _%vars29039%_
                                          (lambda (_%$%g2909729099%_)
                                            (_%loop-list28947%_
                                             _%$%g2904529083%_
                                             _%$%g2909729099%_
                                             _%K29040%_))))
                                       _%$%tl2904929080%_
                                       _%$%hd2904829077%_)))
                                  (_%$%g2904229066%_ _%$%g2904429070%_)))))
                      (_%$%g2904129103%_ _%rest29037%_))))
                 (_%loop-class-list28948%_
                  (lambda (_%rest28950%_ _%vars28952%_ _%K28953%_)
                    (let* ((_%$%g2895628971%_
                            (lambda (_%$%g2895728967%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2895728967%_)))
                           (_%$%g2895528982%_
                            (lambda (_%$%g2895728975%_)
                              ((lambda () (_%K28953%_ _%vars28952%_)))))
                           (_%$%g2895429033%_
                            (lambda (_%$%g2895728986%_)
                              (if (gx#stx-pair? _%$%g2895728986%_)
                                  (let ((_%$%e2896028989%_
                                         (gx#syntax-e _%$%g2895728986%_)))
                                    (let ((_%$%hd2896128993%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2896028989%_)))
                                          (_%$%tl2896228996%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2896028989%_))))
                                      (if (gx#stx-pair? _%$%tl2896228996%_)
                                          (let ((_%$%e2896328999%_
                                                 (gx#syntax-e
                                                  _%$%tl2896228996%_)))
                                            (let ((_%$%hd2896429003%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e2896328999%_)))
                                                  (_%$%tl2896529006%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e2896328999%_))))
                                              ((lambda (_%$%g2895829009%_
                                                        _%$%g2895929011%_)
                                                 (_%loop28944%_
                                                  _%$%g2895929011%_
                                                  _%vars28952%_
                                                  (lambda (_%$%g2902729029%_)
                                                    (_%loop-class-list28948%_
                                                     _%$%g2895829009%_
                                                     _%$%g2902729029%_
                                                     _%K28953%_))))
                                               _%$%tl2896529006%_
                                               _%$%hd2896429003%_)))
                                          (_%$%g2895528982%_
                                           _%$%g2895728986%_))))
                                  (_%$%g2895528982%_ _%$%g2895728986%_)))))
                      (_%$%g2895429033%_ _%rest28950%_)))))
          (_%loop28944%_ _%ptree28941%_ '() values))))
    (define |gerbil/core/match[1]#generate-match1|
      (lambda (_%stx25873%_ _%tgt25875%_ _%ptree25876%_ _%K25877%_ _%E25878%_)
        (letrec ((_%generate125880%_
                  (lambda (_%tgt27140%_ _%ptree27142%_ _%K27143%_ _%E27144%_)
                    (let* ((_%$%g2714627154%_
                            (lambda (_%$%g2714727150%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2714727150%_)))
                           (_%$%g2714528937%_
                            (lambda (_%$%g2714727158%_)
                              ((lambda (_%$%g2714827161%_)
                                 (let* ((_%$%g2718827330%_
                                         (lambda (_%$%g2718927326%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2718927326%_)))
                                        (_%$%g2718727355%_
                                         (lambda (_%$%g2718927334%_)
                                           (if (gx#stx-pair? _%$%g2718927334%_)
                                               (let ((_%$%e2732127337%_
                                                      (gx#syntax-e
                                                       _%$%g2718927334%_)))
                                                 (let ((_%$%hd2732227341%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2732127337%_)))
                                                       (_%$%tl2732327344%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2732127337%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2732227341%_)
                                                       (let ((_%$%e2732427347%_
                                                              (gx#stx-e
                                                               _%$%hd2732227341%_)))
                                                         (if (equal? _%$%e2732427347%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'any:)
                     (if (gx#stx-null? _%$%tl2732327344%_)
                         ((lambda () _%K27143%_))
                         (_%$%g2718827330%_ _%$%g2718927334%_))
                     (_%$%g2718827330%_ _%$%g2718927334%_)))
               (_%$%g2718827330%_ _%$%g2718927334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2718827330%_
                                                _%$%g2718927334%_))))
                                        (_%$%g2718627403%_
                                         (lambda (_%$%g2718927359%_)
                                           (if (gx#stx-pair? _%$%g2718927359%_)
                                               (let ((_%$%e2731427362%_
                                                      (gx#syntax-e
                                                       _%$%g2718927359%_)))
                                                 (let ((_%$%hd2731527366%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2731427362%_)))
                                                       (_%$%tl2731627369%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2731427362%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2731527366%_)
                                                       (let ((_%$%e2731727372%_
                                                              (gx#stx-e
                                                               _%$%hd2731527366%_)))
                                                         (if (equal? _%$%e2731727372%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'var:)
                     (if (gx#stx-pair? _%$%tl2731627369%_)
                         (let ((_%$%e2731827376%_
                                (gx#syntax-e _%$%tl2731627369%_)))
                           (let ((_%$%hd2731927380%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2731827376%_)))
                                 (_%$%tl2732027383%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2731827376%_))))
                             (if (gx#stx-null? _%$%tl2732027383%_)
                                 ((lambda (_%$%g2731327386%_)
                                    (cons 'let
                                          (cons (cons (cons _%$%g2731327386%_
                                                            (cons _%$%g2714827161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons _%K27143%_ '()))))
                                  _%$%hd2731927380%_)
                                 (_%$%g2718727355%_ _%$%g2718927359%_))))
                         (_%$%g2718727355%_ _%$%g2718927359%_))
                     (_%$%g2718727355%_ _%$%g2718927359%_)))
               (_%$%g2718727355%_ _%$%g2718927359%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2718727355%_
                                                _%$%g2718927359%_))))
                                        (_%$%g2718527493%_
                                         (lambda (_%$%g2718927407%_)
                                           (if (gx#stx-pair? _%$%g2718927407%_)
                                               (let ((_%$%e2730327410%_
                                                      (gx#syntax-e
                                                       _%$%g2718927407%_)))
                                                 (let ((_%$%hd2730427414%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2730327410%_)))
                                                       (_%$%tl2730527417%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2730327410%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2730427414%_)
                                                       (let ((_%$%e2730627420%_
                                                              (gx#stx-e
                                                               _%$%hd2730427414%_)))
                                                         (if (equal? _%$%e2730627420%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'apply:)
                     (if (gx#stx-pair? _%$%tl2730527417%_)
                         (let ((_%$%e2730727424%_
                                (gx#syntax-e _%$%tl2730527417%_)))
                           (let ((_%$%hd2730827428%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2730727424%_)))
                                 (_%$%tl2730927431%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2730727424%_))))
                             (if (gx#stx-pair? _%$%tl2730927431%_)
                                 (let ((_%$%e2731027434%_
                                        (gx#syntax-e _%$%tl2730927431%_)))
                                   (let ((_%$%hd2731127438%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e2731027434%_)))
                                         (_%$%tl2731227441%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e2731027434%_))))
                                     (if (gx#stx-null? _%$%tl2731227441%_)
                                         ((lambda (_%$%g2730127444%_
                                                   _%$%g2730227446%_)
                                            (let* ((_%$%g2746227470%_
                                                    (lambda (_%$%g2746327466%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g2746327466%_)))
                                                   (_%$%g2746127489%_
                                                    (lambda (_%$%g2746327474%_)
                                                      ((lambda (_%$%g2746427477%_)
                                                         (cons 'let
                                                               (cons (cons (cons _%$%g2746427477%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons (cons _%$%g2730227446%_
                                                     (cons _%$%g2714827161%_
                                                           '()))
                                               '()))
                                   '())
                             (cons (_%generate125880%_
                                    _%$%g2746427477%_
                                    _%$%g2730127444%_
                                    _%K27143%_
                                    _%E27144%_)
                                   '()))))
               _%$%g2746327474%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2746127489%_
                                               (gx#genident 'e))))
                                          _%$%hd2731127438%_
                                          _%$%hd2730827428%_)
                                         (_%$%g2718627403%_
                                          _%$%g2718927407%_))))
                                 (_%$%g2718627403%_ _%$%g2718927407%_))))
                         (_%$%g2718627403%_ _%$%g2718927407%_))
                     (_%$%g2718627403%_ _%$%g2718927407%_)))
               (_%$%g2718627403%_ _%$%g2718927407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2718627403%_
                                                _%$%g2718927407%_))))
                                        (_%$%g2718427586%_
                                         (lambda (_%$%g2718927497%_)
                                           (if (gx#stx-pair? _%$%g2718927497%_)
                                               (let ((_%$%e2729427500%_
                                                      (gx#syntax-e
                                                       _%$%g2718927497%_)))
                                                 (let ((_%$%hd2729527504%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2729427500%_)))
                                                       (_%$%tl2729627507%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2729427500%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2729527504%_)
                                                       (let ((_%$%e2729727510%_
                                                              (gx#stx-e
                                                               _%$%hd2729527504%_)))
                                                         (if (equal? _%$%e2729727510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'datum:)
                     (if (gx#stx-pair? _%$%tl2729627507%_)
                         (let ((_%$%e2729827514%_
                                (gx#syntax-e _%$%tl2729627507%_)))
                           (let ((_%$%hd2729927518%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2729827514%_)))
                                 (_%$%tl2730027521%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2729827514%_))))
                             (if (gx#stx-null? _%$%tl2730027521%_)
                                 ((lambda (_%$%g2729327524%_)
                                    (let* ((_%$%g2753827546%_
                                            (lambda (_%$%g2753927542%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g2753927542%_)))
                                           (_%$%g2753727565%_
                                            (lambda (_%$%g2753927550%_)
                                              ((lambda (_%$%g2754027553%_)
                                                 (cons 'if
                                                       (cons (cons _%$%g2754027553%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%$%g2714827161%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%$%g2729327524%_ '()))
                                       '())))
                     (cons _%K27143%_ (cons _%E27144%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%g2753927550%_))))
                                      (_%$%g2753727565%_
                                       (let ((_%e27569%_
                                              (gx#stx-e _%$%g2729327524%_)))
                                         (if (or (symbol? _%e27569%_)
                                                 (keyword? _%e27569%_)
                                                 (immediate? _%e27569%_))
                                             '##eq?
                                             (if (number? _%e27569%_)
                                                 'eqv?
                                                 'equal?))))))
                                  _%$%hd2729927518%_)
                                 (_%$%g2718527493%_ _%$%g2718927497%_))))
                         (_%$%g2718527493%_ _%$%g2718927497%_))
                     (_%$%g2718527493%_ _%$%g2718927497%_)))
               (_%$%g2718527493%_ _%$%g2718927497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2718527493%_
                                                _%$%g2718927497%_))))
                                        (_%$%g2718327645%_
                                         (lambda (_%$%g2718927590%_)
                                           (if (gx#stx-pair? _%$%g2718927590%_)
                                               (let ((_%$%e2728327593%_
                                                      (gx#syntax-e
                                                       _%$%g2718927590%_)))
                                                 (let ((_%$%hd2728427597%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2728327593%_)))
                                                       (_%$%tl2728527600%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2728327593%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2728427597%_)
                                                       (let ((_%$%e2728627603%_
                                                              (gx#stx-e
                                                               _%$%hd2728427597%_)))
                                                         (if (equal? _%$%e2728627603%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'class:)
                     (if (gx#stx-pair? _%$%tl2728527600%_)
                         (let ((_%$%e2728727607%_
                                (gx#syntax-e _%$%tl2728527600%_)))
                           (let ((_%$%hd2728827611%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2728727607%_)))
                                 (_%$%tl2728927614%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2728727607%_))))
                             (if (gx#stx-pair? _%$%tl2728927614%_)
                                 (let ((_%$%e2729027617%_
                                        (gx#syntax-e _%$%tl2728927614%_)))
                                   (let ((_%$%hd2729127621%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e2729027617%_)))
                                         (_%$%tl2729227624%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e2729027617%_))))
                                     (if (gx#stx-null? _%$%tl2729227624%_)
                                         ((lambda (_%$%g2728127627%_
                                                   _%$%g2728227629%_)
                                            (_%generate-class25888%_
                                             (gx#stx-e _%$%g2728227629%_)
                                             _%tgt27140%_
                                             _%$%g2728127627%_
                                             _%K27143%_
                                             _%E27144%_))
                                          _%$%hd2729127621%_
                                          _%$%hd2728827611%_)
                                         (_%$%g2718427586%_
                                          _%$%g2718927590%_))))
                                 (_%$%g2718427586%_ _%$%g2718927590%_))))
                         (_%$%g2718427586%_ _%$%g2718927590%_))
                     (_%$%g2718427586%_ _%$%g2718927590%_)))
               (_%$%g2718427586%_ _%$%g2718927590%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2718427586%_
                                                _%$%g2718927590%_))))
                                        (_%$%g2718227704%_
                                         (lambda (_%$%g2718927649%_)
                                           (if (gx#stx-pair? _%$%g2718927649%_)
                                               (let ((_%$%e2727127652%_
                                                      (gx#syntax-e
                                                       _%$%g2718927649%_)))
                                                 (let ((_%$%hd2727227656%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2727127652%_)))
                                                       (_%$%tl2727327659%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2727127652%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2727227656%_)
                                                       (let ((_%$%e2727427662%_
                                                              (gx#stx-e
                                                               _%$%hd2727227656%_)))
                                                         (if (equal? _%$%e2727427662%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'struct:)
                     (if (gx#stx-pair? _%$%tl2727327659%_)
                         (let ((_%$%e2727527666%_
                                (gx#syntax-e _%$%tl2727327659%_)))
                           (let ((_%$%hd2727627670%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2727527666%_)))
                                 (_%$%tl2727727673%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2727527666%_))))
                             (if (gx#stx-pair? _%$%tl2727727673%_)
                                 (let ((_%$%e2727827676%_
                                        (gx#syntax-e _%$%tl2727727673%_)))
                                   (let ((_%$%hd2727927680%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e2727827676%_)))
                                         (_%$%tl2728027683%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e2727827676%_))))
                                     (if (gx#stx-null? _%$%tl2728027683%_)
                                         ((lambda (_%$%g2726927686%_
                                                   _%$%g2727027688%_)
                                            (_%generate-struct25885%_
                                             (gx#stx-e _%$%g2727027688%_)
                                             _%tgt27140%_
                                             _%$%g2726927686%_
                                             _%K27143%_
                                             _%E27144%_))
                                          _%$%hd2727927680%_
                                          _%$%hd2727627670%_)
                                         (_%$%g2718327645%_
                                          _%$%g2718927649%_))))
                                 (_%$%g2718327645%_ _%$%g2718927649%_))))
                         (_%$%g2718327645%_ _%$%g2718927649%_))
                     (_%$%g2718327645%_ _%$%g2718927649%_)))
               (_%$%g2718327645%_ _%$%g2718927649%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2718327645%_
                                                _%$%g2718927649%_))))
                                        (_%$%g2718127899%_
                                         (lambda (_%$%g2718927708%_)
                                           (if (gx#stx-pair? _%$%g2718927708%_)
                                               (let ((_%$%e2726227711%_
                                                      (gx#syntax-e
                                                       _%$%g2718927708%_)))
                                                 (let ((_%$%hd2726327715%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2726227711%_)))
                                                       (_%$%tl2726427718%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2726227711%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2726327715%_)
                                                       (let ((_%$%e2726527721%_
                                                              (gx#stx-e
                                                               _%$%hd2726327715%_)))
                                                         (if (equal? _%$%e2726527721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'vector:)
                     (if (gx#stx-pair? _%$%tl2726427718%_)
                         (let ((_%$%e2726627725%_
                                (gx#syntax-e _%$%tl2726427718%_)))
                           (let ((_%$%hd2726727729%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2726627725%_)))
                                 (_%$%tl2726827732%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2726627725%_))))
                             (if (gx#stx-null? _%$%tl2726827732%_)
                                 ((lambda (_%$%g2726127735%_)
                                    (let* ((_%$%g2775027773%_
                                            (lambda (_%$%g2775127769%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g2775127769%_)))
                                           (_%$%g2774927819%_
                                            (lambda (_%$%g2775127777%_)
                                              (if (gx#stx-pair?
                                                   _%$%g2775127777%_)
                                                  (let ((_%$%e2776127780%_
                                                         (gx#syntax-e
                                                          _%$%g2775127777%_)))
                                                    (let ((_%$%hd2776227784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e2776127780%_)))
                                                          (_%$%tl2776327787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e2776127780%_))))
                                                      (if (gx#stx-datum?
                                                           _%$%hd2776227784%_)
                                                          (let ((_%$%e2776427790%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd2776227784%_)))
                    (if (equal? _%$%e2776427790%_ 'list:)
                        (if (gx#stx-pair? _%$%tl2776327787%_)
                            (let ((_%$%e2776527794%_
                                   (gx#syntax-e _%$%tl2776327787%_)))
                              (let ((_%$%hd2776627798%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2776527794%_)))
                                    (_%$%tl2776727801%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2776527794%_))))
                                (if (gx#stx-null? _%$%tl2776727801%_)
                                    ((lambda (_%$%g2776027804%_)
                                       (cons 'if
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'vector?)
                                                         (cons _%$%g2714827161%_
                                                               '()))
                                                   (cons (_%generate-list-vector25884%_
                                                          _%tgt27140%_
                                                          _%$%g2776027804%_
                                                          'vector->list
                                                          _%K27143%_
                                                          _%E27144%_)
                                                         (cons _%E27144%_
                                                               '())))))
                                     _%$%hd2776627798%_)
                                    (_%$%g2775027773%_ _%$%g2775127777%_))))
                            (_%$%g2775027773%_ _%$%g2775127777%_))
                        (_%$%g2775027773%_ _%$%g2775127777%_)))
                  (_%$%g2775027773%_ _%$%g2775127777%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2775027773%_
                                                   _%$%g2775127777%_))))
                                           (_%$%g2774827895%_
                                            (lambda (_%$%g2775127823%_)
                                              (if (gx#stx-pair?
                                                   _%$%g2775127823%_)
                                                  (let ((_%$%e2775327826%_
                                                         (gx#syntax-e
                                                          _%$%g2775127823%_)))
                                                    (let ((_%$%hd2775427830%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e2775327826%_)))
                                                          (_%$%tl2775527833%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e2775327826%_))))
                                                      (if (gx#stx-datum?
                                                           _%$%hd2775427830%_)
                                                          (let ((_%$%e2775627836%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd2775427830%_)))
                    (if (equal? _%$%e2775627836%_ 'simple:)
                        (if (gx#stx-pair? _%$%tl2775527833%_)
                            (let ((_%$%e2775727840%_
                                   (gx#syntax-e _%$%tl2775527833%_)))
                              (let ((_%$%hd2775827844%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2775727840%_)))
                                    (_%$%tl2775927847%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2775727840%_))))
                                (if (gx#stx-null? _%$%tl2775927847%_)
                                    ((lambda (_%$%g2775227850%_)
                                       (let* ((_%$%g2786427872%_
                                               (lambda (_%$%g2786527868%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g2786527868%_)))
                                              (_%$%g2786327891%_
                                               (lambda (_%$%g2786527876%_)
                                                 ((lambda (_%$%g2786627879%_)
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'vector?)
                              (cons _%$%g2714827161%_ '()))
                        (cons (cons 'if
                                    (cons (cons (gx#datum->syntax '#f '##fx=)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '##vector-length)
                                                            (cons _%$%g2714827161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%$%g2786627879%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_%generate-simple-vector25883%_
                                                 _%tgt27140%_
                                                 _%$%g2775227850%_
                                                 '0
                                                 '##vector-ref
                                                 _%K27143%_
                                                 _%E27144%_)
                                                (cons _%E27144%_ '()))))
                              (cons _%E27144%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%g2786527876%_))))
                                         (_%$%g2786327891%_
                                          (gx#stx-length _%$%g2775227850%_))))
                                     _%$%hd2775827844%_)
                                    (_%$%g2774927819%_ _%$%g2775127823%_))))
                            (_%$%g2774927819%_ _%$%g2775127823%_))
                        (_%$%g2774927819%_ _%$%g2775127823%_)))
                  (_%$%g2774927819%_ _%$%g2775127823%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2774927819%_
                                                   _%$%g2775127823%_)))))
                                      (_%$%g2774827895%_ _%$%g2726127735%_)))
                                  _%$%hd2726727729%_)
                                 (_%$%g2718227704%_ _%$%g2718927708%_))))
                         (_%$%g2718227704%_ _%$%g2718927708%_))
                     (_%$%g2718227704%_ _%$%g2718927708%_)))
               (_%$%g2718227704%_ _%$%g2718927708%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2718227704%_
                                                _%$%g2718927708%_))))
                                        (_%$%g2718028094%_
                                         (lambda (_%$%g2718927903%_)
                                           (if (gx#stx-pair? _%$%g2718927903%_)
                                               (let ((_%$%e2725427906%_
                                                      (gx#syntax-e
                                                       _%$%g2718927903%_)))
                                                 (let ((_%$%hd2725527910%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2725427906%_)))
                                                       (_%$%tl2725627913%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2725427906%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2725527910%_)
                                                       (let ((_%$%e2725727916%_
                                                              (gx#stx-e
                                                               _%$%hd2725527910%_)))
                                                         (if (equal? _%$%e2725727916%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'values:)
                     (if (gx#stx-pair? _%$%tl2725627913%_)
                         (let ((_%$%e2725827920%_
                                (gx#syntax-e _%$%tl2725627913%_)))
                           (let ((_%$%hd2725927924%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2725827920%_)))
                                 (_%$%tl2726027927%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2725827920%_))))
                             (if (gx#stx-null? _%$%tl2726027927%_)
                                 ((lambda (_%$%g2725327930%_)
                                    (let* ((_%$%g2794527968%_
                                            (lambda (_%$%g2794627964%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g2794627964%_)))
                                           (_%$%g2794428014%_
                                            (lambda (_%$%g2794627972%_)
                                              (if (gx#stx-pair?
                                                   _%$%g2794627972%_)
                                                  (let ((_%$%e2795627975%_
                                                         (gx#syntax-e
                                                          _%$%g2794627972%_)))
                                                    (let ((_%$%hd2795727979%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e2795627975%_)))
                                                          (_%$%tl2795827982%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e2795627975%_))))
                                                      (if (gx#stx-datum?
                                                           _%$%hd2795727979%_)
                                                          (let ((_%$%e2795927985%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd2795727979%_)))
                    (if (equal? _%$%e2795927985%_ 'list:)
                        (if (gx#stx-pair? _%$%tl2795827982%_)
                            (let ((_%$%e2796027989%_
                                   (gx#syntax-e _%$%tl2795827982%_)))
                              (let ((_%$%hd2796127993%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2796027989%_)))
                                    (_%$%tl2796227996%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2796027989%_))))
                                (if (gx#stx-null? _%$%tl2796227996%_)
                                    ((lambda (_%$%g2795527999%_)
                                       (_%generate-list-vector25884%_
                                        _%tgt27140%_
                                        _%$%g2795527999%_
                                        'values->list
                                        _%K27143%_
                                        _%E27144%_))
                                     _%$%hd2796127993%_)
                                    (_%$%g2794527968%_ _%$%g2794627972%_))))
                            (_%$%g2794527968%_ _%$%g2794627972%_))
                        (_%$%g2794527968%_ _%$%g2794627972%_)))
                  (_%$%g2794527968%_ _%$%g2794627972%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2794527968%_
                                                   _%$%g2794627972%_))))
                                           (_%$%g2794328090%_
                                            (lambda (_%$%g2794628018%_)
                                              (if (gx#stx-pair?
                                                   _%$%g2794628018%_)
                                                  (let ((_%$%e2794828021%_
                                                         (gx#syntax-e
                                                          _%$%g2794628018%_)))
                                                    (let ((_%$%hd2794928025%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e2794828021%_)))
                                                          (_%$%tl2795028028%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e2794828021%_))))
                                                      (if (gx#stx-datum?
                                                           _%$%hd2794928025%_)
                                                          (let ((_%$%e2795128031%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-e _%$%hd2794928025%_)))
                    (if (equal? _%$%e2795128031%_ 'simple:)
                        (if (gx#stx-pair? _%$%tl2795028028%_)
                            (let ((_%$%e2795228035%_
                                   (gx#syntax-e _%$%tl2795028028%_)))
                              (let ((_%$%hd2795328039%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2795228035%_)))
                                    (_%$%tl2795428042%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2795228035%_))))
                                (if (gx#stx-null? _%$%tl2795428042%_)
                                    ((lambda (_%$%g2794728045%_)
                                       (let* ((_%$%g2805928067%_
                                               (lambda (_%$%g2806028063%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g2806028063%_)))
                                              (_%$%g2805828086%_
                                               (lambda (_%$%g2806028071%_)
                                                 ((lambda (_%$%g2806128074%_)
                                                    (cons 'if
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               '##fx=)
                              (cons (cons (gx#datum->syntax '#f 'values-count)
                                          (cons _%$%g2714827161%_ '()))
                                    (cons _%$%g2806128074%_ '())))
                        (cons (_%generate-simple-vector25883%_
                               _%tgt27140%_
                               _%$%g2794728045%_
                               '0
                               '##values-ref
                               _%K27143%_
                               _%E27144%_)
                              (cons _%E27144%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%g2806028071%_))))
                                         (_%$%g2805828086%_
                                          (gx#stx-length _%$%g2794728045%_))))
                                     _%$%hd2795328039%_)
                                    (_%$%g2794428014%_ _%$%g2794628018%_))))
                            (_%$%g2794428014%_ _%$%g2794628018%_))
                        (_%$%g2794428014%_ _%$%g2794628018%_)))
                  (_%$%g2794428014%_ _%$%g2794628018%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2794428014%_
                                                   _%$%g2794628018%_)))))
                                      (_%$%g2794328090%_ _%$%g2725327930%_)))
                                  _%$%hd2725927924%_)
                                 (_%$%g2718127899%_ _%$%g2718927903%_))))
                         (_%$%g2718127899%_ _%$%g2718927903%_))
                     (_%$%g2718127899%_ _%$%g2718927903%_)))
               (_%$%g2718127899%_ _%$%g2718927903%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2718127899%_
                                                _%$%g2718927903%_))))
                                        (_%$%g2717928170%_
                                         (lambda (_%$%g2718928098%_)
                                           (if (gx#stx-pair? _%$%g2718928098%_)
                                               (let ((_%$%e2724628101%_
                                                      (gx#syntax-e
                                                       _%$%g2718928098%_)))
                                                 (let ((_%$%hd2724728105%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2724628101%_)))
                                                       (_%$%tl2724828108%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2724628101%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2724728105%_)
                                                       (let ((_%$%e2724928111%_
                                                              (gx#stx-e
                                                               _%$%hd2724728105%_)))
                                                         (if (equal? _%$%e2724928111%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'box:)
                     (if (gx#stx-pair? _%$%tl2724828108%_)
                         (let ((_%$%e2725028115%_
                                (gx#syntax-e _%$%tl2724828108%_)))
                           (let ((_%$%hd2725128119%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2725028115%_)))
                                 (_%$%tl2725228122%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2725028115%_))))
                             (if (gx#stx-null? _%$%tl2725228122%_)
                                 ((lambda (_%$%g2724528125%_)
                                    (let* ((_%$%g2813928147%_
                                            (lambda (_%$%g2814028143%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g2814028143%_)))
                                           (_%$%g2813828166%_
                                            (lambda (_%$%g2814028151%_)
                                              ((lambda (_%$%g2814128154%_)
                                                 (cons 'if
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'box?)
                           (cons _%$%g2714827161%_ '()))
                     (cons (cons 'let
                                 (cons (cons (cons _%$%g2814128154%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                '##unbox)
                                                               (cons _%$%g2714827161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())
                                       (cons (_%generate125880%_
                                              _%$%g2814128154%_
                                              _%$%g2724528125%_
                                              _%K27143%_
                                              _%E27144%_)
                                             '())))
                           (cons _%E27144%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%g2814028151%_))))
                                      (_%$%g2813828166%_ (gx#genident 'e))))
                                  _%$%hd2725128119%_)
                                 (_%$%g2718028094%_ _%$%g2718928098%_))))
                         (_%$%g2718028094%_ _%$%g2718928098%_))
                     (_%$%g2718028094%_ _%$%g2718928098%_)))
               (_%$%g2718028094%_ _%$%g2718928098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2718028094%_
                                                _%$%g2718928098%_))))
                                        (_%$%g2717828229%_
                                         (lambda (_%$%g2718928174%_)
                                           (if (gx#stx-pair? _%$%g2718928174%_)
                                               (let ((_%$%e2723528177%_
                                                      (gx#syntax-e
                                                       _%$%g2718928174%_)))
                                                 (let ((_%$%hd2723628181%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2723528177%_)))
                                                       (_%$%tl2723728184%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2723528177%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2723628181%_)
                                                       (let ((_%$%e2723828187%_
                                                              (gx#stx-e
                                                               _%$%hd2723628181%_)))
                                                         (if (equal? _%$%e2723828187%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'splice:)
                     (if (gx#stx-pair? _%$%tl2723728184%_)
                         (let ((_%$%e2723928191%_
                                (gx#syntax-e _%$%tl2723728184%_)))
                           (let ((_%$%hd2724028195%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2723928191%_)))
                                 (_%$%tl2724128198%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2723928191%_))))
                             (if (gx#stx-pair? _%$%tl2724128198%_)
                                 (let ((_%$%e2724228201%_
                                        (gx#syntax-e _%$%tl2724128198%_)))
                                   (let ((_%$%hd2724328205%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e2724228201%_)))
                                         (_%$%tl2724428208%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e2724228201%_))))
                                     (if (gx#stx-null? _%$%tl2724428208%_)
                                         ((lambda (_%$%g2723328211%_
                                                   _%$%g2723428213%_)
                                            (_%generate-splice25882%_
                                             _%tgt27140%_
                                             _%$%g2723428213%_
                                             _%$%g2723328211%_
                                             _%K27143%_
                                             _%E27144%_))
                                          _%$%hd2724328205%_
                                          _%$%hd2724028195%_)
                                         (_%$%g2717928170%_
                                          _%$%g2718928174%_))))
                                 (_%$%g2717928170%_ _%$%g2718928174%_))))
                         (_%$%g2717928170%_ _%$%g2718928174%_))
                     (_%$%g2717928170%_ _%$%g2718928174%_)))
               (_%$%g2717928170%_ _%$%g2718928174%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2717928170%_
                                                _%$%g2718928174%_))))
                                        (_%$%g2717728254%_
                                         (lambda (_%$%g2718928233%_)
                                           (if (gx#stx-pair? _%$%g2718928233%_)
                                               (let ((_%$%e2722928236%_
                                                      (gx#syntax-e
                                                       _%$%g2718928233%_)))
                                                 (let ((_%$%hd2723028240%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2722928236%_)))
                                                       (_%$%tl2723128243%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2722928236%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2723028240%_)
                                                       (let ((_%$%e2723228246%_
                                                              (gx#stx-e
                                                               _%$%hd2723028240%_)))
                                                         (if (equal? _%$%e2723228246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'null:)
                     (if (gx#stx-null? _%$%tl2723128243%_)
                         ((lambda ()
                            (cons 'if
                                  (cons (cons (gx#datum->syntax '#f 'null?)
                                              (cons _%$%g2714827161%_ '()))
                                        (cons _%K27143%_
                                              (cons _%E27144%_ '()))))))
                         (_%$%g2717828229%_ _%$%g2718928233%_))
                     (_%$%g2717828229%_ _%$%g2718928233%_)))
               (_%$%g2717828229%_ _%$%g2718928233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2717828229%_
                                                _%$%g2718928233%_))))
                                        (_%$%g2717628390%_
                                         (lambda (_%$%g2718928258%_)
                                           (if (gx#stx-pair? _%$%g2718928258%_)
                                               (let ((_%$%e2721928261%_
                                                      (gx#syntax-e
                                                       _%$%g2718928258%_)))
                                                 (let ((_%$%hd2722028265%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2721928261%_)))
                                                       (_%$%tl2722128268%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2721928261%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2722028265%_)
                                                       (let ((_%$%e2722228271%_
                                                              (gx#stx-e
                                                               _%$%hd2722028265%_)))
                                                         (if (equal? _%$%e2722228271%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'cons:)
                     (if (gx#stx-pair? _%$%tl2722128268%_)
                         (let ((_%$%e2722328275%_
                                (gx#syntax-e _%$%tl2722128268%_)))
                           (let ((_%$%hd2722428279%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2722328275%_)))
                                 (_%$%tl2722528282%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2722328275%_))))
                             (if (gx#stx-pair? _%$%tl2722528282%_)
                                 (let ((_%$%e2722628285%_
                                        (gx#syntax-e _%$%tl2722528282%_)))
                                   (let ((_%$%hd2722728289%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e2722628285%_)))
                                         (_%$%tl2722828292%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e2722628285%_))))
                                     (if (gx#stx-null? _%$%tl2722828292%_)
                                         ((lambda (_%$%g2721728295%_
                                                   _%$%g2721828297%_)
                                            (let* ((_%$%g2831428329%_
                                                    (lambda (_%$%g2831528325%_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _%$%g2831528325%_)))
                                                   (_%$%g2831328386%_
                                                    (lambda (_%$%g2831528333%_)
                                                      (if (gx#stx-pair?
                                                           _%$%g2831528333%_)
                                                          (let ((_%$%e2831828336%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%g2831528333%_)))
                    (let ((_%$%hd2831928340%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e2831828336%_)))
                          (_%$%tl2832028343%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e2831828336%_))))
                      (if (gx#stx-pair? _%$%tl2832028343%_)
                          (let ((_%$%e2832128346%_
                                 (gx#syntax-e _%$%tl2832028343%_)))
                            (let ((_%$%hd2832228350%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2832128346%_)))
                                  (_%$%tl2832328353%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2832128346%_))))
                              (if (gx#stx-null? _%$%tl2832328353%_)
                                  ((lambda (_%$%g2831628356%_
                                            _%$%g2831728358%_)
                                     (cons 'if
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'pair?)
                                                       (cons _%$%g2714827161%_
                                                             '()))
                                                 (cons (let ((_%hd-pat28374%_
                                                              (gx#stx-e
                                                               _%$%g2721828297%_))
                                                             (_%tl-pat28376%_
                                                              (gx#stx-e
                                                               _%$%g2721728295%_)))
                                                         (if (and (equal? _%hd-pat28374%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '(any:))
                          (equal? _%tl-pat28376%_ '(any:)))
                     _%K27143%_
                     (if (equal? _%tl-pat28376%_ '(any:))
                         (cons 'let
                               (cons (cons (cons _%$%g2831728358%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%$%g2714827161%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())
                                     (cons (_%generate125880%_
                                            _%$%g2831728358%_
                                            _%$%g2721828297%_
                                            _%K27143%_
                                            _%E27144%_)
                                           '())))
                         (if (equal? _%hd-pat28374%_ '(any:))
                             (cons 'let
                                   (cons (cons (cons _%$%g2831628356%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##cdr)
                         (cons _%$%g2714827161%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons (_%generate125880%_
                                                _%$%g2831628356%_
                                                _%$%g2721728295%_
                                                _%K27143%_
                                                _%E27144%_)
                                               '())))
                             (cons 'let
                                   (cons (cons (cons _%$%g2831728358%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '##car)
                         (cons _%$%g2714827161%_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons (cons _%$%g2831628356%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '##cdr)
                               (cons _%$%g2714827161%_ '()))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (_%generate125880%_
                                                _%$%g2831728358%_
                                                _%$%g2721828297%_
                                                (_%generate125880%_
                                                 _%$%g2831628356%_
                                                 _%$%g2721728295%_
                                                 _%K27143%_
                                                 _%E27144%_)
                                                _%E27144%_)
                                               '())))))))
               (cons _%E27144%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _%$%hd2832228350%_
                                   _%$%hd2831928340%_)
                                  (_%$%g2831428329%_ _%$%g2831528333%_))))
                          (_%$%g2831428329%_ _%$%g2831528333%_))))
                  (_%$%g2831428329%_ _%$%g2831528333%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2831328386%_
                                               (list (gx#genident 'hd)
                                                     (gx#genident 'tl)))))
                                          _%$%hd2722728289%_
                                          _%$%hd2722428279%_)
                                         (_%$%g2717728254%_
                                          _%$%g2718928258%_))))
                                 (_%$%g2717728254%_ _%$%g2718928258%_))))
                         (_%$%g2717728254%_ _%$%g2718928258%_))
                     (_%$%g2717728254%_ _%$%g2718928258%_)))
               (_%$%g2717728254%_ _%$%g2718928258%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2717728254%_
                                                _%$%g2718928258%_))))
                                        (_%$%g2717528435%_
                                         (lambda (_%$%g2718928394%_)
                                           (if (gx#stx-pair? _%$%g2718928394%_)
                                               (let ((_%$%e2721028397%_
                                                      (gx#syntax-e
                                                       _%$%g2718928394%_)))
                                                 (let ((_%$%hd2721128401%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2721028397%_)))
                                                       (_%$%tl2721228404%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2721028397%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2721128401%_)
                                                       (let ((_%$%e2721328407%_
                                                              (gx#stx-e
                                                               _%$%hd2721128401%_)))
                                                         (if (equal? _%$%e2721328407%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'not:)
                     (if (gx#stx-pair? _%$%tl2721228404%_)
                         (let ((_%$%e2721428411%_
                                (gx#syntax-e _%$%tl2721228404%_)))
                           (let ((_%$%hd2721528415%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2721428411%_)))
                                 (_%$%tl2721628418%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2721428411%_))))
                             (if (gx#stx-null? _%$%tl2721628418%_)
                                 ((lambda (_%$%g2720928421%_)
                                    (_%generate125880%_
                                     _%tgt27140%_
                                     _%$%g2720928421%_
                                     _%E27144%_
                                     _%K27143%_))
                                  _%$%hd2721528415%_)
                                 (_%$%g2717628390%_ _%$%g2718928394%_))))
                         (_%$%g2717628390%_ _%$%g2718928394%_))
                     (_%$%g2717628390%_ _%$%g2718928394%_)))
               (_%$%g2717628390%_ _%$%g2718928394%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2717628390%_
                                                _%$%g2718928394%_))))
                                        (_%$%g2717428528%_
                                         (lambda (_%$%g2718928439%_)
                                           (if (gx#stx-pair? _%$%g2718928439%_)
                                               (let ((_%$%e2720528442%_
                                                      (gx#syntax-e
                                                       _%$%g2718928439%_)))
                                                 (let ((_%$%hd2720628446%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2720528442%_)))
                                                       (_%$%tl2720728449%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2720528442%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2720628446%_)
                                                       (let ((_%$%e2720828452%_
                                                              (gx#stx-e
                                                               _%$%hd2720628446%_)))
                                                         (if (equal? _%$%e2720828452%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'or:)
                     ((lambda (_%$%g2720428456%_)
                        (let* ((_%$%g2846928481%_
                                (lambda (_%$%g2847028477%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g2847028477%_)))
                               (_%$%g2846828492%_
                                (lambda (_%$%g2847028485%_)
                                  ((lambda () _%E27144%_))))
                               (_%$%g2846728524%_
                                (lambda (_%$%g2847028496%_)
                                  (if (gx#stx-pair? _%$%g2847028496%_)
                                      (let ((_%$%e2847328499%_
                                             (gx#syntax-e _%$%g2847028496%_)))
                                        (let ((_%$%hd2847428503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2847328499%_)))
                                              (_%$%tl2847528506%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2847328499%_))))
                                          ((lambda (_%$%g2847128509%_
                                                    _%$%g2847228511%_)
                                             (_%generate125880%_
                                              _%tgt27140%_
                                              _%$%g2847228511%_
                                              _%K27143%_
                                              (_%generate125880%_
                                               _%tgt27140%_
                                               (cons 'or: _%$%g2847128509%_)
                                               _%K27143%_
                                               _%E27144%_)))
                                           _%$%tl2847528506%_
                                           _%$%hd2847428503%_)))
                                      (_%$%g2846828492%_ _%$%g2847028496%_)))))
                          (_%$%g2846728524%_ _%$%g2720428456%_)))
                      _%$%tl2720728449%_)
                     (_%$%g2717528435%_ _%$%g2718928439%_)))
               (_%$%g2717528435%_ _%$%g2718928439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2717528435%_
                                                _%$%g2718928439%_))))
                                        (_%$%g2717328621%_
                                         (lambda (_%$%g2718928532%_)
                                           (if (gx#stx-pair? _%$%g2718928532%_)
                                               (let ((_%$%e2720028535%_
                                                      (gx#syntax-e
                                                       _%$%g2718928532%_)))
                                                 (let ((_%$%hd2720128539%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2720028535%_)))
                                                       (_%$%tl2720228542%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2720028535%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2720128539%_)
                                                       (let ((_%$%e2720328545%_
                                                              (gx#stx-e
                                                               _%$%hd2720128539%_)))
                                                         (if (equal? _%$%e2720328545%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             'and:)
                     ((lambda (_%$%g2719928549%_)
                        (let* ((_%$%g2856228574%_
                                (lambda (_%$%g2856328570%_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%$%g2856328570%_)))
                               (_%$%g2856128585%_
                                (lambda (_%$%g2856328578%_)
                                  ((lambda () _%K27143%_))))
                               (_%$%g2856028617%_
                                (lambda (_%$%g2856328589%_)
                                  (if (gx#stx-pair? _%$%g2856328589%_)
                                      (let ((_%$%e2856628592%_
                                             (gx#syntax-e _%$%g2856328589%_)))
                                        (let ((_%$%hd2856728596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2856628592%_)))
                                              (_%$%tl2856828599%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2856628592%_))))
                                          ((lambda (_%$%g2856428602%_
                                                    _%$%g2856528604%_)
                                             (_%generate125880%_
                                              _%tgt27140%_
                                              _%$%g2856528604%_
                                              (_%generate125880%_
                                               _%tgt27140%_
                                               (cons 'and: _%$%g2856428602%_)
                                               _%K27143%_
                                               _%E27144%_)
                                              _%E27144%_))
                                           _%$%tl2856828599%_
                                           _%$%hd2856728596%_)))
                                      (_%$%g2856128585%_ _%$%g2856328589%_)))))
                          (_%$%g2856028617%_ _%$%g2719928549%_)))
                      _%$%tl2720228542%_)
                     (_%$%g2717428528%_ _%$%g2718928532%_)))
               (_%$%g2717428528%_ _%$%g2718928532%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2717428528%_
                                                _%$%g2718928532%_))))
                                        (_%$%g2717228933%_
                                         (lambda (_%$%g2718928625%_)
                                           (if (gx#stx-pair? _%$%g2718928625%_)
                                               (let ((_%$%e2719228628%_
                                                      (gx#syntax-e
                                                       _%$%g2718928625%_)))
                                                 (let ((_%$%hd2719328632%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2719228628%_)))
                                                       (_%$%tl2719428635%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2719228628%_))))
                                                   (if (gx#stx-datum?
                                                        _%$%hd2719328632%_)
                                                       (let ((_%$%e2719528638%_
                                                              (gx#stx-e
                                                               _%$%hd2719328632%_)))
                                                         (if (equal? _%$%e2719528638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '?:)
                     (if (gx#stx-pair? _%$%tl2719428635%_)
                         (let ((_%$%e2719628642%_
                                (gx#syntax-e _%$%tl2719428635%_)))
                           (let ((_%$%hd2719728646%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2719628642%_)))
                                 (_%$%tl2719828649%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2719628642%_))))
                             ((lambda (_%$%g2719028652%_ _%$%g2719128654%_)
                                (let* ((_%$%g2867128706%_
                                        (lambda (_%$%g2867228702%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2867228702%_)))
                                       (_%$%g2867028814%_
                                        (lambda (_%$%g2867228710%_)
                                          (if (gx#stx-pair? _%$%g2867228710%_)
                                              (let ((_%$%e2868728713%_
                                                     (gx#syntax-e
                                                      _%$%g2867228710%_)))
                                                (let ((_%$%hd2868828717%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e2868728713%_)))
                                                      (_%$%tl2868928720%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e2868728713%_))))
                                                  (if (gx#stx-datum?
                                                       _%$%hd2868828717%_)
                                                      (let ((_%$%e2869028723%_
                                                             (gx#stx-e
                                                              _%$%hd2868828717%_)))
                                                        (if (equal? _%$%e2869028723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '::)
                    (if (gx#stx-pair? _%$%tl2868928720%_)
                        (let ((_%$%e2869128727%_
                               (gx#syntax-e _%$%tl2868928720%_)))
                          (let ((_%$%hd2869228731%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2869128727%_)))
                                (_%$%tl2869328734%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2869128727%_))))
                            (if (gx#stx-pair? _%$%tl2869328734%_)
                                (let ((_%$%e2869428737%_
                                       (gx#syntax-e _%$%tl2869328734%_)))
                                  (let ((_%$%hd2869528741%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2869428737%_)))
                                        (_%$%tl2869628744%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2869428737%_))))
                                    (if (gx#stx-datum? _%$%hd2869528741%_)
                                        (let ((_%$%e2869728747%_
                                               (gx#stx-e _%$%hd2869528741%_)))
                                          (if (equal? _%$%e2869728747%_ '=>:)
                                              (if (gx#stx-pair?
                                                   _%$%tl2869628744%_)
                                                  (let ((_%$%e2869828751%_
                                                         (gx#syntax-e
                                                          _%$%tl2869628744%_)))
                                                    (let ((_%$%hd2869928755%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e2869828751%_)))
                                                          (_%$%tl2870028758%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e2869828751%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl2870028758%_)
                                                          ((lambda (_%$%g2868528761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g2868628763%_)
                     (let* ((_%$%g2878328791%_
                             (lambda (_%$%g2878428787%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g2878428787%_)))
                            (_%$%g2878228810%_
                             (lambda (_%$%g2878428795%_)
                               ((lambda (_%$%g2878528798%_)
                                  (cons 'if
                                        (cons (cons (gx#datum->syntax '#f '?)
                                                    (cons _%$%g2719128654%_
                                                          (cons _%$%g2714827161%_
                                                                '())))
                                              (cons (cons 'let
                                                          (cons (cons (cons _%$%g2878528798%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons _%$%g2868628763%_
                                                (cons _%$%g2714827161%_ '()))
                                          '()))
                              '())
                        (cons (_%generate125880%_
                               _%$%g2878528798%_
                               _%$%g2868528761%_
                               _%K27143%_
                               _%E27144%_)
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons _%E27144%_ '())))))
                                _%$%g2878428795%_))))
                       (_%$%g2878228810%_ (gx#genident 'e))))
                   _%$%hd2869928755%_
                   _%$%hd2869228731%_)
                  (_%$%g2867128706%_ _%$%g2867228710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2867128706%_
                                                   _%$%g2867228710%_))
                                              (_%$%g2867128706%_
                                               _%$%g2867228710%_)))
                                        (_%$%g2867128706%_
                                         _%$%g2867228710%_))))
                                (_%$%g2867128706%_ _%$%g2867228710%_))))
                        (_%$%g2867128706%_ _%$%g2867228710%_))
                    (_%$%g2867128706%_ _%$%g2867228710%_)))
              (_%$%g2867128706%_ _%$%g2867228710%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2867128706%_
                                               _%$%g2867228710%_))))
                                       (_%$%g2866928890%_
                                        (lambda (_%$%g2867228818%_)
                                          (if (gx#stx-pair? _%$%g2867228818%_)
                                              (let ((_%$%e2867828821%_
                                                     (gx#syntax-e
                                                      _%$%g2867228818%_)))
                                                (let ((_%$%hd2867928825%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e2867828821%_)))
                                                      (_%$%tl2868028828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e2867828821%_))))
                                                  (if (gx#stx-datum?
                                                       _%$%hd2867928825%_)
                                                      (let ((_%$%e2868128831%_
                                                             (gx#stx-e
                                                              _%$%hd2867928825%_)))
                                                        (if (equal? _%$%e2868128831%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '=>:)
                    (if (gx#stx-pair? _%$%tl2868028828%_)
                        (let ((_%$%e2868228835%_
                               (gx#syntax-e _%$%tl2868028828%_)))
                          (let ((_%$%hd2868328839%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e2868228835%_)))
                                (_%$%tl2868428842%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e2868228835%_))))
                            (if (gx#stx-null? _%$%tl2868428842%_)
                                ((lambda (_%$%g2867728845%_)
                                   (let* ((_%$%g2885928867%_
                                           (lambda (_%$%g2886028863%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g2886028863%_)))
                                          (_%$%g2885828886%_
                                           (lambda (_%$%g2886028871%_)
                                             ((lambda (_%$%g2886128874%_)
                                                (cons 'let
                                                      (cons (cons (cons _%$%g2886128874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (cons (cons _%$%g2719128654%_
                                            (cons _%$%g2714827161%_ '()))
                                      '()))
                          '())
                    (cons (cons 'if
                                (cons _%$%g2886128874%_
                                      (cons (_%generate125880%_
                                             _%$%g2886128874%_
                                             _%$%g2867728845%_
                                             _%K27143%_
                                             _%E27144%_)
                                            (cons _%E27144%_ '()))))
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%$%g2886028871%_))))
                                     (_%$%g2885828886%_ (gx#genident 'e))))
                                 _%$%hd2868328839%_)
                                (_%$%g2867028814%_ _%$%g2867228818%_))))
                        (_%$%g2867028814%_ _%$%g2867228818%_))
                    (_%$%g2867028814%_ _%$%g2867228818%_)))
              (_%$%g2867028814%_ _%$%g2867228818%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2867028814%_
                                               _%$%g2867228818%_))))
                                       (_%$%g2866828918%_
                                        (lambda (_%$%g2867228894%_)
                                          (if (gx#stx-pair? _%$%g2867228894%_)
                                              (let ((_%$%e2867428897%_
                                                     (gx#syntax-e
                                                      _%$%g2867228894%_)))
                                                (let ((_%$%hd2867528901%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e2867428897%_)))
                                                      (_%$%tl2867628904%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e2867428897%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2867628904%_)
                                                      ((lambda (_%$%g2867328907%_)
                                                         (cons 'if
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    '?)
                                   (cons _%$%g2719128654%_
                                         (cons _%$%g2714827161%_ '())))
                             (cons (_%generate125880%_
                                    _%tgt27140%_
                                    _%$%g2867328907%_
                                    _%K27143%_
                                    _%E27144%_)
                                   (cons _%E27144%_ '())))))
               _%$%hd2867528901%_)
              (_%$%g2866928890%_ _%$%g2867228894%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2866928890%_
                                               _%$%g2867228894%_))))
                                       (_%$%g2866728929%_
                                        (lambda (_%$%g2867228922%_)
                                          (if (gx#stx-null? _%$%g2867228922%_)
                                              ((lambda ()
                                                 (cons 'if
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '?)
                           (cons _%$%g2719128654%_
                                 (cons _%$%g2714827161%_ '())))
                     (cons _%K27143%_ (cons _%E27144%_ '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2866828918%_
                                               _%$%g2867228922%_)))))
                                  (_%$%g2866728929%_ _%$%g2719028652%_)))
                              _%$%tl2719828649%_
                              _%$%hd2719728646%_)))
                         (_%$%g2717328621%_ _%$%g2718928625%_))
                     (_%$%g2717328621%_ _%$%g2718928625%_)))
               (_%$%g2717328621%_ _%$%g2718928625%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2717328621%_
                                                _%$%g2718928625%_)))))
                                   (_%$%g2717228933%_ _%ptree27142%_)))
                               _%$%g2714727158%_))))
                      (_%$%g2714528937%_ _%tgt27140%_))))
                 (_%generate-splice25882%_
                  (lambda (_%tgt26518%_
                           _%hd26520%_
                           _%rest26521%_
                           _%K26522%_
                           _%E26523%_)
                    (let* ((_%$%g2652526542%_
                            (lambda (_%$%g2652626538%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2652626538%_)))
                           (_%$%g2652427136%_
                            (lambda (_%$%g2652626546%_)
                              (if (gx#stx-pair/null? _%$%g2652626546%_)
                                  (let ((_g34291_
                                         (gx#syntax-split-splice
                                          _%$%g2652626546%_
                                          '0)))
                                    (begin
                                      (let ((_g34292_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g34291_)
                                                   (##values-length _g34291_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g34292_ 2)))
                                            (error "Context expects 2 values"
                                                   _g34292_)))
                                      (let ((_%$%target2652826549%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g34291_ 0)))
                                            (_%$%tl2653026552%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g34291_ 1))))
                                        (if (gx#stx-null? _%$%tl2653026552%_)
                                            (letrec ((_%$%loop2653126555%_
                                                      (lambda (_%$%hd2652926559%_
                                                               _%$%var2653526562%_)
                                                        (if (gx#stx-pair?
                                                             _%$%hd2652926559%_)
                                                            (let ((_%$%e2653226564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%hd2652926559%_)))
                      (let ((_%$%lp-hd2653326568%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2653226564%_)))
                            (_%$%lp-tl2653426571%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2653226564%_))))
                        (_%$%loop2653126555%_
                         _%$%lp-tl2653426571%_
                         (cons _%$%lp-hd2653326568%_ _%$%var2653526562%_))))
                    (let ((_%$%var2653626574%_ (reverse _%$%var2653526562%_)))
                      ((lambda (_%$%g2652726577%_)
                         (let* ((_%$%g2659326610%_
                                 (lambda (_%$%g2659426606%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%$%g2659426606%_)))
                                (_%$%g2659227124%_
                                 (lambda (_%$%g2659426614%_)
                                   (if (gx#stx-pair/null? _%$%g2659426614%_)
                                       (let ((_g34293_
                                              (gx#syntax-split-splice
                                               _%$%g2659426614%_
                                               '0)))
                                         (begin
                                           (let ((_g34294_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g34293_)
                                                        (##values-length
                                                         _g34293_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g34294_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g34294_)))
                                           (let ((_%$%target2659626617%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g34293_ 0)))
                                                 (_%$%tl2659826620%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g34293_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%$%tl2659826620%_)
                                                 (letrec ((_%$%loop2659926623%_
                                                           (lambda (_%$%hd2659726627%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%var-r2660326630%_)
                     (if (gx#stx-pair? _%$%hd2659726627%_)
                         (let ((_%$%e2660026632%_
                                (gx#syntax-e _%$%hd2659726627%_)))
                           (let ((_%$%lp-hd2660126636%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2660026632%_)))
                                 (_%$%lp-tl2660226639%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2660026632%_))))
                             (_%$%loop2659926623%_
                              _%$%lp-tl2660226639%_
                              (cons _%$%lp-hd2660126636%_
                                    _%$%var-r2660326630%_))))
                         (let ((_%$%var-r2660426642%_
                                (reverse _%$%var-r2660326630%_)))
                           ((lambda (_%$%g2659526645%_)
                              (let* ((_%$%g2666226679%_
                                      (lambda (_%$%g2666326675%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%$%g2666326675%_)))
                                     (_%$%g2666127112%_
                                      (lambda (_%$%g2666326683%_)
                                        (if (gx#stx-pair/null?
                                             _%$%g2666326683%_)
                                            (let ((_g34295_
                                                   (gx#syntax-split-splice
                                                    _%$%g2666326683%_
                                                    '0)))
                                              (begin
                                                (let ((_g34296_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g34295_)
                                                             (##values-length
                                                              _g34295_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g34296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g34296_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%$%target2666526686%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34295_
                                                          0)))
                                                      (_%$%tl2666726689%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g34295_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%$%tl2666726689%_)
                                                      (letrec ((_%$%loop2666826692%_
                                                                (lambda (_%$%hd2666626696%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%$%init2667226699%_)
                          (if (gx#stx-pair? _%$%hd2666626696%_)
                              (let ((_%$%e2666926701%_
                                     (gx#syntax-e _%$%hd2666626696%_)))
                                (let ((_%$%lp-hd2667026705%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2666926701%_)))
                                      (_%$%lp-tl2667126708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2666926701%_))))
                                  (_%$%loop2666826692%_
                                   _%$%lp-tl2667126708%_
                                   (cons _%$%lp-hd2667026705%_
                                         _%$%init2667226699%_))))
                              (let ((_%$%init2667326711%_
                                     (reverse _%$%init2667226699%_)))
                                ((lambda (_%$%g2666426714%_)
                                   (let* ((_%$%g2673126739%_
                                           (lambda (_%$%g2673226735%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g2673226735%_)))
                                          (_%$%g2673027108%_
                                           (lambda (_%$%g2673226743%_)
                                             ((lambda (_%$%g2673326746%_)
                                                (let* ((_%$%g2675926767%_
                                                        (lambda (_%$%g2676026763%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%$%g2676026763%_)))
                                                       (_%$%g2675827104%_
                                                        (lambda (_%$%g2676026771%_)
                                                          ((lambda (_%$%g2676126774%_)
                                                             (let* ((_%$%g2678726795%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%$%g2678826791%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%$%g2678826791%_)))
                            (_%$%g2678627100%_
                             (lambda (_%$%g2678826799%_)
                               ((lambda (_%$%g2678926802%_)
                                  (let* ((_%$%g2681526823%_
                                          (lambda (_%$%g2681626819%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g2681626819%_)))
                                         (_%$%g2681427096%_
                                          (lambda (_%$%g2681626827%_)
                                            ((lambda (_%$%g2681726830%_)
                                               (let* ((_%$%g2684326851%_
                                                       (lambda (_%$%g2684426847%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g2684426847%_)))
                                                      (_%$%g2684227092%_
                                                       (lambda (_%$%g2684426855%_)
                                                         ((lambda (_%$%g2684526858%_)
                                                            (let* ((_%$%g2687126879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2687226875%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2687226875%_)))
                           (_%$%g2687027088%_
                            (lambda (_%$%g2687226883%_)
                              ((lambda (_%$%g2687326886%_)
                                 (let* ((_%$%g2689926907%_
                                         (lambda (_%$%g2690026903%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2690026903%_)))
                                        (_%$%g2689827084%_
                                         (lambda (_%$%g2690026911%_)
                                           ((lambda (_%$%g2690126914%_)
                                              (let* ((_%$%g2692726935%_
                                                      (lambda (_%$%g2692826931%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g2692826931%_)))
                                                     (_%$%g2692627069%_
                                                      (lambda (_%$%g2692826939%_)
                                                        ((lambda (_%$%g2692926942%_)
                                                           (let* ((_%$%g2695526963%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%g2695626959%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g2695626959%_)))
                          (_%$%g2695427057%_
                           (lambda (_%$%g2695626967%_)
                             ((lambda (_%$%g2695726970%_)
                                (let* ((_%$%g2698326991%_
                                        (lambda (_%$%g2698426987%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2698426987%_)))
                                       (_%$%g2698227053%_
                                        (lambda (_%$%g2698426995%_)
                                          ((lambda (_%$%g2698526998%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'letrec)
                                                   (cons (cons (cons _%$%g2676126774%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%$%g2687326886%_
                                                     (foldr (lambda (_%$%g2701227023%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g2701327026%_)
                      (cons _%$%g2701227023%_ _%$%g2701327026%_))
                    '()
                    _%$%g2652726577%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (cons _%$%g2690126914%_ '())))
                                   '()))
                       (cons (cons _%$%g2681726830%_
                                   (cons (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons _%$%g2684526858%_
                                                           (cons _%$%g2687326886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%$%g2701427029%_ _%$%g2701527032%_)
                                  (cons _%$%g2701427029%_ _%$%g2701527032%_))
                                '()
                                _%$%g2659526645%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g2698526998%_
                                                           '())))
                                         '()))
                             (cons (cons _%$%g2678926802%_
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons (cons _%$%g2687326886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (foldr (lambda (_%$%g2701627035%_ _%$%g2701727038%_)
                                  (cons _%$%g2701627035%_ _%$%g2701727038%_))
                                '()
                                _%$%g2659526645%_))
                   (cons (cons (gx#datum->syntax '#f 'if)
                               (cons (cons (gx#datum->syntax '#f 'pair?)
                                           (cons _%$%g2687326886%_ '()))
                                     (cons (cons _%$%g2681726830%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '##car)
                                                             (cons _%$%g2687326886%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons _%$%g2687326886%_
                     (foldr (lambda (_%$%g2701827041%_ _%$%g2701927044%_)
                              (cons _%$%g2701827041%_ _%$%g2701927044%_))
                            '()
                            _%$%g2659526645%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons _%$%g2695726970%_ '()))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   '())))
                 (cons (cons _%$%g2678926802%_
                             (cons _%$%g2673326746%_
                                   (foldr (lambda (_%$%g2702027047%_
                                                   _%$%g2702127050%_)
                                            (cons _%$%g2702027047%_
                                                  _%$%g2702127050%_))
                                          '()
                                          _%$%g2666426714%_)))
                       '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%g2698426995%_))))
                                  (_%$%g2698227053%_
                                   (_%generate125880%_
                                    _%$%g2684526858%_
                                    _%hd26520%_
                                    _%$%g2692926942%_
                                    _%$%g2695726970%_))))
                              _%$%g2695626967%_))))
                     (_%$%g2695427057%_
                      (cons _%$%g2676126774%_
                            (cons _%$%g2687326886%_
                                  (foldr (lambda (_%$%g2706027063%_
                                                  _%$%g2706127066%_)
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'reverse)
                                                       (cons _%$%g2706027063%_
                                                             '()))
                                                 _%$%g2706127066%_))
                                         '()
                                         _%$%g2659526645%_))))))
                 _%$%g2692826939%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2692627069%_
                                                 (cons _%$%g2678926802%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '##cdr)
                           (cons _%$%g2687326886%_ '()))
                     (begin
                       (gx#syntax-check-splice-targets
                        _%$%g2659526645%_
                        _%$%g2652726577%_)
                       (foldr (lambda (_%$%g2707227076%_
                                       _%$%g2707327079%_
                                       _%$%g2707427081%_)
                                (cons (cons (gx#datum->syntax '#f 'cons)
                                            (cons _%$%g2707327079%_
                                                  (cons _%$%g2707227076%_
                                                        '())))
                                      _%$%g2707427081%_))
                              '()
                              _%$%g2659526645%_
                              _%$%g2652726577%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%$%g2690026911%_))))
                                   (_%$%g2689827084%_
                                    (_%generate125880%_
                                     _%$%g2687326886%_
                                     _%rest26521%_
                                     _%K26522%_
                                     _%E26523%_))))
                               _%$%g2687226883%_))))
                      (_%$%g2687027088%_ (gx#genident 'rest))))
                  _%$%g2684426855%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2684227092%_
                                                  (gx#genident 'hd))))
                                             _%$%g2681626827%_))))
                                    (_%$%g2681427096%_
                                     (gx#genident 'splice-try))))
                                _%$%g2678826799%_))))
                       (_%$%g2678627100%_ (gx#genident 'splice-loop))))
                   _%$%g2676026771%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2675827104%_
                                                   (gx#genident
                                                    'splice-rest))))
                                              _%$%g2673226743%_))))
                                     (_%$%g2673027108%_ _%tgt26518%_)))
                                 _%$%init2667326711%_))))))
                (_%$%loop2666826692%_ _%$%target2666526686%_ '()))
              (_%$%g2666226679%_ _%$%g2666326683%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2666226679%_
                                             _%$%g2666326683%_)))))
                                (_%$%g2666127112%_
                                 (make-list
                                  (gx#stx-length
                                   (foldr (lambda (_%$%g2711527118%_
                                                   _%$%g2711627121%_)
                                            (cons _%$%g2711527118%_
                                                  _%$%g2711627121%_))
                                          '()
                                          _%$%g2652726577%_))
                                  (cons (gx#datum->syntax '#f '@list) '())))))
                            _%$%var-r2660426642%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%loop2659926623%_
                                                    _%$%target2659626617%_
                                                    '()))
                                                 (_%$%g2659326610%_
                                                  _%$%g2659426614%_)))))
                                       (_%$%g2659326610%_
                                        _%$%g2659426614%_)))))
                           (_%$%g2659227124%_
                            (gx#gentemps
                             (foldr (lambda (_%$%g2712727130%_
                                             _%$%g2712827133%_)
                                      (cons _%$%g2712727130%_
                                            _%$%g2712827133%_))
                                    '()
                                    _%$%g2652726577%_)))))
                       _%$%var2653626574%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%loop2653126555%_
                                               _%$%target2652826549%_
                                               '()))
                                            (_%$%g2652526542%_
                                             _%$%g2652626546%_)))))
                                  (_%$%g2652526542%_ _%$%g2652626546%_)))))
                      (_%$%g2652427136%_
                       (|gerbil/core/match[1]#match-pattern-vars|
                        _%hd26520%_)))))
                 (_%generate-simple-vector25883%_
                  (lambda (_%tgt26341%_
                           _%body26343%_
                           _%start26344%_
                           _%ref26345%_
                           _%K26346%_
                           _%E26347%_)
                    (let _%recur26349%_ ((_%rest26352%_ _%body26343%_)
                                         (_%off26354%_ _%start26344%_))
                      (let* ((_%$%g2635726369%_
                              (lambda (_%$%g2635826365%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2635826365%_)))
                             (_%$%g2635626380%_
                              (lambda (_%$%g2635826373%_)
                                ((lambda () _%K26346%_))))
                             (_%$%g2635526514%_
                              (lambda (_%$%g2635826384%_)
                                (if (gx#stx-pair? _%$%g2635826384%_)
                                    (let ((_%$%e2636126387%_
                                           (gx#syntax-e _%$%g2635826384%_)))
                                      (let ((_%$%hd2636226391%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2636126387%_)))
                                            (_%$%tl2636326394%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2636126387%_))))
                                        ((lambda (_%$%g2635926397%_
                                                  _%$%g2636026399%_)
                                           (let* ((_%$%g2641426437%_
                                                   (lambda (_%$%g2641526433%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g2641526433%_)))
                                                  (_%$%g2641326510%_
                                                   (lambda (_%$%g2641526441%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g2641526441%_)
                                                         (let ((_%$%e2642026444%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2641526441%_)))
                   (let ((_%$%hd2642126448%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e2642026444%_)))
                         (_%$%tl2642226451%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e2642026444%_))))
                     (if (gx#stx-pair? _%$%tl2642226451%_)
                         (let ((_%$%e2642326454%_
                                (gx#syntax-e _%$%tl2642226451%_)))
                           (let ((_%$%hd2642426458%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e2642326454%_)))
                                 (_%$%tl2642526461%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e2642326454%_))))
                             (if (gx#stx-pair? _%$%tl2642526461%_)
                                 (let ((_%$%e2642626464%_
                                        (gx#syntax-e _%$%tl2642526461%_)))
                                   (let ((_%$%hd2642726468%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e2642626464%_)))
                                         (_%$%tl2642826471%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e2642626464%_))))
                                     (if (gx#stx-pair? _%$%tl2642826471%_)
                                         (let ((_%$%e2642926474%_
                                                (gx#syntax-e
                                                 _%$%tl2642826471%_)))
                                           (let ((_%$%hd2643026478%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e2642926474%_)))
                                                 (_%$%tl2643126481%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e2642926474%_))))
                                             (if (gx#stx-null?
                                                  _%$%tl2643126481%_)
                                                 ((lambda (_%$%g2641626484%_
                                                           _%$%g2641726486%_
                                                           _%$%g2641826487%_
                                                           _%$%g2641926488%_)
                                                    (cons 'let
                                                          (cons (cons (cons _%$%g2641926488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons _%$%g2641626484%_
                                                (cons _%$%g2641826487%_
                                                      (cons _%$%g2641726486%_
                                                            '())))
                                          '()))
                              '())
                        (cons (_%generate125880%_
                               _%$%g2641926488%_
                               _%$%g2636026399%_
                               (_%recur26349%_
                                _%$%g2635926397%_
                                (fx1+ _%off26354%_))
                               _%E26347%_)
                              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%$%hd2643026478%_
                                                  _%$%hd2642726468%_
                                                  _%$%hd2642426458%_
                                                  _%$%hd2642126448%_)
                                                 (_%$%g2641426437%_
                                                  _%$%g2641526441%_))))
                                         (_%$%g2641426437%_
                                          _%$%g2641526441%_))))
                                 (_%$%g2641426437%_ _%$%g2641526441%_))))
                         (_%$%g2641426437%_ _%$%g2641526441%_))))
                 (_%$%g2641426437%_ _%$%g2641526441%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g2641326510%_
                                              (list (gx#genident 'e)
                                                    _%tgt26341%_
                                                    _%off26354%_
                                                    _%ref26345%_))))
                                         _%$%tl2636326394%_
                                         _%$%hd2636226391%_)))
                                    (_%$%g2635626380%_ _%$%g2635826384%_)))))
                        (_%$%g2635526514%_ _%rest26352%_)))))
                 (_%generate-list-vector25884%_
                  (lambda (_%tgt26233%_
                           _%body26235%_
                           _%->list26236%_
                           _%K26237%_
                           _%E26238%_)
                    (let* ((_%$%g2624026248%_
                            (lambda (_%$%g2624126244%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2624126244%_)))
                           (_%$%g2623926337%_
                            (lambda (_%$%g2624126252%_)
                              ((lambda (_%$%g2624226255%_)
                                 (let* ((_%$%g2626726275%_
                                         (lambda (_%$%g2626826271%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2626826271%_)))
                                        (_%$%g2626626333%_
                                         (lambda (_%$%g2626826279%_)
                                           ((lambda (_%$%g2626926282%_)
                                              (let* ((_%$%g2629526303%_
                                                      (lambda (_%$%g2629626299%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g2629626299%_)))
                                                     (_%$%g2629426325%_
                                                      (lambda (_%$%g2629626307%_)
                                                        ((lambda (_%$%g2629726310%_)
                                                           (cons 'let
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (cons (cons _%$%g2624226255%_
                                           (cons _%$%g2629726310%_ '()))
                                     '())
                               (cons (_%generate125880%_
                                      _%$%g2624226255%_
                                      _%body26235%_
                                      _%K26237%_
                                      _%E26238%_)
                                     '()))))
                 _%$%g2629626307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2629426325%_
                                                 (let ((_%$e26329%_
                                                        _%->list26236%_))
                                                   (if (eq? 'values->list
                                                            _%$e26329%_)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              'values->list)
                                                             (cons _%$%g2626926282%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (if (eq? 'vector->list _%$e26329%_)
                   (cons (gx#datum->syntax '#f '##vector->list)
                         (cons _%$%g2626926282%_ '()))
                   (if (eq? 'struct->list _%$e26329%_)
                       (cons (gx#datum->syntax '#f '##cdr)
                             (cons (cons (gx#datum->syntax '#f 'struct->list)
                                         (cons _%$%g2626926282%_ '()))
                                   '()))
                       (gx#raise-syntax-error
                        '#f
                        '"Unexpected list conversion"
                        _%stx25873%_
                        _%->list26236%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%$%g2626826279%_))))
                                   (_%$%g2626626333%_ _%tgt26233%_)))
                               _%$%g2624126252%_))))
                      (_%$%g2623926337%_ (gx#genident 'e)))))
                 (_%generate-struct25885%_
                  (lambda (_%info26104%_
                           _%tgt26106%_
                           _%body26107%_
                           _%K26108%_
                           _%E26109%_)
                    (let* ((_%$%g2611226135%_
                            (lambda (_%$%g2611326131%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2611326131%_)))
                           (_%$%g2611126181%_
                            (lambda (_%$%g2611326139%_)
                              (if (gx#stx-pair? _%$%g2611326139%_)
                                  (let ((_%$%e2612326142%_
                                         (gx#syntax-e _%$%g2611326139%_)))
                                    (let ((_%$%hd2612426146%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2612326142%_)))
                                          (_%$%tl2612526149%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2612326142%_))))
                                      (if (gx#stx-datum? _%$%hd2612426146%_)
                                          (let ((_%$%e2612626152%_
                                                 (gx#stx-e
                                                  _%$%hd2612426146%_)))
                                            (if (equal? _%$%e2612626152%_
                                                        'list:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2612526149%_)
                                                    (let ((_%$%e2612726156%_
                                                           (gx#syntax-e
                                                            _%$%tl2612526149%_)))
                                                      (let ((_%$%hd2612826160%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2612726156%_)))
                    (_%$%tl2612926163%_
                     (let () (declare (not safe)) (##cdr _%$%e2612726156%_))))
                (if (gx#stx-null? _%$%tl2612926163%_)
                    ((lambda (_%$%g2612226166%_)
                       (cons 'if
                             (cons (cons (gerbil/core/mop~MOP-2#!class-type-predicate
                                          _%info26104%_)
                                         (cons _%tgt26106%_ '()))
                                   (cons (_%generate-list-vector25884%_
                                          _%tgt26106%_
                                          _%$%g2612226166%_
                                          'struct->list
                                          _%K26108%_
                                          _%E26109%_)
                                         (cons _%E26109%_ '())))))
                     _%$%hd2612826160%_)
                    (_%$%g2611226135%_ _%$%g2611326139%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2611226135%_
                                                     _%$%g2611326139%_))
                                                (_%$%g2611226135%_
                                                 _%$%g2611326139%_)))
                                          (_%$%g2611226135%_
                                           _%$%g2611326139%_))))
                                  (_%$%g2611226135%_ _%$%g2611326139%_))))
                           (_%$%g2611026229%_
                            (lambda (_%$%g2611326185%_)
                              (if (gx#stx-pair? _%$%g2611326185%_)
                                  (let ((_%$%e2611526188%_
                                         (gx#syntax-e _%$%g2611326185%_)))
                                    (let ((_%$%hd2611626192%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2611526188%_)))
                                          (_%$%tl2611726195%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2611526188%_))))
                                      (if (gx#stx-datum? _%$%hd2611626192%_)
                                          (let ((_%$%e2611826198%_
                                                 (gx#stx-e
                                                  _%$%hd2611626192%_)))
                                            (if (equal? _%$%e2611826198%_
                                                        'simple:)
                                                (if (gx#stx-pair?
                                                     _%$%tl2611726195%_)
                                                    (let ((_%$%e2611926202%_
                                                           (gx#syntax-e
                                                            _%$%tl2611726195%_)))
                                                      (let ((_%$%hd2612026206%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2611926202%_)))
                    (_%$%tl2612126209%_
                     (let () (declare (not safe)) (##cdr _%$%e2611926202%_))))
                (if (gx#stx-null? _%$%tl2612126209%_)
                    ((lambda (_%$%g2611426212%_)
                       (let ((_%fields26226%_
                              (_%struct-field-accessors25887%_ _%info26104%_)))
                         (cons 'if
                               (cons (cons (gerbil/core/mop~MOP-2#!class-type-predicate
                                            _%info26104%_)
                                           (cons _%tgt26106%_ '()))
                                     (cons (_%generate-simple-struct-body25886%_
                                            _%info26104%_
                                            _%tgt26106%_
                                            _%$%g2611426212%_
                                            _%K26108%_
                                            _%E26109%_)
                                           (cons _%E26109%_ '()))))))
                     _%$%hd2612026206%_)
                    (_%$%g2611126181%_ _%$%g2611326185%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2611126181%_
                                                     _%$%g2611326185%_))
                                                (_%$%g2611126181%_
                                                 _%$%g2611326185%_)))
                                          (_%$%g2611126181%_
                                           _%$%g2611326185%_))))
                                  (_%$%g2611126181%_ _%$%g2611326185%_)))))
                      (_%$%g2611026229%_ _%body26107%_))))
                 (_%generate-simple-struct-body25886%_
                  (lambda (_%info26024%_
                           _%tgt26026%_
                           _%body26027%_
                           _%K26028%_
                           _%E26029%_)
                    (let _%recur26031%_ ((_%rest26034%_ _%body26027%_)
                                         (_%fields26036%_
                                          (_%struct-field-accessors25887%_
                                           _%info26024%_)))
                      (let* ((_%$%g2603926051%_
                              (lambda (_%$%g2604026047%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2604026047%_)))
                             (_%$%g2603826062%_
                              (lambda (_%$%g2604026055%_)
                                ((lambda () _%K26028%_))))
                             (_%$%g2603726100%_
                              (lambda (_%$%g2604026066%_)
                                (if (gx#stx-pair? _%$%g2604026066%_)
                                    (let ((_%$%e2604326069%_
                                           (gx#syntax-e _%$%g2604026066%_)))
                                      (let ((_%$%hd2604426073%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2604326069%_)))
                                            (_%$%tl2604526076%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2604326069%_))))
                                        ((lambda (_%$%g2604126079%_
                                                  _%$%g2604226081%_)
                                           (if (null? _%fields26036%_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"too many parts for struct"
                                                _%stx25873%_
                                                _%info26024%_
                                                (gerbil/core/mop~MOP-2#!class-type-name
                                                 _%info26024%_))
                                               (let ((_%$tgt26096%_
                                                      (gx#genident 'e))
                                                     (_%getf26098%_
                                                      (car _%fields26036%_)))
                                                 (cons 'let
                                                       (cons (cons (cons _%$tgt26096%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons (cons _%getf26098%_
                                             (cons _%tgt26026%_ '()))
                                       '()))
                           '())
                     (cons (_%generate125880%_
                            _%$tgt26096%_
                            _%$%g2604226081%_
                            (_%recur26031%_
                             _%$%g2604126079%_
                             (cdr _%fields26036%_))
                            _%E26029%_)
                           '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%$%tl2604526076%_
                                         _%$%hd2604426073%_)))
                                    (_%$%g2603826062%_ _%$%g2604026066%_)))))
                        (_%$%g2603726100%_ _%rest26034%_)))))
                 (_%struct-field-accessors25887%_
                  (lambda (_%info26005%_)
                    (let _%recur26008%_ ((_%next26011%_
                                          (cons _%info26005%_ '())))
                      (if (null? _%next26011%_)
                          '()
                          (let ((_%ti26014%_ (car _%next26011%_)))
                            (append (_%recur26008%_
                                     (map gx#syntax-local-value
                                          (gerbil/core/mop~MOP-2#!class-type-super
                                           _%ti26014%_)))
                                    (map (lambda (_%slot26017%_)
                                           (let ((_%$e26020%_
                                                  (agetq _%slot26017%_
                                                         (gerbil/core/mop~MOP-2#!class-type-unchecked-accessors
                                                          _%ti26014%_))))
                                             (if _%$e26020%_
                                                 _%$e26020%_
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"no accessor for struct slot"
                                                  _%stx25873%_
                                                  _%info26005%_
                                                  _%slot26017%_))))
                                         (gerbil/core/mop~MOP-2#!class-type-slots
                                          _%ti26014%_))))))))
                 (_%generate-class25888%_
                  (lambda (_%info25998%_
                           _%tgt26000%_
                           _%body26001%_
                           _%K26002%_
                           _%E26003%_)
                    (cons 'if
                          (cons (cons (gerbil/core/mop~MOP-2#!class-type-predicate
                                       _%info25998%_)
                                      (cons _%tgt26000%_ '()))
                                (cons (_%generate-class-body25889%_
                                       _%info25998%_
                                       _%tgt26000%_
                                       _%body26001%_
                                       _%K26002%_
                                       _%E26003%_)
                                      (cons _%E26003%_ '()))))))
                 (_%generate-class-body25889%_
                  (lambda (_%info25891%_
                           _%tgt25893%_
                           _%body25894%_
                           _%K25895%_
                           _%E25896%_)
                    (let _%recur25898%_ ((_%rest25901%_ _%body25894%_))
                      (let* ((_%$%g2590525921%_
                              (lambda (_%$%g2590625917%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2590625917%_)))
                             (_%$%g2590425932%_
                              (lambda (_%$%g2590625925%_)
                                ((lambda () _%K25895%_))))
                             (_%$%g2590325994%_
                              (lambda (_%$%g2590625936%_)
                                (if (gx#stx-pair? _%$%g2590625936%_)
                                    (let ((_%$%e2591025939%_
                                           (gx#syntax-e _%$%g2590625936%_)))
                                      (let ((_%$%hd2591125943%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2591025939%_)))
                                            (_%$%tl2591225946%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2591025939%_))))
                                        (if (gx#stx-pair? _%$%tl2591225946%_)
                                            (let ((_%$%e2591325949%_
                                                   (gx#syntax-e
                                                    _%$%tl2591225946%_)))
                                              (let ((_%$%hd2591425953%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e2591325949%_)))
                                                    (_%$%tl2591525956%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e2591325949%_))))
                                                ((lambda (_%$%g2590725959%_
                                                          _%$%g2590825961%_
                                                          _%$%g2590925962%_)
                                                   (let ((_%$e25982%_
                                                          (agetq (string->symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (keyword->string (gx#stx-e _%$%g2590925962%_)))
                         (gerbil/core/mop~MOP-2#!class-type-unchecked-accessors
                          _%info25891%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if _%$e25982%_
                                                         ((lambda (_%getf25986%_)
                                                            (let ((_%$tgt25989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#genident 'e)))
                      (cons 'let
                            (cons (cons (cons _%$tgt25989%_
                                              (cons (cons _%getf25986%_
                                                          (cons _%tgt25893%_
                                                                '()))
                                                    '()))
                                        '())
                                  (cons (_%generate125880%_
                                         _%$tgt25989%_
                                         _%$%g2590825961%_
                                         (_%recur25898%_ _%$%g2590725959%_)
                                         _%E25896%_)
                                        '())))))
                  _%$e25982%_)
                 (gx#raise-syntax-error
                  '#f
                  '"no slot accessor"
                  _%stx25873%_
                  _%info25891%_
                  _%$%g2590925962%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%tl2591525956%_
                                                 _%$%hd2591425953%_
                                                 _%$%hd2591125943%_)))
                                            (_%$%g2590425932%_
                                             _%$%g2590625936%_))))
                                    (_%$%g2590425932%_ _%$%g2590625936%_)))))
                        (_%$%g2590325994%_ _%rest25901%_))))))
          (_%generate125880%_
           _%tgt25875%_
           _%ptree25876%_
           _%K25877%_
           _%E25878%_))))
    (define |gerbil/core/match[1]#generate-match*|
      (lambda (_%stx24692%_ _%tgt-lst24694%_ _%clauses24695%_)
        (letrec ((_%parse-body24697%_
                  (lambda (_%hd-len25695%_)
                    (let _%lp25698%_ ((_%rest25701%_ _%clauses24695%_)
                                      (_%r25703%_ '()))
                      (let* ((_%$%g2570625718%_
                              (lambda (_%$%g2570725714%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2570725714%_)))
                             (_%$%g2570525729%_
                              (lambda (_%$%g2570725722%_)
                                ((lambda () _%r25703%_))))
                             (_%$%g2570425869%_
                              (lambda (_%$%g2570725733%_)
                                (if (gx#stx-pair? _%$%g2570725733%_)
                                    (let ((_%$%e2571025736%_
                                           (gx#syntax-e _%$%g2570725733%_)))
                                      (let ((_%$%hd2571125740%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2571025736%_)))
                                            (_%$%tl2571225743%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2571025736%_))))
                                        ((lambda (_%$%g2570825746%_
                                                  _%$%g2570925748%_)
                                           (let* ((_%$%g2576525781%_
                                                   (lambda (_%$%g2576625777%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g2576625777%_)))
                                                  (_%$%g2576425792%_
                                                   (lambda (_%$%g2576625785%_)
                                                     ((lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"bad syntax; illegal match clause"
                                                         _%stx24692%_
                                                         _%$%g2570925748%_)))))
                                                  (_%$%g2576325833%_
                                                   (lambda (_%$%g2576625796%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g2576625796%_)
                                                         (let ((_%$%e2577325799%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2576625796%_)))
                   (let ((_%$%hd2577425803%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e2577325799%_)))
                         (_%$%tl2577525806%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e2577325799%_))))
                     ((lambda (_%$%g2577125809%_ _%$%g2577225811%_)
                        (if (and (gx#stx-list? _%$%g2577225811%_)
                                 (fx= (gx#stx-length _%$%g2577225811%_)
                                      _%hd-len25695%_)
                                 (gx#stx-list? _%$%g2577125809%_)
                                 (not (gx#stx-null? _%$%g2577125809%_)))
                            (_%lp25698%_
                             _%$%g2570825746%_
                             (cons (cons (gx#genident 'try-match)
                                         (cons (gx#stx-map
                                                (lambda (_%$%g2582325825%_)
                                                  (|gerbil/core/match[1]#parse-match-pattern|
                                                   _%$%g2582325825%_
                                                   _%stx24692%_))
                                                _%$%g2577225811%_)
                                               (cons (gx#stx-wrap-source
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'begin)
                                                            _%$%g2577125809%_)
                                                      (let ((_%$e25829%_
                                                             (gx#stx-source
                                                              _%$%g2570925748%_)))
                                                        (if _%$e25829%_
                                                            _%$e25829%_
                                                            (gx#stx-source
                                                             _%stx24692%_))))
                                                     '())))
                                   _%r25703%_))
                            (_%$%g2576425792%_ _%$%g2576625796%_)))
                      _%$%tl2577525806%_
                      _%$%hd2577425803%_)))
                 (_%$%g2576425792%_ _%$%g2576625796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2576225865%_
                                                   (lambda (_%$%g2576625837%_)
                                                     (if (gx#stx-pair?
                                                          _%$%g2576625837%_)
                                                         (let ((_%$%e2576825840%_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2576625837%_)))
                   (let ((_%$%hd2576925844%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e2576825840%_)))
                         (_%$%tl2577025847%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e2576825840%_))))
                     (if (gx#identifier? _%$%hd2576925844%_)
                         (if (gx#free-identifier=?
                              |gerbil/core/match[1]#_g34297_|
                              _%$%hd2576925844%_)
                             ((lambda (_%$%g2576725850%_)
                                (if (and (gx#stx-list? _%$%g2576725850%_)
                                         (not (gx#stx-null?
                                               _%$%g2576725850%_)))
                                    (if (gx#stx-null? _%$%g2570825746%_)
                                        (cons (cons (gx#genident 'else)
                                                    (cons '#f
                                                          (cons (gx#stx-wrap-source
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f 'begin) _%$%g2576725850%_)
                         (let ((_%$e25861%_ (gx#stx-source _%$%g2570925748%_)))
                           (if _%$e25861%_
                               _%$e25861%_
                               (gx#stx-source _%stx24692%_))))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _%r25703%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"bad syntax; misplaced else"
                                         _%stx24692%_
                                         _%$%g2570925748%_))
                                    (_%$%g2576325833%_ _%$%g2576625837%_)))
                              _%$%tl2577025847%_)
                             (_%$%g2576325833%_ _%$%g2576625837%_))
                         (_%$%g2576325833%_ _%$%g2576625837%_))))
                 (_%$%g2576325833%_ _%$%g2576625837%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g2576225865%_
                                              _%$%g2570925748%_)))
                                         _%$%tl2571225743%_
                                         _%$%hd2571125740%_)))
                                    (_%$%g2570525729%_ _%$%g2570725733%_)))))
                        (_%$%g2570425869%_ _%rest25701%_)))))
                 (_%generate-body24699%_
                  (lambda (_%body25401%_)
                    (let* ((_%$%g2540425412%_
                            (lambda (_%$%g2540525408%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2540525408%_)))
                           (_%$%g2540325691%_
                            (lambda (_%$%g2540525416%_)
                              ((lambda (_%$%g2540625419%_)
                                 (let* ((_%$%g2543125448%_
                                         (lambda (_%$%g2543225444%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2543225444%_)))
                                        (_%$%g2543025687%_
                                         (lambda (_%$%g2543225452%_)
                                           (if (gx#stx-pair/null?
                                                _%$%g2543225452%_)
                                               (let ((_g34298_
                                                      (gx#syntax-split-splice
                                                       _%$%g2543225452%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g34299_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34298_)
                        (##values-length _g34298_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g34299_ 2)))
                 (error "Context expects 2 values" _g34299_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target2543425455%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g34298_
                                                             0)))
                                                         (_%$%tl2543625458%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g34298_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl2543625458%_)
                                                         (letrec ((_%$%loop2543725461%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd2543525465%_ _%$%target2544125468%_)
                             (if (gx#stx-pair? _%$%hd2543525465%_)
                                 (let ((_%$%e2543825470%_
                                        (gx#syntax-e _%$%hd2543525465%_)))
                                   (let ((_%$%lp-hd2543925474%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e2543825470%_)))
                                         (_%$%lp-tl2544025477%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e2543825470%_))))
                                     (_%$%loop2543725461%_
                                      _%$%lp-tl2544025477%_
                                      (cons _%$%lp-hd2543925474%_
                                            _%$%target2544125468%_))))
                                 (let ((_%$%target2544225480%_
                                        (reverse _%$%target2544125468%_)))
                                   ((lambda (_%$%g2543325483%_)
                                      (let* ((_%$%g2550025517%_
                                              (lambda (_%$%g2550125513%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g2550125513%_)))
                                             (_%$%g2549925683%_
                                              (lambda (_%$%g2550125521%_)
                                                (if (gx#stx-pair/null?
                                                     _%$%g2550125521%_)
                                                    (let ((_g34300_
                                                           (gx#syntax-split-splice
                                                            _%$%g2550125521%_
                                                            '0)))
                                                      (begin
                                                        (let ((_g34301_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (if (##values? _g34300_)
                             (##values-length _g34300_)
                             1))))
                  (if (not (let () (declare (not safe)) (##fx= _g34301_ 2)))
                      (error "Context expects 2 values" _g34301_)))
                (let ((_%$%target2550325524%_
                       (let () (declare (not safe)) (##values-ref _g34300_ 0)))
                      (_%$%tl2550525527%_
                       (let ()
                         (declare (not safe))
                         (##values-ref _g34300_ 1))))
                  (if (gx#stx-null? _%$%tl2550525527%_)
                      (letrec ((_%$%loop2550625530%_
                                (lambda (_%$%hd2550425534%_
                                         _%$%fail-diagnostic2551025537%_)
                                  (if (gx#stx-pair? _%$%hd2550425534%_)
                                      (let ((_%$%e2550725539%_
                                             (gx#syntax-e _%$%hd2550425534%_)))
                                        (let ((_%$%lp-hd2550825543%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2550725539%_)))
                                              (_%$%lp-tl2550925546%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2550725539%_))))
                                          (_%$%loop2550625530%_
                                           _%$%lp-tl2550925546%_
                                           (cons _%$%lp-hd2550825543%_
                                                 _%$%fail-diagnostic2551025537%_))))
                                      (let ((_%$%fail-diagnostic2551125549%_
                                             (reverse _%$%fail-diagnostic2551025537%_)))
                                        ((lambda (_%$%g2550225552%_)
                                           (let* ((_%$%g2556925577%_
                                                   (lambda (_%$%g2557025573%_)
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g2557025573%_)))
                                                  (_%$%g2556825663%_
                                                   (lambda (_%$%g2557025581%_)
                                                     ((lambda (_%$%g2557125584%_)
                                                        (let* ((_%$%g2559725605%_
                                                                (lambda (_%$%g2559825601%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g2559825601%_)))
                       (_%$%g2559625659%_
                        (lambda (_%$%g2559825609%_)
                          ((lambda (_%$%g2559925612%_)
                             (let* ((_%$%g2562525633%_
                                     (lambda (_%$%g2562625629%_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _%$%g2562625629%_)))
                                    (_%$%g2562425655%_
                                     (lambda (_%$%g2562625637%_)
                                       ((lambda (_%$%g2562725640%_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'begin-annotation)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@match)
                                                      (cons _%$%g2562725640%_
                                                            '()))))
                                        _%$%g2562625637%_))))
                               (_%$%g2562425655%_
                                (gx#stx-wrap-source
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons (cons (cons _%$%g2540625419%_
                                                         (cons _%$%g2557125584%_
                                                               '()))
                                                   '())
                                             (cons _%$%g2559925612%_ '())))
                                 (gx#stx-source _%stx24692%_)))))
                           _%$%g2559825609%_))))
                  (_%$%g2559625659%_
                   (_%generate-clauses24700%_
                    _%body25401%_
                    (cons (gx#datum->syntax '#f 'begin-annotation)
                          (cons (cons (gx#datum->syntax '#f '@abort) '())
                                (cons (cons _%$%g2540625419%_ '()) '())))))))
              _%$%g2557025581%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%g2556825663%_
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'lambda)
                                                     (cons '()
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'error)
                               (cons '"No clause matching"
                                     (foldr (lambda (_%$%g2566625671%_
                                                     _%$%g2566725674%_)
                                              (cons _%$%g2566625671%_
                                                    _%$%g2566725674%_))
                                            (foldr (lambda (_%$%g2566825677%_
                                                            _%$%g2566925680%_)
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _%$%g2566825677%_ '()))
                   _%$%g2566925680%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _%$%g2550225552%_)
                                            _%$%g2543325483%_)))
                         (cons (cons (gx#datum->syntax '#f 'void) '()) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx24692%_)))))
                                         _%$%fail-diagnostic2551125549%_))))))
                        (_%$%loop2550625530%_ _%$%target2550325524%_ '()))
                      (_%$%g2550025517%_ _%$%g2550125521%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2550025517%_
                                                     _%$%g2550125521%_)))))
                                        (_%$%g2549925683%_
                                         (gx#stx-map
                                          gx#stx-car
                                          _%clauses24695%_))))
                                    _%$%target2544225480%_))))))
                   (_%$%loop2543725461%_ _%$%target2543425455%_ '()))
                 (_%$%g2543125448%_ _%$%g2543225452%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2543125448%_
                                                _%$%g2543225452%_)))))
                                   (_%$%g2543025687%_ _%tgt-lst24694%_)))
                               _%$%g2540525416%_))))
                      (_%$%g2540325691%_ (gx#genident 'E)))))
                 (_%generate-clauses24700%_
                  (lambda (_%rest25053%_ _%E25055%_)
                    (let* ((_%$%g2505925075%_
                            (lambda (_%$%g2506025071%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2506025071%_)))
                           (_%$%g2505825086%_
                            (lambda (_%$%g2506025079%_)
                              ((lambda ()
                                 (cons 'begin-annotation
                                       (cons '@match-body
                                             (cons _%E25055%_ '())))))))
                           (_%$%g2505725292%_
                            (lambda (_%$%g2506025090%_)
                              (if (gx#stx-pair? _%$%g2506025090%_)
                                  (let ((_%$%e2506725093%_
                                         (gx#syntax-e _%$%g2506025090%_)))
                                    (let ((_%$%hd2506825097%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2506725093%_)))
                                          (_%$%tl2506925100%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2506725093%_))))
                                      ((lambda (_%$%g2506525103%_
                                                _%$%g2506625105%_)
                                         (let* ((_%$%g2511825137%_
                                                 (lambda (_%$%g2511925133%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g2511925133%_)))
                                                (_%$%g2511725288%_
                                                 (lambda (_%$%g2511925141%_)
                                                   (if (gx#stx-pair?
                                                        _%$%g2511925141%_)
                                                       (let ((_%$%e2512325144%_
                                                              (gx#syntax-e
                                                               _%$%g2511925141%_)))
                                                         (let ((_%$%hd2512425148%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%$%e2512325144%_)))
                       (_%$%tl2512525151%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e2512325144%_))))
                   (if (gx#stx-pair? _%$%tl2512525151%_)
                       (let ((_%$%e2512625154%_
                              (gx#syntax-e _%$%tl2512525151%_)))
                         (let ((_%$%hd2512725158%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e2512625154%_)))
                               (_%$%tl2512825161%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e2512625154%_))))
                           (if (gx#stx-pair? _%$%tl2512825161%_)
                               (let ((_%$%e2512925164%_
                                      (gx#syntax-e _%$%tl2512825161%_)))
                                 (let ((_%$%hd2513025168%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e2512925164%_)))
                                       (_%$%tl2513125171%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e2512925164%_))))
                                   (if (gx#stx-null? _%$%tl2513125171%_)
                                       ((lambda (_%$%g2512025174%_
                                                 _%$%g2512125176%_
                                                 _%$%g2512225177%_)
                                          (if (gx#stx-e _%$%g2512125176%_)
                                              (let* ((_%$%g2519425209%_
                                                      (lambda (_%$%g2519525205%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g2519525205%_)))
                                                     (_%$%g2519325254%_
                                                      (lambda (_%$%g2519525213%_)
                                                        (if (gx#stx-pair?
                                                             _%$%g2519525213%_)
                                                            (let ((_%$%e2519825216%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%g2519525213%_)))
                      (let ((_%$%hd2519925220%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2519825216%_)))
                            (_%$%tl2520025223%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2519825216%_))))
                        (if (gx#stx-pair? _%$%tl2520025223%_)
                            (let ((_%$%e2520125226%_
                                   (gx#syntax-e _%$%tl2520025223%_)))
                              (let ((_%$%hd2520225230%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2520125226%_)))
                                    (_%$%tl2520325233%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2520125226%_))))
                                (if (gx#stx-null? _%$%tl2520325233%_)
                                    ((lambda (_%$%g2519625236%_
                                              _%$%g2519725238%_)
                                       (cons (gx#datum->syntax '#f 'let)
                                             (cons (cons (cons _%$%g2512225177%_
                                                               (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    '#f
                                    'lambda)
                                   (cons '() (cons _%$%g2519725238%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%g2519625236%_
                                                         '()))))
                                     _%$%hd2520225230%_
                                     _%$%hd2519925220%_)
                                    (_%$%g2519425209%_ _%$%g2519525213%_))))
                            (_%$%g2519425209%_ _%$%g2519525213%_))))
                    (_%$%g2519425209%_ _%$%g2519525213%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2519325254%_
                                                 (list (_%generate124701%_
                                                        _%$%g2512125176%_
                                                        _%$%g2512025174%_
                                                        _%E25055%_)
                                                       (_%generate-clauses24700%_
                                                        _%$%g2506525103%_
                                                        (cons _%$%g2512225177%_
                                                              '())))))
                                              (let* ((_%$%g2525825266%_
                                                      (lambda (_%$%g2525925262%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%$%g2525925262%_)))
                                                     (_%$%g2525725284%_
                                                      (lambda (_%$%g2525925270%_)
                                                        ((lambda (_%$%g2526025273%_)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'let)
                         (cons (cons (cons _%$%g2512225177%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'begin-annotation)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '@match-else)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'lambda)
                                 (cons '() (cons _%$%g2512025174%_ '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     '())
                               (cons _%$%g2526025273%_ '()))))
                 _%$%g2525925270%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2525725284%_
                                                 (_%generate-clauses24700%_
                                                  _%$%g2506525103%_
                                                  (cons _%$%g2512225177%_
                                                        '()))))))
                                        _%$%hd2513025168%_
                                        _%$%hd2512725158%_
                                        _%$%hd2512425148%_)
                                       (_%$%g2511825137%_ _%$%g2511925141%_))))
                               (_%$%g2511825137%_ _%$%g2511925141%_))))
                       (_%$%g2511825137%_ _%$%g2511925141%_))))
               (_%$%g2511825137%_ _%$%g2511925141%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g2511725288%_
                                            _%$%g2506625105%_)))
                                       _%$%tl2506925100%_
                                       _%$%hd2506825097%_)))
                                  (_%$%g2505825086%_ _%$%g2506025090%_))))
                           (_%$%g2505625397%_
                            (lambda (_%$%g2506025296%_)
                              (if (gx#stx-pair? _%$%g2506025296%_)
                                  (let ((_%$%e2506225299%_
                                         (gx#syntax-e _%$%g2506025296%_)))
                                    (let ((_%$%hd2506325303%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2506225299%_)))
                                          (_%$%tl2506425306%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2506225299%_))))
                                      (if (gx#stx-null? _%$%tl2506425306%_)
                                          ((lambda (_%$%g2506125309%_)
                                             (let* ((_%$%g2532025338%_
                                                     (lambda (_%$%g2532125334%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%$%g2532125334%_)))
                                                    (_%$%g2531925393%_
                                                     (lambda (_%$%g2532125342%_)
                                                       (if (gx#stx-pair?
                                                            _%$%g2532125342%_)
                                                           (let ((_%$%e2532425345%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _%$%g2532125342%_)))
                     (let ((_%$%hd2532525349%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e2532425345%_)))
                           (_%$%tl2532625352%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e2532425345%_))))
                       (if (gx#stx-pair? _%$%tl2532625352%_)
                           (let ((_%$%e2532725355%_
                                  (gx#syntax-e _%$%tl2532625352%_)))
                             (let ((_%$%hd2532825359%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e2532725355%_)))
                                   (_%$%tl2532925362%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e2532725355%_))))
                               (if (gx#stx-pair? _%$%tl2532925362%_)
                                   (let ((_%$%e2533025365%_
                                          (gx#syntax-e _%$%tl2532925362%_)))
                                     (let ((_%$%hd2533125369%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e2533025365%_)))
                                           (_%$%tl2533225372%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e2533025365%_))))
                                       (if (gx#stx-null? _%$%tl2533225372%_)
                                           ((lambda (_%$%g2532225375%_
                                                     _%$%g2532325377%_)
                                              (cons 'begin-annotation
                                                    (cons '@match-body
                                                          (cons (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g2532325377%_)
                            (_%generate124701%_
                             _%$%g2532325377%_
                             _%$%g2532225375%_
                             _%E25055%_)
                            _%$%g2532225375%_)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%$%hd2533125369%_
                                            _%$%hd2532825359%_)
                                           (_%$%g2532025338%_
                                            _%$%g2532125342%_))))
                                   (_%$%g2532025338%_ _%$%g2532125342%_))))
                           (_%$%g2532025338%_ _%$%g2532125342%_))))
                   (_%$%g2532025338%_ _%$%g2532125342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g2531925393%_
                                                _%$%g2506125309%_)))
                                           _%$%hd2506325303%_)
                                          (_%$%g2505725292%_
                                           _%$%g2506025296%_))))
                                  (_%$%g2505725292%_ _%$%g2506025296%_)))))
                      (_%$%g2505625397%_ _%rest25053%_))))
                 (_%generate124701%_
                  (lambda (_%clause24703%_ _%body24705%_ _%E24706%_)
                    (let* ((_%$%g2470824732%_
                            (lambda (_%$%g2470924728%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2470924728%_)))
                           (_%$%g2470725049%_
                            (lambda (_%$%g2470924736%_)
                              (if (gx#stx-pair? _%$%g2470924736%_)
                                  (let ((_%$%e2471224739%_
                                         (gx#syntax-e _%$%g2470924736%_)))
                                    (let ((_%$%hd2471324743%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2471224739%_)))
                                          (_%$%tl2471424746%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2471224739%_))))
                                      (if (gx#stx-pair? _%$%tl2471424746%_)
                                          (let ((_%$%e2471524749%_
                                                 (gx#syntax-e
                                                  _%$%tl2471424746%_)))
                                            (let ((_%$%hd2471624753%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e2471524749%_)))
                                                  (_%$%tl2471724756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e2471524749%_))))
                                              (if (gx#stx-pair/null?
                                                   _%$%hd2471624753%_)
                                                  (let ((_g34302_
                                                         (gx#syntax-split-splice
                                                          _%$%hd2471624753%_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34303_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (if (##values? _g34302_)
                           (##values-length _g34302_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g34303_ 2)))
                    (error "Context expects 2 values" _g34303_)))
              (let ((_%$%target2471824759%_
                     (let () (declare (not safe)) (##values-ref _g34302_ 0)))
                    (_%$%tl2472024762%_
                     (let () (declare (not safe)) (##values-ref _g34302_ 1))))
                (if (gx#stx-null? _%$%tl2472024762%_)
                    (letrec ((_%$%loop2472124765%_
                              (lambda (_%$%hd2471924769%_ _%$%var2472524772%_)
                                (if (gx#stx-pair? _%$%hd2471924769%_)
                                    (let ((_%$%e2472224774%_
                                           (gx#syntax-e _%$%hd2471924769%_)))
                                      (let ((_%$%lp-hd2472324778%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e2472224774%_)))
                                            (_%$%lp-tl2472424781%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e2472224774%_))))
                                        (_%$%loop2472124765%_
                                         _%$%lp-tl2472424781%_
                                         (cons _%$%lp-hd2472324778%_
                                               _%$%var2472524772%_))))
                                    (let ((_%$%var2472624784%_
                                           (reverse _%$%var2472524772%_)))
                                      (if (gx#stx-null? _%$%tl2471724756%_)
                                          ((lambda (_%$%g2471024787%_
                                                    _%$%g2471124789%_)
                                             (let ()
                                               (gx#check-duplicate-identifiers
                                                (foldr (lambda (_%$%g2481024813%_
                                                                _%$%g2481124816%_)
                                                         (cons _%$%g2481024813%_
                                                               _%$%g2481124816%_))
                                                       '()
                                                       _%$%g2471024787%_)
                                                _%stx24692%_)
                                               (let* ((_%$%g2481924827%_
                                                       (lambda (_%$%g2482024823%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%$%g2482024823%_)))
                                                      (_%$%g2481824921%_
                                                       (lambda (_%$%g2482024831%_)
                                                         ((lambda (_%$%g2482124834%_)
                                                            (let* ((_%$%g2484724855%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%g2484824851%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2484824851%_)))
                           (_%$%g2484624917%_
                            (lambda (_%$%g2484824859%_)
                              ((lambda (_%$%g2484924862%_)
                                 (let* ((_%$%g2487524883%_
                                         (lambda (_%$%g2487624879%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2487624879%_)))
                                        (_%$%g2487424905%_
                                         (lambda (_%$%g2487624887%_)
                                           ((lambda (_%$%g2487724890%_)
                                              (gx#stx-wrap-source
                                               (cons (gx#datum->syntax
                                                      '#f
                                                      'let)
                                                     (cons (cons _%$%g2471124789%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g2487724890%_ '()))
                   (cons _%$%g2482124834%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (gx#stx-source _%stx24692%_)))
                                            _%$%g2487624887%_))))
                                   (_%$%g2487424905%_
                                    (gx#stx-wrap-source
                                     (cons (gx#datum->syntax '#f 'lambda)
                                           (cons (foldr (lambda (_%$%g2490824911%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%g2490924914%_)
                  (cons _%$%g2490824911%_ _%$%g2490924914%_))
                '()
                _%$%g2471024787%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons _%$%g2484924862%_ '())))
                                     (gx#stx-source _%stx24692%_)))))
                               _%$%g2484824859%_))))
                      (_%$%g2484624917%_ _%body24705%_)))
                  _%$%g2482024831%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g2481824921%_
                                                  (let _%recur24925%_ ((_%rest24928%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%clause24703%_)
                               (_%rest-targets24930%_ _%tgt-lst24694%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let* ((_%$%g2493324945%_
                                                            (lambda (_%$%g2493424941%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g2493424941%_)))
                                                           (_%$%g2493224964%_
                                                            (lambda (_%$%g2493424949%_)
                                                              ((lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g2471124789%_
                               (foldr (lambda (_%$%g2495524958%_
                                               _%$%g2495624961%_)
                                        (cons _%$%g2495524958%_
                                              _%$%g2495624961%_))
                                      '()
                                      _%$%g2471024787%_))))))
                   (_%$%g2493125045%_
                    (lambda (_%$%g2493424968%_)
                      (if (gx#stx-pair? _%$%g2493424968%_)
                          (let ((_%$%e2493724971%_
                                 (gx#syntax-e _%$%g2493424968%_)))
                            (let ((_%$%hd2493824975%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e2493724971%_)))
                                  (_%$%tl2493924978%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e2493724971%_))))
                              ((lambda (_%$%g2493524981%_ _%$%g2493624983%_)
                                 (let* ((_%$%g2499825010%_
                                         (lambda (_%$%g2499925006%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g2499925006%_)))
                                        (_%$%g2499725041%_
                                         (lambda (_%$%g2499925014%_)
                                           (if (gx#stx-pair? _%$%g2499925014%_)
                                               (let ((_%$%e2500225017%_
                                                      (gx#syntax-e
                                                       _%$%g2499925014%_)))
                                                 (let ((_%$%hd2500325021%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e2500225017%_)))
                                                       (_%$%tl2500425024%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e2500225017%_))))
                                                   ((lambda (_%$%g2500025027%_
                                                             _%$%g2500125029%_)
                                                      (|gerbil/core/match[1]#generate-match1|
                                                       _%stx24692%_
                                                       _%$%g2500125029%_
                                                       _%$%g2493624983%_
                                                       (_%recur24925%_
                                                        _%$%g2493524981%_
                                                        _%$%g2500025027%_)
                                                       _%E24706%_))
                                                    _%$%tl2500425024%_
                                                    _%$%hd2500325021%_)))
                                               (_%$%g2499825010%_
                                                _%$%g2499925014%_)))))
                                   (_%$%g2499725041%_ _%rest-targets24930%_)))
                               _%$%tl2493924978%_
                               _%$%hd2493824975%_)))
                          (_%$%g2493224964%_ _%$%g2493424968%_)))))
              (_%$%g2493125045%_ _%rest24928%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%$%var2472624784%_
                                           _%$%hd2471324743%_)
                                          (_%$%g2470824732%_
                                           _%$%g2470924736%_)))))))
                      (_%$%loop2472124765%_ _%$%target2471824759%_ '()))
                    (_%$%g2470824732%_ _%$%g2470924736%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2470824732%_
                                                   _%$%g2470924736%_))))
                                          (_%$%g2470824732%_
                                           _%$%g2470924736%_))))
                                  (_%$%g2470824732%_ _%$%g2470924736%_)))))
                      (_%$%g2470725049%_
                       (list (gx#genident 'K)
                             (apply append
                                    (map |gerbil/core/match[1]#match-pattern-vars|
                                         _%clause24703%_))))))))
          (_%generate-body24699%_
           (_%parse-body24697%_ (gx#stx-length _%tgt-lst24694%_))))))
    (define |gerbil/core/match[1]#generate-match|
      (lambda (_%stx24594%_ _%tgt24596%_ _%clauses24597%_)
        (letrec ((_%reclause24599%_
                  (lambda (_%clause24602%_)
                    (let* ((_%$%g2460724622%_
                            (lambda (_%$%g2460824618%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%$%g2460824618%_)))
                           (_%$%g2460624633%_
                            (lambda (_%$%g2460824626%_)
                              ((lambda ()
                                 (gx#raise-syntax-error
                                  '#f
                                  '"bad syntax; illegal match clause"
                                  _%stx24594%_
                                  _%clause24602%_)))))
                           (_%$%g2460524667%_
                            (lambda (_%$%g2460824637%_)
                              (if (gx#stx-pair? _%$%g2460824637%_)
                                  (let ((_%$%e2461424640%_
                                         (gx#syntax-e _%$%g2460824637%_)))
                                    (let ((_%$%hd2461524644%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2461424640%_)))
                                          (_%$%tl2461624647%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2461424640%_))))
                                      ((lambda (_%$%g2461224650%_
                                                _%$%g2461324652%_)
                                         (gx#stx-wrap-source
                                          (cons (cons _%$%g2461324652%_ '())
                                                _%$%g2461224650%_)
                                          (gx#stx-source
                                           (gx#datum->syntax '#f 'clause))))
                                       _%$%tl2461624647%_
                                       _%$%hd2461524644%_)))
                                  (_%$%g2460624633%_ _%$%g2460824637%_))))
                           (_%$%g2460424688%_
                            (lambda (_%$%g2460824671%_)
                              (if (gx#stx-pair? _%$%g2460824671%_)
                                  (let ((_%$%e2460924674%_
                                         (gx#syntax-e _%$%g2460824671%_)))
                                    (let ((_%$%hd2461024678%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2460924674%_)))
                                          (_%$%tl2461124681%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2460924674%_))))
                                      (if (gx#identifier? _%$%hd2461024678%_)
                                          (if (gx#free-identifier=?
                                               |gerbil/core/match[1]#_g34304_|
                                               _%$%hd2461024678%_)
                                              ((lambda () _%clause24602%_))
                                              (_%$%g2460524667%_
                                               _%$%g2460824671%_))
                                          (_%$%g2460524667%_
                                           _%$%g2460824671%_))))
                                  (_%$%g2460524667%_ _%$%g2460824671%_)))))
                      (_%$%g2460424688%_ _%clause24602%_)))))
          (|gerbil/core/match[1]#generate-match*|
           _%stx24594%_
           (cons _%tgt24596%_ '())
           (gx#stx-map _%reclause24599%_ _%clauses24597%_)))))
    (define |gerbil/core/match[:0:]#match|
      (lambda (_%stx31935%_)
        (let* ((_%$%g3194031969%_
                (lambda (_%$%g3194131965%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3194131965%_)))
               (_%$%g3193932077%_
                (lambda (_%$%g3194131973%_)
                  (if (gx#stx-pair? _%$%g3194131973%_)
                      (let ((_%$%e3195831976%_
                             (gx#syntax-e _%$%g3194131973%_)))
                        (let ((_%$%hd3195931980%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3195831976%_)))
                              (_%$%tl3196031983%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3195831976%_))))
                          (if (gx#stx-pair? _%$%tl3196031983%_)
                              (let ((_%$%e3196131986%_
                                     (gx#syntax-e _%$%tl3196031983%_)))
                                (let ((_%$%hd3196231990%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3196131986%_)))
                                      (_%$%tl3196331993%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3196131986%_))))
                                  ((lambda (_%$%g3195631996%_
                                            _%$%g3195731998%_)
                                     (if (gx#stx-list? _%$%g3195631996%_)
                                         (let* ((_%$%g3201232020%_
                                                 (lambda (_%$%g3201332016%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g3201332016%_)))
                                                (_%$%g3201132073%_
                                                 (lambda (_%$%g3201332024%_)
                                                   ((lambda (_%$%g3201432027%_)
                                                      (let* ((_%$%g3203932047%_
                                                              (lambda (_%$%g3204032043%_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g3204032043%_)))
                     (_%$%g3203832069%_
                      (lambda (_%$%g3204032051%_)
                        ((lambda (_%$%g3204132054%_)
                           (cons (gx#datum->syntax '#f 'let)
                                 (cons (cons (cons _%$%g3201432027%_
                                                   (cons _%$%g3195731998%_
                                                         '()))
                                             '())
                                       (cons _%$%g3204132054%_ '()))))
                         _%$%g3204032051%_))))
                (_%$%g3203832069%_
                 (|gerbil/core/match[1]#generate-match|
                  _%stx31935%_
                  _%$%g3201432027%_
                  _%$%g3195631996%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%$%g3201332024%_))))
                                           (_%$%g3201132073%_
                                            (gx#genident _%$%g3195731998%_)))
                                         (_%$%g3194031969%_
                                          _%$%g3194131973%_)))
                                   _%$%tl3196331993%_
                                   _%$%hd3196231990%_)))
                              (_%$%g3194031969%_ _%$%g3194131973%_))))
                      (_%$%g3194031969%_ _%$%g3194131973%_))))
               (_%$%g3193832182%_
                (lambda (_%$%g3194132081%_)
                  (if (gx#stx-pair? _%$%g3194132081%_)
                      (let ((_%$%e3195032084%_
                             (gx#syntax-e _%$%g3194132081%_)))
                        (let ((_%$%hd3195132088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3195032084%_)))
                              (_%$%tl3195232091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3195032084%_))))
                          (if (gx#stx-pair? _%$%tl3195232091%_)
                              (let ((_%$%e3195332094%_
                                     (gx#syntax-e _%$%tl3195232091%_)))
                                (let ((_%$%hd3195432098%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3195332094%_)))
                                      (_%$%tl3195532101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3195332094%_))))
                                  (if (gx#identifier? _%$%hd3195432098%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g34305_|
                                           _%$%hd3195432098%_)
                                          ((lambda (_%$%g3194932104%_)
                                             (if (gx#stx-list?
                                                  _%$%g3194932104%_)
                                                 (let* ((_%$%g3211732125%_
                                                         (lambda (_%$%g3211832121%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%$%g3211832121%_)))
                                                        (_%$%g3211632178%_
                                                         (lambda (_%$%g3211832129%_)
                                                           ((lambda (_%$%g3211932132%_)
                                                              (let* ((_%$%g3214432152%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g3214532148%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g3214532148%_)))
                             (_%$%g3214332174%_
                              (lambda (_%$%g3214532156%_)
                                ((lambda (_%$%g3214632159%_)
                                   (cons (gx#datum->syntax '#f 'lambda)
                                         (cons _%$%g3211932132%_
                                               (cons _%$%g3214632159%_ '()))))
                                 _%$%g3214532156%_))))
                        (_%$%g3214332174%_
                         (gx#stx-wrap-source
                          (cons (gx#datum->syntax '#f 'match)
                                (cons _%$%g3211932132%_ _%$%g3194932104%_))
                          (gx#stx-source _%stx31935%_)))))
                    _%$%g3211832129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g3211632178%_
                                                    (gx#genident 'args)))
                                                 (_%$%g3193932077%_
                                                  _%$%g3194132081%_)))
                                           _%$%tl3195532101%_)
                                          (_%$%g3193932077%_
                                           _%$%g3194132081%_))
                                      (_%$%g3193932077%_ _%$%g3194132081%_))))
                              (_%$%g3193932077%_ _%$%g3194132081%_))))
                      (_%$%g3193932077%_ _%$%g3194132081%_))))
               (_%$%g3193732287%_
                (lambda (_%$%g3194132186%_)
                  (if (gx#stx-pair? _%$%g3194132186%_)
                      (let ((_%$%e3194332189%_
                             (gx#syntax-e _%$%g3194132186%_)))
                        (let ((_%$%hd3194432193%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3194332189%_)))
                              (_%$%tl3194532196%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3194332189%_))))
                          (if (gx#stx-pair? _%$%tl3194532196%_)
                              (let ((_%$%e3194632199%_
                                     (gx#syntax-e _%$%tl3194532196%_)))
                                (let ((_%$%hd3194732203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3194632199%_)))
                                      (_%$%tl3194832206%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3194632199%_))))
                                  (if (gx#identifier? _%$%hd3194732203%_)
                                      (if (gx#free-identifier=?
                                           |gerbil/core/match[1]#_g34306_|
                                           _%$%hd3194732203%_)
                                          ((lambda (_%$%g3194232209%_)
                                             (if (gx#stx-list?
                                                  _%$%g3194232209%_)
                                                 (let* ((_%$%g3222232230%_
                                                         (lambda (_%$%g3222332226%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%$%g3222332226%_)))
                                                        (_%$%g3222132283%_
                                                         (lambda (_%$%g3222332234%_)
                                                           ((lambda (_%$%g3222432237%_)
                                                              (let* ((_%$%g3224932257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g3225032253%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g3225032253%_)))
                             (_%$%g3224832279%_
                              (lambda (_%$%g3225032261%_)
                                ((lambda (_%$%g3225132264%_)
                                   (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons _%$%g3222432237%_ '())
                                               (cons _%$%g3225132264%_ '()))))
                                 _%$%g3225032261%_))))
                        (_%$%g3224832279%_
                         (gx#stx-wrap-source
                          (cons (gx#datum->syntax '#f 'match)
                                (cons _%$%g3222432237%_ _%$%g3194232209%_))
                          (gx#stx-source _%stx31935%_)))))
                    _%$%g3222332234%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g3222132283%_
                                                    (gx#genident 'e)))
                                                 (_%$%g3193832182%_
                                                  _%$%g3194132186%_)))
                                           _%$%tl3194832206%_)
                                          (_%$%g3193832182%_
                                           _%$%g3194132186%_))
                                      (_%$%g3193832182%_ _%$%g3194132186%_))))
                              (_%$%g3193832182%_ _%$%g3194132186%_))))
                      (_%$%g3193832182%_ _%$%g3194132186%_)))))
          (_%$%g3193732287%_ _%stx31935%_))))
    (define |gerbil/core/match[:0:]#match*|
      (lambda (_%stx32291%_)
        (let* ((_%$%g3229432318%_
                (lambda (_%$%g3229532314%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3229532314%_)))
               (_%$%g3229332526%_
                (lambda (_%$%g3229532322%_)
                  (if (gx#stx-pair? _%$%g3229532322%_)
                      (let ((_%$%e3229832325%_
                             (gx#syntax-e _%$%g3229532322%_)))
                        (let ((_%$%hd3229932329%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3229832325%_)))
                              (_%$%tl3230032332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3229832325%_))))
                          (if (gx#stx-pair? _%$%tl3230032332%_)
                              (let ((_%$%e3230132335%_
                                     (gx#syntax-e _%$%tl3230032332%_)))
                                (let ((_%$%hd3230232339%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3230132335%_)))
                                      (_%$%tl3230332342%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3230132335%_))))
                                  (if (gx#stx-pair/null? _%$%hd3230232339%_)
                                      (let ((_g34307_
                                             (gx#syntax-split-splice
                                              _%$%hd3230232339%_
                                              '0)))
                                        (begin
                                          (let ((_g34308_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g34307_)
                                                       (##values-length
                                                        _g34307_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g34308_ 2)))
                                                (error "Context expects 2 values"
                                                       _g34308_)))
                                          (let ((_%$%target3230432345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g34307_ 0)))
                                                (_%$%tl3230632348%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g34307_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3230632348%_)
                                                (letrec ((_%$%loop3230732351%_
                                                          (lambda (_%$%hd3230532355%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%e3231132358%_)
                    (if (gx#stx-pair? _%$%hd3230532355%_)
                        (let ((_%$%e3230832360%_
                               (gx#syntax-e _%$%hd3230532355%_)))
                          (let ((_%$%lp-hd3230932364%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3230832360%_)))
                                (_%$%lp-tl3231032367%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3230832360%_))))
                            (_%$%loop3230732351%_
                             _%$%lp-tl3231032367%_
                             (cons _%$%lp-hd3230932364%_ _%$%e3231132358%_))))
                        (let ((_%$%e3231232370%_ (reverse _%$%e3231132358%_)))
                          ((lambda (_%$%g3229632373%_ _%$%g3229732375%_)
                             (if (gx#stx-list? _%$%g3229632373%_)
                                 (let* ((_%$%g3239332410%_
                                         (lambda (_%$%g3239432406%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g3239432406%_)))
                                        (_%$%g3239232514%_
                                         (lambda (_%$%g3239432414%_)
                                           (if (gx#stx-pair/null?
                                                _%$%g3239432414%_)
                                               (let ((_g34309_
                                                      (gx#syntax-split-splice
                                                       _%$%g3239432414%_
                                                       '0)))
                                                 (begin
                                                   (let ((_g34310_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g34309_)
                        (##values-length _g34309_)
                        1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g34310_ 2)))
                 (error "Context expects 2 values" _g34310_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_%$%target3239632417%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g34309_
                                                             0)))
                                                         (_%$%tl3239832420%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##values-ref
                                                             _g34309_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _%$%tl3239832420%_)
                                                         (letrec ((_%$%loop3239932423%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%$%hd3239732427%_ _%$%$e3240332430%_)
                             (if (gx#stx-pair? _%$%hd3239732427%_)
                                 (let ((_%$%e3240032432%_
                                        (gx#syntax-e _%$%hd3239732427%_)))
                                   (let ((_%$%lp-hd3240132436%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e3240032432%_)))
                                         (_%$%lp-tl3240232439%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e3240032432%_))))
                                     (_%$%loop3239932423%_
                                      _%$%lp-tl3240232439%_
                                      (cons _%$%lp-hd3240132436%_
                                            _%$%$e3240332430%_))))
                                 (let ((_%$%$e3240432442%_
                                        (reverse _%$%$e3240332430%_)))
                                   ((lambda (_%$%g3239532445%_)
                                      (let* ((_%$%g3246132469%_
                                              (lambda (_%$%g3246232465%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g3246232465%_)))
                                             (_%$%g3246032502%_
                                              (lambda (_%$%g3246232473%_)
                                                ((lambda (_%$%g3246332476%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'let)
                                                         (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-check-splice-targets
                          _%$%g3229732375%_
                          _%$%g3239532445%_)
                         (foldr (lambda (_%$%g3249032494%_
                                         _%$%g3249132497%_
                                         _%$%g3249232499%_)
                                  (cons (cons _%$%g3249132497%_
                                              (cons _%$%g3249032494%_ '()))
                                        _%$%g3249232499%_))
                                '()
                                _%$%g3229732375%_
                                _%$%g3239532445%_))
                       (cons _%$%g3246332476%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g3246232473%_))))
                                        (_%$%g3246032502%_
                                         (|gerbil/core/match[1]#generate-match*|
                                          _%stx32291%_
                                          (foldr (lambda (_%$%g3250532508%_
                                                          _%$%g3250632511%_)
                                                   (cons _%$%g3250532508%_
                                                         _%$%g3250632511%_))
                                                 '()
                                                 _%$%g3239532445%_)
                                          _%$%g3229632373%_))))
                                    _%$%$e3240432442%_))))))
                   (_%$%loop3239932423%_ _%$%target3239632417%_ '()))
                 (_%$%g3239332410%_ _%$%g3239432414%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g3239332410%_
                                                _%$%g3239432414%_)))))
                                   (_%$%g3239232514%_
                                    (gx#gentemps
                                     (foldr (lambda (_%$%g3251732520%_
                                                     _%$%g3251832523%_)
                                              (cons _%$%g3251732520%_
                                                    _%$%g3251832523%_))
                                            '()
                                            _%$%g3229732375%_))))
                                 (_%$%g3229432318%_ _%$%g3229532322%_)))
                           _%$%tl3230332342%_
                           _%$%e3231232370%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3230732351%_
                                                   _%$%target3230432345%_
                                                   '()))
                                                (_%$%g3229432318%_
                                                 _%$%g3229532322%_)))))
                                      (_%$%g3229432318%_ _%$%g3229532322%_))))
                              (_%$%g3229432318%_ _%$%g3229532322%_))))
                      (_%$%g3229432318%_ _%$%g3229532322%_)))))
          (_%$%g3229332526%_ _%stx32291%_))))
    (define |gerbil/core/match[:0:]#with|
      (lambda (_%$stx32532%_)
        (let* ((_%$%g3253832621%_
                (lambda (_%$%g3253932617%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3253932617%_)))
               (_%$%g3253732776%_
                (lambda (_%$%g3253932625%_)
                  (if (gx#stx-pair? _%$%g3253932625%_)
                      (let ((_%$%e3258432628%_
                             (gx#syntax-e _%$%g3253932625%_)))
                        (let ((_%$%hd3258532632%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3258432628%_)))
                              (_%$%tl3258632635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3258432628%_))))
                          (if (gx#stx-pair? _%$%tl3258632635%_)
                              (let ((_%$%e3258732638%_
                                     (gx#syntax-e _%$%tl3258632635%_)))
                                (let ((_%$%hd3258832642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3258732638%_)))
                                      (_%$%tl3258932645%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3258732638%_))))
                                  (if (gx#stx-pair/null? _%$%hd3258832642%_)
                                      (let ((_g34311_
                                             (gx#syntax-split-splice
                                              _%$%hd3258832642%_
                                              '0)))
                                        (begin
                                          (let ((_g34312_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g34311_)
                                                       (##values-length
                                                        _g34311_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g34312_ 2)))
                                                (error "Context expects 2 values"
                                                       _g34312_)))
                                          (let ((_%$%target3259032648%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g34311_ 0)))
                                                (_%$%tl3259232651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##values-ref _g34311_ 1))))
                                            (if (gx#stx-null?
                                                 _%$%tl3259232651%_)
                                                (letrec ((_%$%loop3259332654%_
                                                          (lambda (_%$%hd3259132658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%expr3259732661%_
                           _%$%hd3259832662%_)
                    (if (gx#stx-pair? _%$%hd3259132658%_)
                        (let ((_%$%e3259432664%_
                               (gx#syntax-e _%$%hd3259132658%_)))
                          (let ((_%$%lp-hd3259532668%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3259432664%_)))
                                (_%$%lp-tl3259632671%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3259432664%_))))
                            (if (gx#stx-pair? _%$%lp-hd3259532668%_)
                                (let ((_%$%e3260132674%_
                                       (gx#syntax-e _%$%lp-hd3259532668%_)))
                                  (let ((_%$%hd3260232678%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e3260132674%_)))
                                        (_%$%tl3260332681%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e3260132674%_))))
                                    (if (gx#stx-pair? _%$%tl3260332681%_)
                                        (let ((_%$%e3260432684%_
                                               (gx#syntax-e
                                                _%$%tl3260332681%_)))
                                          (let ((_%$%hd3260532688%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3260432684%_)))
                                                (_%$%tl3260632691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3260432684%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl3260632691%_)
                                                (_%$%loop3259332654%_
                                                 _%$%lp-tl3259632671%_
                                                 (cons _%$%hd3260532688%_
                                                       _%$%expr3259732661%_)
                                                 (cons _%$%hd3260232678%_
                                                       _%$%hd3259832662%_))
                                                (_%$%g3253832621%_
                                                 _%$%g3253932625%_))))
                                        (_%$%g3253832621%_
                                         _%$%g3253932625%_))))
                                (_%$%g3253832621%_ _%$%g3253932625%_))))
                        (let ((_%$%expr3259932694%_
                               (reverse _%$%expr3259732661%_))
                              (_%$%hd3260032696%_
                               (reverse _%$%hd3259832662%_)))
                          (if (gx#stx-pair/null? _%$%tl3258932645%_)
                              (let ((_g34313_
                                     (gx#syntax-split-splice
                                      _%$%tl3258932645%_
                                      '0)))
                                (begin
                                  (let ((_g34314_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g34313_)
                                               (##values-length _g34313_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g34314_ 2)))
                                        (error "Context expects 2 values"
                                               _g34314_)))
                                  (let ((_%$%target3260732698%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g34313_ 0)))
                                        (_%$%tl3260932701%_
                                         (let ()
                                           (declare (not safe))
                                           (##values-ref _g34313_ 1))))
                                    (if (gx#stx-null? _%$%tl3260932701%_)
                                        (letrec ((_%$%loop3261032704%_
                                                  (lambda (_%$%hd3260832708%_
                                                           _%$%body3261432711%_)
                                                    (if (gx#stx-pair?
                                                         _%$%hd3260832708%_)
                                                        (let ((_%$%e3261132713%_
                                                               (gx#syntax-e
                                                                _%$%hd3260832708%_)))
                                                          (let ((_%$%lp-hd3261232717%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3261132713%_)))
                        (_%$%lp-tl3261332720%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3261132713%_))))
                    (_%$%loop3261032704%_
                     _%$%lp-tl3261332720%_
                     (cons _%$%lp-hd3261232717%_ _%$%body3261432711%_))))
                (let ((_%$%body3261532723%_ (reverse _%$%body3261432711%_)))
                  ((lambda (_%$%g3258132726%_
                            _%$%g3258232728%_
                            _%$%g3258332729%_)
                     (cons (gx#datum->syntax '#f 'match*)
                           (cons (foldr (lambda (_%$%g3275132758%_
                                                 _%$%g3275232761%_)
                                          (cons _%$%g3275132758%_
                                                _%$%g3275232761%_))
                                        '()
                                        _%$%g3258232728%_)
                                 (cons (cons (foldr (lambda (_%$%g3275332764%_
                                                             _%$%g3275432767%_)
                                                      (cons _%$%g3275332764%_
                                                            _%$%g3275432767%_))
                                                    '()
                                                    _%$%g3258332729%_)
                                             (foldr (lambda (_%$%g3275532770%_
                                                             _%$%g3275632773%_)
                                                      (cons _%$%g3275532770%_
                                                            _%$%g3275632773%_))
                                                    '()
                                                    _%$%g3258132726%_))
                                       '()))))
                   _%$%body3261532723%_
                   _%$%expr3259932694%_
                   _%$%hd3260032696%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%loop3261032704%_
                                           _%$%target3260732698%_
                                           '()))
                                        (_%$%g3253832621%_
                                         _%$%g3253932625%_)))))
                              (_%$%g3253832621%_ _%$%g3253932625%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%loop3259332654%_
                                                   _%$%target3259032648%_
                                                   '()
                                                   '()))
                                                (_%$%g3253832621%_
                                                 _%$%g3253932625%_)))))
                                      (_%$%g3253832621%_ _%$%g3253932625%_))))
                              (_%$%g3253832621%_ _%$%g3253932625%_))))
                      (_%$%g3253832621%_ _%$%g3253932625%_))))
               (_%$%g3253632886%_
                (lambda (_%$%g3253932780%_)
                  (if (gx#stx-pair? _%$%g3253932780%_)
                      (let ((_%$%e3256032783%_
                             (gx#syntax-e _%$%g3253932780%_)))
                        (let ((_%$%hd3256132787%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3256032783%_)))
                              (_%$%tl3256232790%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3256032783%_))))
                          (if (gx#stx-pair? _%$%tl3256232790%_)
                              (let ((_%$%e3256332793%_
                                     (gx#syntax-e _%$%tl3256232790%_)))
                                (let ((_%$%hd3256432797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3256332793%_)))
                                      (_%$%tl3256532800%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3256332793%_))))
                                  (if (gx#stx-pair? _%$%hd3256432797%_)
                                      (let ((_%$%e3256632803%_
                                             (gx#syntax-e _%$%hd3256432797%_)))
                                        (let ((_%$%hd3256732807%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3256632803%_)))
                                              (_%$%tl3256832810%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3256632803%_))))
                                          (if (gx#stx-pair? _%$%tl3256832810%_)
                                              (let ((_%$%e3256932813%_
                                                     (gx#syntax-e
                                                      _%$%tl3256832810%_)))
                                                (let ((_%$%hd3257032817%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3256932813%_)))
                                                      (_%$%tl3257132820%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3256932813%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3257132820%_)
                                                      (if (gx#stx-pair/null?
                                                           _%$%tl3256532800%_)
                                                          (let ((_g34315_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-split-splice _%$%tl3256532800%_ '0)))
                    (begin
                      (let ((_g34316_
                             (let ()
                               (declare (not safe))
                               (if (##values? _g34315_)
                                   (##values-length _g34315_)
                                   1))))
                        (if (not (let ()
                                   (declare (not safe))
                                   (##fx= _g34316_ 2)))
                            (error "Context expects 2 values" _g34316_)))
                      (let ((_%$%target3257232823%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g34315_ 0)))
                            (_%$%tl3257432826%_
                             (let ()
                               (declare (not safe))
                               (##values-ref _g34315_ 1))))
                        (if (gx#stx-null? _%$%tl3257432826%_)
                            (letrec ((_%$%loop3257532829%_
                                      (lambda (_%$%hd3257332833%_
                                               _%$%body3257932836%_)
                                        (if (gx#stx-pair? _%$%hd3257332833%_)
                                            (let ((_%$%e3257632838%_
                                                   (gx#syntax-e
                                                    _%$%hd3257332833%_)))
                                              (let ((_%$%lp-hd3257732842%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e3257632838%_)))
                                                    (_%$%lp-tl3257832845%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e3257632838%_))))
                                                (_%$%loop3257532829%_
                                                 _%$%lp-tl3257832845%_
                                                 (cons _%$%lp-hd3257732842%_
                                                       _%$%body3257932836%_))))
                                            (let ((_%$%body3258032848%_
                                                   (reverse _%$%body3257932836%_)))
                                              ((lambda (_%$%g3255632851%_
                                                        _%$%g3255732853%_
                                                        _%$%g3255832854%_
                                                        _%$%g3255932855%_)
                                                 (if (|gerbil/core/match[1]#match-pattern?|
                                                      _%$%g3255832854%_)
                                                     (cons _%$%g3255932855%_
                                                           (cons (cons (cons _%$%g3255832854%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     (cons _%$%g3255732853%_ '()))
                               '())
                         (foldr (lambda (_%$%g3287732880%_ _%$%g3287832883%_)
                                  (cons _%$%g3287732880%_ _%$%g3287832883%_))
                                '()
                                _%$%g3255632851%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g3253732776%_
                                                      _%$%g3253932780%_)))
                                               _%$%body3258032848%_
                                               _%$%hd3257032817%_
                                               _%$%hd3256732807%_
                                               _%$%hd3256132787%_))))))
                              (_%$%loop3257532829%_
                               _%$%target3257232823%_
                               '()))
                            (_%$%g3253732776%_ _%$%g3253932780%_)))))
                  (_%$%g3253732776%_ _%$%g3253932780%_))
              (_%$%g3253732776%_ _%$%g3253932780%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3253732776%_
                                               _%$%g3253932780%_))))
                                      (_%$%g3253732776%_ _%$%g3253932780%_))))
                              (_%$%g3253732776%_ _%$%g3253932780%_))))
                      (_%$%g3253732776%_ _%$%g3253932780%_))))
               (_%$%g3253532966%_
                (lambda (_%$%g3253932890%_)
                  (if (gx#stx-pair? _%$%g3253932890%_)
                      (let ((_%$%e3254132893%_
                             (gx#syntax-e _%$%g3253932890%_)))
                        (let ((_%$%hd3254232897%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3254132893%_)))
                              (_%$%tl3254332900%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3254132893%_))))
                          (if (gx#stx-pair? _%$%tl3254332900%_)
                              (let ((_%$%e3254432903%_
                                     (gx#syntax-e _%$%tl3254332900%_)))
                                (let ((_%$%hd3254532907%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3254432903%_)))
                                      (_%$%tl3254632910%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3254432903%_))))
                                  (if (gx#stx-null? _%$%hd3254532907%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl3254632910%_)
                                          (let ((_g34317_
                                                 (gx#syntax-split-splice
                                                  _%$%tl3254632910%_
                                                  '0)))
                                            (begin
                                              (let ((_g34318_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g34317_)
                                                           (##values-length
                                                            _g34317_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g34318_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g34318_)))
                                              (let ((_%$%target3254732913%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g34317_
                                                        0)))
                                                    (_%$%tl3254932916%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g34317_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl3254932916%_)
                                                    (letrec ((_%$%loop3255032919%_
                                                              (lambda (_%$%hd3254832923%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body3255432926%_)
                        (if (gx#stx-pair? _%$%hd3254832923%_)
                            (let ((_%$%e3255132928%_
                                   (gx#syntax-e _%$%hd3254832923%_)))
                              (let ((_%$%lp-hd3255232932%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3255132928%_)))
                                    (_%$%lp-tl3255332935%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3255132928%_))))
                                (_%$%loop3255032919%_
                                 _%$%lp-tl3255332935%_
                                 (cons _%$%lp-hd3255232932%_
                                       _%$%body3255432926%_))))
                            (let ((_%$%body3255532938%_
                                   (reverse _%$%body3255432926%_)))
                              ((lambda (_%$%g3254032941%_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons '()
                                             (foldr (lambda (_%$%g3295732960%_
                                                             _%$%g3295832963%_)
                                                      (cons _%$%g3295732960%_
                                                            _%$%g3295832963%_))
                                                    '()
                                                    _%$%g3254032941%_))))
                               _%$%body3255532938%_))))))
              (_%$%loop3255032919%_ _%$%target3254732913%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3253632886%_
                                                     _%$%g3253932890%_)))))
                                          (_%$%g3253632886%_
                                           _%$%g3253932890%_))
                                      (_%$%g3253632886%_ _%$%g3253932890%_))))
                              (_%$%g3253632886%_ _%$%g3253932890%_))))
                      (_%$%g3253632886%_ _%$%g3253932890%_)))))
          (_%$%g3253532966%_ _%$stx32532%_))))
    (define |gerbil/core/match[:0:]#with*|
      (lambda (_%$stx32974%_)
        (let* ((_%$%g3297933031%_
                (lambda (_%$%g3298033027%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3298033027%_)))
               (_%$%g3297833112%_
                (lambda (_%$%g3298033035%_)
                  (if (gx#stx-pair? _%$%g3298033035%_)
                      (let ((_%$%e3301133038%_
                             (gx#syntax-e _%$%g3298033035%_)))
                        (let ((_%$%hd3301233042%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3301133038%_)))
                              (_%$%tl3301333045%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3301133038%_))))
                          (if (gx#stx-pair? _%$%tl3301333045%_)
                              (let ((_%$%e3301433048%_
                                     (gx#syntax-e _%$%tl3301333045%_)))
                                (let ((_%$%hd3301533052%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3301433048%_)))
                                      (_%$%tl3301633055%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3301433048%_))))
                                  (if (gx#stx-null? _%$%hd3301533052%_)
                                      (if (gx#stx-pair/null?
                                           _%$%tl3301633055%_)
                                          (let ((_g34319_
                                                 (gx#syntax-split-splice
                                                  _%$%tl3301633055%_
                                                  '0)))
                                            (begin
                                              (let ((_g34320_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g34319_)
                                                           (##values-length
                                                            _g34319_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g34320_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g34320_)))
                                              (let ((_%$%target3301733058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g34319_
                                                        0)))
                                                    (_%$%tl3301933061%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##values-ref
                                                        _g34319_
                                                        1))))
                                                (if (gx#stx-null?
                                                     _%$%tl3301933061%_)
                                                    (letrec ((_%$%loop3302033064%_
                                                              (lambda (_%$%hd3301833068%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _%$%body3302433071%_)
                        (if (gx#stx-pair? _%$%hd3301833068%_)
                            (let ((_%$%e3302133073%_
                                   (gx#syntax-e _%$%hd3301833068%_)))
                              (let ((_%$%lp-hd3302233077%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e3302133073%_)))
                                    (_%$%lp-tl3302333080%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e3302133073%_))))
                                (_%$%loop3302033064%_
                                 _%$%lp-tl3302333080%_
                                 (cons _%$%lp-hd3302233077%_
                                       _%$%body3302433071%_))))
                            (let ((_%$%body3302533083%_
                                   (reverse _%$%body3302433071%_)))
                              ((lambda (_%$%g3301033086%_)
                                 (cons (gx#datum->syntax '#f 'let)
                                       (cons '()
                                             (foldr (lambda (_%$%g3310333106%_
                                                             _%$%g3310433109%_)
                                                      (cons _%$%g3310333106%_
                                                            _%$%g3310433109%_))
                                                    '()
                                                    _%$%g3301033086%_))))
                               _%$%body3302533083%_))))))
              (_%$%loop3302033064%_ _%$%target3301733058%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3297933031%_
                                                     _%$%g3298033035%_)))))
                                          (_%$%g3297933031%_
                                           _%$%g3298033035%_))
                                      (_%$%g3297933031%_ _%$%g3298033035%_))))
                              (_%$%g3297933031%_ _%$%g3298033035%_))))
                      (_%$%g3297933031%_ _%$%g3298033035%_))))
               (_%$%g3297733236%_
                (lambda (_%$%g3298033116%_)
                  (if (gx#stx-pair? _%$%g3298033116%_)
                      (let ((_%$%e3298633119%_
                             (gx#syntax-e _%$%g3298033116%_)))
                        (let ((_%$%hd3298733123%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3298633119%_)))
                              (_%$%tl3298833126%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3298633119%_))))
                          (if (gx#stx-pair? _%$%tl3298833126%_)
                              (let ((_%$%e3298933129%_
                                     (gx#syntax-e _%$%tl3298833126%_)))
                                (let ((_%$%hd3299033133%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3298933129%_)))
                                      (_%$%tl3299133136%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3298933129%_))))
                                  (if (gx#stx-pair? _%$%hd3299033133%_)
                                      (let ((_%$%e3299233139%_
                                             (gx#syntax-e _%$%hd3299033133%_)))
                                        (let ((_%$%hd3299333143%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3299233139%_)))
                                              (_%$%tl3299433146%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3299233139%_))))
                                          (if (gx#stx-pair? _%$%hd3299333143%_)
                                              (let ((_%$%e3299533149%_
                                                     (gx#syntax-e
                                                      _%$%hd3299333143%_)))
                                                (let ((_%$%hd3299633153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3299533149%_)))
                                                      (_%$%tl3299733156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3299533149%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl3299733156%_)
                                                      (let ((_%$%e3299833159%_
                                                             (gx#syntax-e
                                                              _%$%tl3299733156%_)))
                                                        (let ((_%$%hd3299933163%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e3299833159%_)))
                      (_%$%tl3300033166%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e3299833159%_))))
                  (if (gx#stx-null? _%$%tl3300033166%_)
                      (if (gx#stx-pair/null? _%$%tl3299133136%_)
                          (let ((_g34321_
                                 (gx#syntax-split-splice
                                  _%$%tl3299133136%_
                                  '0)))
                            (begin
                              (let ((_g34322_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g34321_)
                                           (##values-length _g34321_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g34322_ 2)))
                                    (error "Context expects 2 values"
                                           _g34322_)))
                              (let ((_%$%target3300133169%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g34321_ 0)))
                                    (_%$%tl3300333172%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g34321_ 1))))
                                (if (gx#stx-null? _%$%tl3300333172%_)
                                    (letrec ((_%$%loop3300433175%_
                                              (lambda (_%$%hd3300233179%_
                                                       _%$%body3300833182%_)
                                                (if (gx#stx-pair?
                                                     _%$%hd3300233179%_)
                                                    (let ((_%$%e3300533184%_
                                                           (gx#syntax-e
                                                            _%$%hd3300233179%_)))
                                                      (let ((_%$%lp-hd3300633188%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e3300533184%_)))
                    (_%$%lp-tl3300733191%_
                     (let () (declare (not safe)) (##cdr _%$%e3300533184%_))))
                (_%$%loop3300433175%_
                 _%$%lp-tl3300733191%_
                 (cons _%$%lp-hd3300633188%_ _%$%body3300833182%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%body3300933194%_
                                                           (reverse _%$%body3300833182%_)))
                                                      ((lambda (_%$%g3298133197%_
                                                                _%$%g3298233199%_
                                                                _%$%g3298333200%_
                                                                _%$%g3298433201%_
                                                                _%$%g3298533202%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'with)
                                                               (cons (cons (cons _%$%g3298433201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                         (cons _%$%g3298333200%_ '()))
                                   '())
                             (cons (cons _%$%g3298533202%_
                                         (cons _%$%g3298233199%_
                                               (foldr (lambda (_%$%g3322733230%_
                                                               _%$%g3322833233%_)
                                                        (cons _%$%g3322733230%_
                                                              _%$%g3322833233%_))
                                                      '()
                                                      _%$%g3298133197%_)))
                                   '()))))
               _%$%body3300933194%_
               _%$%tl3299433146%_
               _%$%hd3299933163%_
               _%$%hd3299633153%_
               _%$%hd3298733123%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%$%loop3300433175%_
                                       _%$%target3300133169%_
                                       '()))
                                    (_%$%g3297833112%_ _%$%g3298033116%_)))))
                          (_%$%g3297833112%_ _%$%g3298033116%_))
                      (_%$%g3297833112%_ _%$%g3298033116%_))))
              (_%$%g3297833112%_ _%$%g3298033116%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3297833112%_
                                               _%$%g3298033116%_))))
                                      (_%$%g3297833112%_ _%$%g3298033116%_))))
                              (_%$%g3297833112%_ _%$%g3298033116%_))))
                      (_%$%g3297833112%_ _%$%g3298033116%_)))))
          (_%$%g3297733236%_ _%$stx32974%_))))
    (define |gerbil/core/match[:0:]#?|
      (lambda (_%$stx33242%_)
        (let* ((_%$%g3325333399%_
                (lambda (_%$%g3325433395%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3325433395%_)))
               (_%$%g3325233499%_
                (lambda (_%$%g3325433403%_)
                  (if (gx#stx-pair? _%$%g3325433403%_)
                      (let ((_%$%e3337533406%_
                             (gx#syntax-e _%$%g3325433403%_)))
                        (let ((_%$%hd3337633410%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3337533406%_)))
                              (_%$%tl3337733413%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3337533406%_))))
                          (if (gx#stx-pair? _%$%tl3337733413%_)
                              (let ((_%$%e3337833416%_
                                     (gx#syntax-e _%$%tl3337733413%_)))
                                (let ((_%$%hd3337933420%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3337833416%_)))
                                      (_%$%tl3338033423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3337833416%_))))
                                  (if (gx#stx-pair? _%$%tl3338033423%_)
                                      (let ((_%$%e3338133426%_
                                             (gx#syntax-e _%$%tl3338033423%_)))
                                        (let ((_%$%hd3338233430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3338133426%_)))
                                              (_%$%tl3338333433%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3338133426%_))))
                                          (if (gx#stx-datum?
                                               _%$%hd3338233430%_)
                                              (let ((_%$%e3338433436%_
                                                     (gx#stx-e
                                                      _%$%hd3338233430%_)))
                                                (if (equal? _%$%e3338433436%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%$%tl3338333433%_)
                                                        (let ((_%$%e3338533440%_
                                                               (gx#syntax-e
                                                                _%$%tl3338333433%_)))
                                                          (let ((_%$%hd3338633444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3338533440%_)))
                        (_%$%tl3338733447%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3338533440%_))))
                    (if (gx#stx-pair? _%$%tl3338733447%_)
                        (let ((_%$%e3338833450%_
                               (gx#syntax-e _%$%tl3338733447%_)))
                          (let ((_%$%hd3338933454%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e3338833450%_)))
                                (_%$%tl3339033457%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e3338833450%_))))
                            (if (gx#identifier? _%$%hd3338933454%_)
                                (if (gx#free-identifier=?
                                     |gerbil/core/match[1]#_g34323_|
                                     _%$%hd3338933454%_)
                                    (if (gx#stx-pair? _%$%tl3339033457%_)
                                        (let ((_%$%e3339133460%_
                                               (gx#syntax-e
                                                _%$%tl3339033457%_)))
                                          (let ((_%$%hd3339233464%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3339133460%_)))
                                                (_%$%tl3339333467%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3339133460%_))))
                                            (if (gx#stx-null?
                                                 _%$%tl3339333467%_)
                                                ((lambda (_%$%g3337133470%_
                                                          _%$%g3337233472%_
                                                          _%$%g3337333473%_
                                                          _%$%g3337433474%_)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          'lambda)
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              '$obj)
                             '())
                       (cons (cons (gx#datum->syntax '#f 'and)
                                   (cons (cons _%$%g3337433474%_
                                               (cons _%$%g3337333473%_
                                                     (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())))
                                         (cons (cons _%$%g3337133470%_
                                                     (cons (cons _%$%g3337233472%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (gx#datum->syntax '#f '$obj) '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%hd3339233464%_
                                                 _%$%hd3338633444%_
                                                 _%$%hd3337933420%_
                                                 _%$%hd3337633410%_)
                                                (_%$%g3325333399%_
                                                 _%$%g3325433403%_))))
                                        (_%$%g3325333399%_ _%$%g3325433403%_))
                                    (_%$%g3325333399%_ _%$%g3325433403%_))
                                (_%$%g3325333399%_ _%$%g3325433403%_))))
                        (_%$%g3325333399%_ _%$%g3325433403%_))))
                (_%$%g3325333399%_ _%$%g3325433403%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3325333399%_
                                                     _%$%g3325433403%_)))
                                              (_%$%g3325333399%_
                                               _%$%g3325433403%_))))
                                      (_%$%g3325333399%_ _%$%g3325433403%_))))
                              (_%$%g3325333399%_ _%$%g3325433403%_))))
                      (_%$%g3325333399%_ _%$%g3325433403%_))))
               (_%$%g3325133572%_
                (lambda (_%$%g3325433503%_)
                  (if (gx#stx-pair? _%$%g3325433503%_)
                      (let ((_%$%e3335833506%_
                             (gx#syntax-e _%$%g3325433503%_)))
                        (let ((_%$%hd3335933510%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3335833506%_)))
                              (_%$%tl3336033513%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3335833506%_))))
                          (if (gx#stx-pair? _%$%tl3336033513%_)
                              (let ((_%$%e3336133516%_
                                     (gx#syntax-e _%$%tl3336033513%_)))
                                (let ((_%$%hd3336233520%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3336133516%_)))
                                      (_%$%tl3336333523%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3336133516%_))))
                                  (if (gx#stx-pair? _%$%tl3336333523%_)
                                      (let ((_%$%e3336433526%_
                                             (gx#syntax-e _%$%tl3336333523%_)))
                                        (let ((_%$%hd3336533530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3336433526%_)))
                                              (_%$%tl3336633533%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3336433526%_))))
                                          (if (gx#stx-datum?
                                               _%$%hd3336533530%_)
                                              (let ((_%$%e3336733536%_
                                                     (gx#stx-e
                                                      _%$%hd3336533530%_)))
                                                (if (equal? _%$%e3336733536%_
                                                            '::)
                                                    (if (gx#stx-pair?
                                                         _%$%tl3336633533%_)
                                                        (let ((_%$%e3336833540%_
                                                               (gx#syntax-e
                                                                _%$%tl3336633533%_)))
                                                          (let ((_%$%hd3336933544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##car _%$%e3336833540%_)))
                        (_%$%tl3337033547%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e3336833540%_))))
                    (if (gx#stx-null? _%$%tl3337033547%_)
                        ((lambda (_%$%g3335533550%_
                                  _%$%g3335633552%_
                                  _%$%g3335733553%_)
                           (cons (gx#datum->syntax '#f 'lambda)
                                 (cons (cons (gx#datum->syntax '#f '$obj) '())
                                       (cons (cons (gx#datum->syntax '#f 'and)
                                                   (cons (cons _%$%g3335733553%_
                                                               (cons _%$%g3335633552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '$obj) '())))
                 (cons (cons _%$%g3335533550%_
                             (cons (gx#datum->syntax '#f '$obj) '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '()))))
                         _%$%hd3336933544%_
                         _%$%hd3336233520%_
                         _%$%hd3335933510%_)
                        (_%$%g3325233499%_ _%$%g3325433503%_))))
                (_%$%g3325233499%_ _%$%g3325433503%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g3325233499%_
                                                     _%$%g3325433503%_)))
                                              (_%$%g3325233499%_
                                               _%$%g3325433503%_))))
                                      (_%$%g3325233499%_ _%$%g3325433503%_))))
                              (_%$%g3325233499%_ _%$%g3325433503%_))))
                      (_%$%g3325233499%_ _%$%g3325433503%_))))
               (_%$%g3325033640%_
                (lambda (_%$%g3325433576%_)
                  (if (gx#stx-pair? _%$%g3325433576%_)
                      (let ((_%$%e3334333579%_
                             (gx#syntax-e _%$%g3325433576%_)))
                        (let ((_%$%hd3334433583%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3334333579%_)))
                              (_%$%tl3334533586%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3334333579%_))))
                          (if (gx#stx-pair? _%$%tl3334533586%_)
                              (let ((_%$%e3334633589%_
                                     (gx#syntax-e _%$%tl3334533586%_)))
                                (let ((_%$%hd3334733593%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3334633589%_)))
                                      (_%$%tl3334833596%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3334633589%_))))
                                  (if (gx#stx-pair? _%$%tl3334833596%_)
                                      (let ((_%$%e3334933599%_
                                             (gx#syntax-e _%$%tl3334833596%_)))
                                        (let ((_%$%hd3335033603%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3334933599%_)))
                                              (_%$%tl3335133606%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3334933599%_))))
                                          (if (gx#identifier?
                                               _%$%hd3335033603%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g34324_|
                                                   _%$%hd3335033603%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl3335133606%_)
                                                      (let ((_%$%e3335233609%_
                                                             (gx#syntax-e
                                                              _%$%tl3335133606%_)))
                                                        (let ((_%$%hd3335333613%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e3335233609%_)))
                      (_%$%tl3335433616%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e3335233609%_))))
                  (if (gx#stx-null? _%$%tl3335433616%_)
                      ((lambda (_%$%g3334033619%_
                                _%$%g3334133621%_
                                _%$%g3334233622%_)
                         (cons (gx#datum->syntax '#f 'lambda)
                               (cons (cons (gx#datum->syntax '#f '$obj) '())
                                     (cons (cons (gx#datum->syntax '#f 'alet)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              '$val)
                                                             (cons (cons _%$%g3334233622%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 (cons _%$%g3334133621%_
                                       (cons (gx#datum->syntax '#f '$obj)
                                             '())))
                           '()))
               (cons (cons _%$%g3334033619%_
                           (cons (gx#datum->syntax '#f '$val) '()))
                     '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '()))))
                       _%$%hd3335333613%_
                       _%$%hd3334733593%_
                       _%$%hd3334433583%_)
                      (_%$%g3325133572%_ _%$%g3325433576%_))))
              (_%$%g3325133572%_ _%$%g3325433576%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g3325133572%_
                                                   _%$%g3325433576%_))
                                              (_%$%g3325133572%_
                                               _%$%g3325433576%_))))
                                      (_%$%g3325133572%_ _%$%g3325433576%_))))
                              (_%$%g3325133572%_ _%$%g3325433576%_))))
                      (_%$%g3325133572%_ _%$%g3325433576%_))))
               (_%$%g3324933682%_
                (lambda (_%$%g3325433644%_)
                  (if (gx#stx-pair? _%$%g3325433644%_)
                      (let ((_%$%e3333433647%_
                             (gx#syntax-e _%$%g3325433644%_)))
                        (let ((_%$%hd3333533651%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3333433647%_)))
                              (_%$%tl3333633654%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3333433647%_))))
                          (if (gx#stx-pair? _%$%tl3333633654%_)
                              (let ((_%$%e3333733657%_
                                     (gx#syntax-e _%$%tl3333633654%_)))
                                (let ((_%$%hd3333833661%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3333733657%_)))
                                      (_%$%tl3333933664%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3333733657%_))))
                                  (if (gx#stx-null? _%$%tl3333933664%_)
                                      ((lambda (_%$%g3333233667%_
                                                _%$%g3333333669%_)
                                         (cons (gx#datum->syntax '#f 'lambda)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            '$obj)
                                                           '())
                                                     (cons (cons _%$%g3333333669%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _%$%g3333233667%_
                               (cons (gx#datum->syntax '#f '$obj) '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _%$%hd3333833661%_
                                       _%$%hd3333533651%_)
                                      (_%$%g3325033640%_ _%$%g3325433644%_))))
                              (_%$%g3325033640%_ _%$%g3325433644%_))))
                      (_%$%g3325033640%_ _%$%g3325433644%_))))
               (_%$%g3324833736%_
                (lambda (_%$%g3325433686%_)
                  (if (gx#stx-pair? _%$%g3325433686%_)
                      (let ((_%$%e3332333689%_
                             (gx#syntax-e _%$%g3325433686%_)))
                        (let ((_%$%hd3332433693%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3332333689%_)))
                              (_%$%tl3332533696%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3332333689%_))))
                          (if (gx#stx-pair? _%$%tl3332533696%_)
                              (let ((_%$%e3332633699%_
                                     (gx#syntax-e _%$%tl3332533696%_)))
                                (let ((_%$%hd3332733703%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3332633699%_)))
                                      (_%$%tl3332833706%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3332633699%_))))
                                  (if (gx#stx-pair? _%$%tl3332833706%_)
                                      (let ((_%$%e3332933709%_
                                             (gx#syntax-e _%$%tl3332833706%_)))
                                        (let ((_%$%hd3333033713%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3332933709%_)))
                                              (_%$%tl3333133716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3332933709%_))))
                                          (if (gx#stx-null? _%$%tl3333133716%_)
                                              ((lambda (_%$%g3332133719%_
                                                        _%$%g3332233721%_)
                                                 (cons _%$%g3332233721%_
                                                       (cons _%$%g3332133719%_
                                                             '())))
                                               _%$%hd3333033713%_
                                               _%$%hd3332733703%_)
                                              (_%$%g3324933682%_
                                               _%$%g3325433686%_))))
                                      (_%$%g3324933682%_ _%$%g3325433686%_))))
                              (_%$%g3324933682%_ _%$%g3325433686%_))))
                      (_%$%g3324933682%_ _%$%g3325433686%_))))
               (_%$%g3324733816%_
                (lambda (_%$%g3325433740%_)
                  (if (gx#stx-pair? _%$%g3325433740%_)
                      (let ((_%$%e3330633743%_
                             (gx#syntax-e _%$%g3325433740%_)))
                        (let ((_%$%hd3330733747%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3330633743%_)))
                              (_%$%tl3330833750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3330633743%_))))
                          (if (gx#stx-pair? _%$%tl3330833750%_)
                              (let ((_%$%e3330933753%_
                                     (gx#syntax-e _%$%tl3330833750%_)))
                                (let ((_%$%hd3331033757%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3330933753%_)))
                                      (_%$%tl3331133760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3330933753%_))))
                                  (if (gx#stx-pair? _%$%hd3331033757%_)
                                      (let ((_%$%e3331233763%_
                                             (gx#syntax-e _%$%hd3331033757%_)))
                                        (let ((_%$%hd3331333767%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3331233763%_)))
                                              (_%$%tl3331433770%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3331233763%_))))
                                          (if (gx#identifier?
                                               _%$%hd3331333767%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g34325_|
                                                   _%$%hd3331333767%_)
                                                  (if (gx#stx-pair?
                                                       _%$%tl3331433770%_)
                                                      (let ((_%$%e3331533773%_
                                                             (gx#syntax-e
                                                              _%$%tl3331433770%_)))
                                                        (let ((_%$%hd3331633777%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e3331533773%_)))
                      (_%$%tl3331733780%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e3331533773%_))))
                  (if (gx#stx-null? _%$%tl3331733780%_)
                      (if (gx#stx-pair? _%$%tl3331133760%_)
                          (let ((_%$%e3331833783%_
                                 (gx#syntax-e _%$%tl3331133760%_)))
                            (let ((_%$%hd3331933787%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e3331833783%_)))
                                  (_%$%tl3332033790%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e3331833783%_))))
                              (if (gx#stx-null? _%$%tl3332033790%_)
                                  ((lambda (_%$%g3330333793%_
                                            _%$%g3330433795%_
                                            _%$%g3330533796%_)
                                     (cons (gx#datum->syntax '#f 'not)
                                           (cons (cons _%$%g3330533796%_
                                                       (cons _%$%g3330433795%_
                                                             (cons _%$%g3330333793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                                   _%$%hd3331933787%_
                                   _%$%hd3331633777%_
                                   _%$%hd3330733747%_)
                                  (_%$%g3324833736%_ _%$%g3325433740%_))))
                          (_%$%g3324833736%_ _%$%g3325433740%_))
                      (_%$%g3324833736%_ _%$%g3325433740%_))))
              (_%$%g3324833736%_ _%$%g3325433740%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g3324833736%_
                                                   _%$%g3325433740%_))
                                              (_%$%g3324833736%_
                                               _%$%g3325433740%_))))
                                      (_%$%g3324833736%_ _%$%g3325433740%_))))
                              (_%$%g3324833736%_ _%$%g3325433740%_))))
                      (_%$%g3324833736%_ _%$%g3325433740%_))))
               (_%$%g3324633924%_
                (lambda (_%$%g3325433820%_)
                  (if (gx#stx-pair? _%$%g3325433820%_)
                      (let ((_%$%e3328233823%_
                             (gx#syntax-e _%$%g3325433820%_)))
                        (let ((_%$%hd3328333827%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3328233823%_)))
                              (_%$%tl3328433830%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3328233823%_))))
                          (if (gx#stx-pair? _%$%tl3328433830%_)
                              (let ((_%$%e3328533833%_
                                     (gx#syntax-e _%$%tl3328433830%_)))
                                (let ((_%$%hd3328633837%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3328533833%_)))
                                      (_%$%tl3328733840%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3328533833%_))))
                                  (if (gx#stx-pair? _%$%hd3328633837%_)
                                      (let ((_%$%e3328833843%_
                                             (gx#syntax-e _%$%hd3328633837%_)))
                                        (let ((_%$%hd3328933847%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3328833843%_)))
                                              (_%$%tl3329033850%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3328833843%_))))
                                          (if (gx#identifier?
                                               _%$%hd3328933847%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g34326_|
                                                   _%$%hd3328933847%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl3329033850%_)
                                                      (let ((_g34327_
                                                             (gx#syntax-split-splice
                                                              _%$%tl3329033850%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g34328_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g34327_)
                               (##values-length _g34327_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g34328_ 2)))
                        (error "Context expects 2 values" _g34328_)))
                  (let ((_%$%target3329133853%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g34327_ 0)))
                        (_%$%tl3329333856%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g34327_ 1))))
                    (if (gx#stx-null? _%$%tl3329333856%_)
                        (letrec ((_%$%loop3329433859%_
                                  (lambda (_%$%hd3329233863%_
                                           _%$%pred3329833866%_)
                                    (if (gx#stx-pair? _%$%hd3329233863%_)
                                        (let ((_%$%e3329533868%_
                                               (gx#syntax-e
                                                _%$%hd3329233863%_)))
                                          (let ((_%$%lp-hd3329633872%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3329533868%_)))
                                                (_%$%lp-tl3329733875%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3329533868%_))))
                                            (_%$%loop3329433859%_
                                             _%$%lp-tl3329733875%_
                                             (cons _%$%lp-hd3329633872%_
                                                   _%$%pred3329833866%_))))
                                        (let ((_%$%pred3329933878%_
                                               (reverse _%$%pred3329833866%_)))
                                          (if (gx#stx-pair? _%$%tl3328733840%_)
                                              (let ((_%$%e3330033881%_
                                                     (gx#syntax-e
                                                      _%$%tl3328733840%_)))
                                                (let ((_%$%hd3330133885%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3330033881%_)))
                                                      (_%$%tl3330233888%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3330033881%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3330233888%_)
                                                      ((lambda (_%$%g3327933891%_
                                                                _%$%g3328033893%_
                                                                _%$%g3328133894%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'or)
                                                               (foldr (lambda (_%$%g3391533918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%$%g3391633921%_)
                                (cons (cons _%$%g3328133894%_
                                            (cons _%$%g3391533918%_
                                                  (cons _%$%g3327933891%_
                                                        '())))
                                      _%$%g3391633921%_))
                              '()
                              _%$%g3328033893%_)))
               _%$%hd3330133885%_
               _%$%pred3329933878%_
               _%$%hd3328333827%_)
              (_%$%g3324733816%_ _%$%g3325433820%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3324733816%_
                                               _%$%g3325433820%_)))))))
                          (_%$%loop3329433859%_ _%$%target3329133853%_ '()))
                        (_%$%g3324733816%_ _%$%g3325433820%_)))))
              (_%$%g3324733816%_ _%$%g3325433820%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g3324733816%_
                                                   _%$%g3325433820%_))
                                              (_%$%g3324733816%_
                                               _%$%g3325433820%_))))
                                      (_%$%g3324733816%_ _%$%g3325433820%_))))
                              (_%$%g3324733816%_ _%$%g3325433820%_))))
                      (_%$%g3324733816%_ _%$%g3325433820%_))))
               (_%$%g3324534032%_
                (lambda (_%$%g3325433928%_)
                  (if (gx#stx-pair? _%$%g3325433928%_)
                      (let ((_%$%e3325833931%_
                             (gx#syntax-e _%$%g3325433928%_)))
                        (let ((_%$%hd3325933935%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3325833931%_)))
                              (_%$%tl3326033938%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3325833931%_))))
                          (if (gx#stx-pair? _%$%tl3326033938%_)
                              (let ((_%$%e3326133941%_
                                     (gx#syntax-e _%$%tl3326033938%_)))
                                (let ((_%$%hd3326233945%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3326133941%_)))
                                      (_%$%tl3326333948%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3326133941%_))))
                                  (if (gx#stx-pair? _%$%hd3326233945%_)
                                      (let ((_%$%e3326433951%_
                                             (gx#syntax-e _%$%hd3326233945%_)))
                                        (let ((_%$%hd3326533955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3326433951%_)))
                                              (_%$%tl3326633958%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3326433951%_))))
                                          (if (gx#identifier?
                                               _%$%hd3326533955%_)
                                              (if (gx#free-identifier=?
                                                   |gerbil/core/match[1]#_g34329_|
                                                   _%$%hd3326533955%_)
                                                  (if (gx#stx-pair/null?
                                                       _%$%tl3326633958%_)
                                                      (let ((_g34330_
                                                             (gx#syntax-split-splice
                                                              _%$%tl3326633958%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g34331_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g34330_)
                               (##values-length _g34330_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g34331_ 2)))
                        (error "Context expects 2 values" _g34331_)))
                  (let ((_%$%target3326733961%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g34330_ 0)))
                        (_%$%tl3326933964%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g34330_ 1))))
                    (if (gx#stx-null? _%$%tl3326933964%_)
                        (letrec ((_%$%loop3327033967%_
                                  (lambda (_%$%hd3326833971%_
                                           _%$%pred3327433974%_)
                                    (if (gx#stx-pair? _%$%hd3326833971%_)
                                        (let ((_%$%e3327133976%_
                                               (gx#syntax-e
                                                _%$%hd3326833971%_)))
                                          (let ((_%$%lp-hd3327233980%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e3327133976%_)))
                                                (_%$%lp-tl3327333983%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e3327133976%_))))
                                            (_%$%loop3327033967%_
                                             _%$%lp-tl3327333983%_
                                             (cons _%$%lp-hd3327233980%_
                                                   _%$%pred3327433974%_))))
                                        (let ((_%$%pred3327533986%_
                                               (reverse _%$%pred3327433974%_)))
                                          (if (gx#stx-pair? _%$%tl3326333948%_)
                                              (let ((_%$%e3327633989%_
                                                     (gx#syntax-e
                                                      _%$%tl3326333948%_)))
                                                (let ((_%$%hd3327733993%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3327633989%_)))
                                                      (_%$%tl3327833996%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3327633989%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3327833996%_)
                                                      ((lambda (_%$%g3325533999%_
                                                                _%$%g3325634001%_
                                                                _%$%g3325734002%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                'and)
                                                               (foldr (lambda (_%$%g3402334026%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%$%g3402434029%_)
                                (cons (cons _%$%g3325734002%_
                                            (cons _%$%g3402334026%_
                                                  (cons _%$%g3325533999%_
                                                        '())))
                                      _%$%g3402434029%_))
                              '()
                              _%$%g3325634001%_)))
               _%$%hd3327733993%_
               _%$%pred3327533986%_
               _%$%hd3325933935%_)
              (_%$%g3324633924%_ _%$%g3325433928%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3324633924%_
                                               _%$%g3325433928%_)))))))
                          (_%$%loop3327033967%_ _%$%target3326733961%_ '()))
                        (_%$%g3324633924%_ _%$%g3325433928%_)))))
              (_%$%g3324633924%_ _%$%g3325433928%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g3324633924%_
                                                   _%$%g3325433928%_))
                                              (_%$%g3324633924%_
                                               _%$%g3325433928%_))))
                                      (_%$%g3324633924%_ _%$%g3325433928%_))))
                              (_%$%g3324633924%_ _%$%g3325433928%_))))
                      (_%$%g3324633924%_ _%$%g3325433928%_)))))
          (_%$%g3324534032%_ _%$stx33242%_))))
    (define |gerbil/core/match[:0:]#defsyntax-for-match|
      (lambda (_%$stx34038%_)
        (let* ((_%$%g3404334077%_
                (lambda (_%$%g3404434073%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3404434073%_)))
               (_%$%g3404234134%_
                (lambda (_%$%g3404434081%_)
                  (if (gx#stx-pair? _%$%g3404434081%_)
                      (let ((_%$%e3406334084%_
                             (gx#syntax-e _%$%g3404434081%_)))
                        (let ((_%$%hd3406434088%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3406334084%_)))
                              (_%$%tl3406534091%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3406334084%_))))
                          (if (gx#stx-pair? _%$%tl3406534091%_)
                              (let ((_%$%e3406634094%_
                                     (gx#syntax-e _%$%tl3406534091%_)))
                                (let ((_%$%hd3406734098%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3406634094%_)))
                                      (_%$%tl3406834101%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3406634094%_))))
                                  (if (gx#stx-pair? _%$%tl3406834101%_)
                                      (let ((_%$%e3406934104%_
                                             (gx#syntax-e _%$%tl3406834101%_)))
                                        (let ((_%$%hd3407034108%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3406934104%_)))
                                              (_%$%tl3407134111%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3406934104%_))))
                                          (if (gx#stx-null? _%$%tl3407134111%_)
                                              ((lambda (_%$%g3406034114%_
                                                        _%$%g3406134116%_
                                                        _%$%g3406234117%_)
                                                 (cons _%$%g3406234117%_
                                                       (cons _%$%g3406134116%_
                                                             (cons _%$%g3406034114%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons (gx#datum->syntax '#f 'lambda)
                                       (cons (cons (gx#datum->syntax '#f '$stx)
                                                   '())
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'raise-syntax-error)
                                                         (cons '#f
                                                               (cons '"bad syntax; no macro definition for defsyntax-for-match"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons (gx#datum->syntax '#f '$stx) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))
                                 '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%$%hd3407034108%_
                                               _%$%hd3406734098%_
                                               _%$%hd3406434088%_)
                                              (_%$%g3404334077%_
                                               _%$%g3404434081%_))))
                                      (_%$%g3404334077%_ _%$%g3404434081%_))))
                              (_%$%g3404334077%_ _%$%g3404434081%_))))
                      (_%$%g3404334077%_ _%$%g3404434081%_))))
               (_%$%g3404134202%_
                (lambda (_%$%g3404434138%_)
                  (if (gx#stx-pair? _%$%g3404434138%_)
                      (let ((_%$%e3404834141%_
                             (gx#syntax-e _%$%g3404434138%_)))
                        (let ((_%$%hd3404934145%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3404834141%_)))
                              (_%$%tl3405034148%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3404834141%_))))
                          (if (gx#stx-pair? _%$%tl3405034148%_)
                              (let ((_%$%e3405134151%_
                                     (gx#syntax-e _%$%tl3405034148%_)))
                                (let ((_%$%hd3405234155%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3405134151%_)))
                                      (_%$%tl3405334158%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3405134151%_))))
                                  (if (gx#stx-pair? _%$%tl3405334158%_)
                                      (let ((_%$%e3405434161%_
                                             (gx#syntax-e _%$%tl3405334158%_)))
                                        (let ((_%$%hd3405534165%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e3405434161%_)))
                                              (_%$%tl3405634168%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e3405434161%_))))
                                          (if (gx#stx-pair? _%$%tl3405634168%_)
                                              (let ((_%$%e3405734171%_
                                                     (gx#syntax-e
                                                      _%$%tl3405634168%_)))
                                                (let ((_%$%hd3405834175%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e3405734171%_)))
                                                      (_%$%tl3405934178%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e3405734171%_))))
                                                  (if (gx#stx-null?
                                                       _%$%tl3405934178%_)
                                                      ((lambda (_%$%g3404534181%_
                                                                _%$%g3404634183%_
                                                                _%$%g3404734184%_)
                                                         (if (gx#identifier?
                                                              _%$%g3404734184%_)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'defsyntax)
                           (cons _%$%g3404734184%_
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'make-match-macro)
                                             (cons 'macro:
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'let)
                                                               (cons (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                          '#f
                                          '$match-e)
                                         (cons _%$%g3404634183%_ '()))
                                   (cons (cons (gx#datum->syntax '#f '$macro-e)
                                               (cons _%$%g3404534181%_ '()))
                                         '()))
                             (cons (cons (gx#datum->syntax '#f 'lambda)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      '$stx)
                                                     '())
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax-case)
                                                           (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          '$stx)
                         (cons '()
                               (cons (cons (cons 'match:
                                                 (gx#datum->syntax '#f 'body))
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'core-apply-expander)
                                                       (cons (gx#datum->syntax
                                                              '#f
                                                              '$match-e)
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'stx-wrap-source)
                                 (cons (cons (gx#datum->syntax '#f 'syntax)
                                             (cons (gx#datum->syntax '#f 'body)
                                                   '()))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'stx-source)
                                                   (cons (gx#datum->syntax
                                                          '#f
                                                          '$stx)
                                                         '()))
                                             '())))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '()))
                                     (cons (cons (gx#datum->syntax '#f '_)
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'core-apply-expander)
                                                             (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '$macro-e)
                           (cons (gx#datum->syntax '#f '$stx) '())))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))
                                   '())))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     (_%$%g3404234134%_ _%$%g3404434138%_)))
               _%$%hd3405834175%_
               _%$%hd3405534165%_
               _%$%hd3405234155%_)
              (_%$%g3404234134%_ _%$%g3404434138%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g3404234134%_
                                               _%$%g3404434138%_))))
                                      (_%$%g3404234134%_ _%$%g3404434138%_))))
                              (_%$%g3404234134%_ _%$%g3404434138%_))))
                      (_%$%g3404234134%_ _%$%g3404434138%_)))))
          (_%$%g3404134202%_ _%$stx34038%_))))
    (define |gerbil/core/match[:0:]#defrules-for-match|
      (lambda (_%$stx34206%_)
        (let* ((_%$%g3421034225%_
                (lambda (_%$%g3421134221%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g3421134221%_)))
               (_%$%g3420934268%_
                (lambda (_%$%g3421134229%_)
                  (if (gx#stx-pair? _%$%g3421134229%_)
                      (let ((_%$%e3421434232%_
                             (gx#syntax-e _%$%g3421134229%_)))
                        (let ((_%$%hd3421534236%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e3421434232%_)))
                              (_%$%tl3421634239%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e3421434232%_))))
                          (if (gx#stx-pair? _%$%tl3421634239%_)
                              (let ((_%$%e3421734242%_
                                     (gx#syntax-e _%$%tl3421634239%_)))
                                (let ((_%$%hd3421834246%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e3421734242%_)))
                                      (_%$%tl3421934249%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e3421734242%_))))
                                  ((lambda (_%$%g3421234252%_
                                            _%$%g3421334254%_)
                                     (cons (gx#datum->syntax
                                            '#f
                                            'defsyntax-for-match)
                                           (cons _%$%g3421334254%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'syntax-rules)
                                                             _%$%g3421234252%_)
                                                       '()))))
                                   _%$%tl3421934249%_
                                   _%$%hd3421834246%_)))
                              (_%$%g3421034225%_ _%$%g3421134229%_))))
                      (_%$%g3421034225%_ _%$%g3421134229%_)))))
          (_%$%g3420934268%_ _%$stx34206%_))))))

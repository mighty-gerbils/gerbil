(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-4[1]#_g27288_|
    (##structure
     gx#syntax-quote::t
     '@method
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/mop~MOP-4[1]#typedef-body?|
      (lambda (_%stx24810%_)
        (letrec ((_%body-opt?24813%_
                  (lambda (_%key24816%_)
                    (let ((__tmp27260 (gx#stx-e _%key24816%_)))
                      (declare (not safe))
                      (##memq __tmp27260
                              '(id:
                                struct:
                                name:
                                constructor:
                                transparent:
                                final:
                                print:
                                equal:
                                metaclass:
                                acyclic:))))))
          (gx#stx-plist? _%stx24810%_ _%body-opt?24813%_))))
    (define |gerbil/core/mop~MOP-4[1]#generate-defclass|
      (lambda (_%stx22573%_
               _%id22575%_
               _%super-ref22576%_
               _%slots22577%_
               _%body22578%_)
        (letrec ((_%wrap22580%_
                  (lambda (_%e-stx24807%_)
                    (gx#stx-wrap-source
                     _%e-stx24807%_
                     (gx#stx-source _%stx22573%_))))
                 (_%make-id22582%_
                  (lambda _%args24804%_
                    (apply gx#stx-identifier _%id22575%_ _%args24804%_)))
                 (_%get-mixin-slots22583%_
                  (lambda (_%super24774%_ _%slots24776%_)
                    (letrec* ((_%tab24778%_ (make-hash-table-eq))
                              (_%dedup24780%_
                               (lambda (_%mixins24791%_)
                                 (let _%lp24794%_ ((_%rest24797%_
                                                    _%mixins24791%_)
                                                   (_%r24799%_ '()))
                                   (if (pair? _%rest24797%_)
                                       (let ((_%slot24801%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%rest24797%_))))
                                         (if (hash-get
                                              _%tab24778%_
                                              _%slot24801%_)
                                             (_%lp24794%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%rest24797%_))
                                              _%r24799%_)
                                             (begin
                                               (hash-put!
                                                _%tab24778%_
                                                _%slot24801%_
                                                '#t)
                                               (_%lp24794%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%rest24797%_))
                                                (cons _%slot24801%_
                                                      _%r24799%_)))))
                                       (reverse _%r24799%_))))))
                      (gx#stx-for-each
                       (lambda (_%slot24782%_)
                         (hash-put! _%tab24778%_ (gx#stx-e _%slot24782%_) '#t))
                       _%slots24776%_)
                      (if (not _%super24774%_)
                          '()
                          (if (gx#identifier? _%super24774%_)
                              (_%dedup24780%_
                               (_%get-mixin-slots-r22584%_ _%super24774%_))
                              (_%dedup24780%_
                               (concatenate
                                (map _%get-mixin-slots-r22584%_
                                     _%super24774%_))))))))
                 (_%get-mixin-slots-r22584%_
                  (lambda (_%type-id24768%_)
                    (let ((_%info24771%_
                           (gx#syntax-local-value _%type-id24768%_)))
                      (let ((__tmp27262
                             (let ((__obj27046 _%info24771%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-direct-instance-of?
                                      __obj27046
                                      'gerbil.core#class-type-info::t))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      __obj27046
                                      '5
                                      '#f
                                      '#f))
                                   (class-slot-ref
                                    gerbil/core/mop~MOP-2#class-type-info::t
                                    __obj27046
                                    'slots))))
                            (__tmp27261
                             (concatenate
                              (map _%get-mixin-slots-r22584%_
                                   (let ((__obj27047 _%info24771%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (##structure-direct-instance-of?
                                            __obj27047
                                            'gerbil.core#class-type-info::t))
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            __obj27047
                                            '4
                                            '#f
                                            '#f))
                                         (class-slot-ref
                                          gerbil/core/mop~MOP-2#class-type-info::t
                                          __obj27047
                                          'super)))))))
                        (declare (not safe))
                        (##append __tmp27262 __tmp27261))))))
          (gx#check-duplicate-identifiers _%slots22577%_ _%stx22573%_)
          (let* ((_%name22586%_ (symbol->string (gx#stx-e _%id22575%_)))
                 (_%super22589%_
                  (map gx#syntax-local-value _%super-ref22576%_))
                 (_%struct?22592%_ (gx#stx-getq 'struct: _%body22578%_))
                 (_%g2259522603%_
                  (lambda (_%g2259622599%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2259622599%_)))
                 (_%g2259424764%_
                  (lambda (_%g2259622607%_)
                    ((lambda (_%L22610%_)
                       (let* ((_%g2262622634%_
                               (lambda (_%g2262722630%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2262722630%_)))
                              (_%g2262524760%_
                               (lambda (_%g2262722638%_)
                                 ((lambda (_%L22641%_)
                                    (let* ((_%g2265422662%_
                                            (lambda (_%g2265522658%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2265522658%_)))
                                           (_%g2265324756%_
                                            (lambda (_%g2265522666%_)
                                              ((lambda (_%L22669%_)
                                                 (let* ((_%g2268222690%_
                                                         (lambda (_%g2268322686%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2268322686%_)))
                                                        (_%g2268124752%_
                                                         (lambda (_%g2268322694%_)
                                                           ((lambda (_%L22697%_)
                                                              (let* ((_%g2271022718%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2271122714%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2271122714%_)))
                             (_%g2270924748%_
                              (lambda (_%g2271122722%_)
                                ((lambda (_%L22725%_)
                                   (let* ((_%g2273822755%_
                                           (lambda (_%g2273922751%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2273922751%_)))
                                          (_%g2273724744%_
                                           (lambda (_%g2273922759%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2273922759%_)
                                                 (let ((_g27263_
                                                        (gx#syntax-split-splice
                                                         _%g2273922759%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27264_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27263_)
                          (##values-length _g27263_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27264_ 2)))
                   (error "Context expects 2 values" _g27264_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2274122762%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27263_
                                                               0)))
                                                           (_%tl2274322765%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27263_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2274322765%_)
                                                           (letrec ((_%loop2274422768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2274222772%_ _%slot2274822775%_)
                               (if (gx#stx-pair? _%hd2274222772%_)
                                   (let ((_%e2274522778%_
                                          (gx#syntax-e _%hd2274222772%_)))
                                     (let ((_%lp-hd2274622782%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2274522778%_)))
                                           (_%lp-tl2274722785%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2274522778%_))))
                                       (_%loop2274422768%_
                                        _%lp-tl2274722785%_
                                        (cons _%lp-hd2274622782%_
                                              _%slot2274822775%_))))
                                   (let ((_%slot2274922788%_
                                          (reverse _%slot2274822775%_)))
                                     ((lambda (_%L22792%_)
                                        (let* ((_%g2280922826%_
                                                (lambda (_%g2281022822%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2281022822%_)))
                                               (_%g2280824735%_
                                                (lambda (_%g2281022830%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2281022830%_)
                                                      (let ((_g27265_
                                                             (gx#syntax-split-splice
                                                              _%g2281022830%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27266_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27265_)
                               (##values-length _g27265_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27266_ 2)))
                        (error "Context expects 2 values" _g27266_)))
                  (let ((_%target2281222833%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27265_ 0)))
                        (_%tl2281422836%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27265_ 1))))
                    (if (gx#stx-null? _%tl2281422836%_)
                        (letrec ((_%loop2281522839%_
                                  (lambda (_%hd2281322843%_ _%getf2281922846%_)
                                    (if (gx#stx-pair? _%hd2281322843%_)
                                        (let ((_%e2281622849%_
                                               (gx#syntax-e _%hd2281322843%_)))
                                          (let ((_%lp-hd2281722853%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2281622849%_)))
                                                (_%lp-tl2281822856%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2281622849%_))))
                                            (_%loop2281522839%_
                                             _%lp-tl2281822856%_
                                             (cons _%lp-hd2281722853%_
                                                   _%getf2281922846%_))))
                                        (let ((_%getf2282022859%_
                                               (reverse _%getf2281922846%_)))
                                          ((lambda (_%L22863%_)
                                             (let* ((_%g2288022897%_
                                                     (lambda (_%g2288122893%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2288122893%_)))
                                                    (_%g2287924726%_
                                                     (lambda (_%g2288122901%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2288122901%_)
                                                           (let ((_g27267_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2288122901%_ '0)))
                     (begin
                       (let ((_g27268_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27267_)
                                    (##values-length _g27267_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27268_ 2)))
                             (error "Context expects 2 values" _g27268_)))
                       (let ((_%target2288322904%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27267_ 0)))
                             (_%tl2288522907%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27267_ 1))))
                         (if (gx#stx-null? _%tl2288522907%_)
                             (letrec ((_%loop2288622910%_
                                       (lambda (_%hd2288422914%_
                                                _%setf2289022917%_)
                                         (if (gx#stx-pair? _%hd2288422914%_)
                                             (let ((_%e2288722920%_
                                                    (gx#syntax-e
                                                     _%hd2288422914%_)))
                                               (let ((_%lp-hd2288822924%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2288722920%_)))
                                                     (_%lp-tl2288922927%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2288722920%_))))
                                                 (_%loop2288622910%_
                                                  _%lp-tl2288922927%_
                                                  (cons _%lp-hd2288822924%_
                                                        _%setf2289022917%_))))
                                             (let ((_%setf2289122930%_
                                                    (reverse _%setf2289022917%_)))
                                               ((lambda (_%L22934%_)
                                                  (let* ((_%mixin-slots22951%_
                                                          (_%get-mixin-slots22583%_
                                                           _%super-ref22576%_
                                                           _%slots22577%_))
                                                         (_%g2295422971%_
                                                          (lambda (_%g2295522967%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2295522967%_)))
                                                         (_%g2295324722%_
                                                          (lambda (_%g2295522975%_)
                                                            (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2295522975%_)
                        (let ((_g27269_
                               (gx#syntax-split-splice _%g2295522975%_ '0)))
                          (begin
                            (let ((_g27270_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g27269_)
                                         (##values-length _g27269_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g27270_ 2)))
                                  (error "Context expects 2 values" _g27270_)))
                            (let ((_%target2295722978%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27269_ 0)))
                                  (_%tl2295922981%_
                                   (let ()
                                     (declare (not safe))
                                     (##values-ref _g27269_ 1))))
                              (if (gx#stx-null? _%tl2295922981%_)
                                  (letrec ((_%loop2296022984%_
                                            (lambda (_%hd2295822988%_
                                                     _%mixin-slot2296422991%_)
                                              (if (gx#stx-pair?
                                                   _%hd2295822988%_)
                                                  (let ((_%e2296122994%_
                                                         (gx#syntax-e
                                                          _%hd2295822988%_)))
                                                    (let ((_%lp-hd2296222998%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%e2296122994%_)))
                                                          (_%lp-tl2296323001%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%e2296122994%_))))
                                                      (_%loop2296022984%_
                                                       _%lp-tl2296323001%_
                                                       (cons _%lp-hd2296222998%_
                                                             _%mixin-slot2296422991%_))))
                                                  (let ((_%mixin-slot2296523004%_
                                                         (reverse _%mixin-slot2296422991%_)))
                                                    ((lambda (_%L23008%_)
                                                       (let* ((_%g2302623043%_
                                                               (lambda (_%g2302723039%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%g2302723039%_)))
                      (_%g2302524713%_
                       (lambda (_%g2302723047%_)
                         (if (gx#stx-pair/null? _%g2302723047%_)
                             (let ((_g27271_
                                    (gx#syntax-split-splice
                                     _%g2302723047%_
                                     '0)))
                               (begin
                                 (let ((_g27272_
                                        (let ()
                                          (declare (not safe))
                                          (if (##values? _g27271_)
                                              (##values-length _g27271_)
                                              1))))
                                   (if (not (let ()
                                              (declare (not safe))
                                              (##fx= _g27272_ 2)))
                                       (error "Context expects 2 values"
                                              _g27272_)))
                                 (let ((_%target2302923050%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27271_ 0)))
                                       (_%tl2303123053%_
                                        (let ()
                                          (declare (not safe))
                                          (##values-ref _g27271_ 1))))
                                   (if (gx#stx-null? _%tl2303123053%_)
                                       (letrec ((_%loop2303223056%_
                                                 (lambda (_%hd2303023060%_
                                                          _%mixin-getf2303623063%_)
                                                   (if (gx#stx-pair?
                                                        _%hd2303023060%_)
                                                       (let ((_%e2303323066%_
                                                              (gx#syntax-e
                                                               _%hd2303023060%_)))
                                                         (let ((_%lp-hd2303423070%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2303323066%_)))
                       (_%lp-tl2303523073%_
                        (let () (declare (not safe)) (##cdr _%e2303323066%_))))
                   (_%loop2303223056%_
                    _%lp-tl2303523073%_
                    (cons _%lp-hd2303423070%_ _%mixin-getf2303623063%_))))
               (let ((_%mixin-getf2303723076%_
                      (reverse _%mixin-getf2303623063%_)))
                 ((lambda (_%L23080%_)
                    (let* ((_%g2309723114%_
                            (lambda (_%g2309823110%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2309823110%_)))
                           (_%g2309624704%_
                            (lambda (_%g2309823118%_)
                              (if (gx#stx-pair/null? _%g2309823118%_)
                                  (let ((_g27273_
                                         (gx#syntax-split-splice
                                          _%g2309823118%_
                                          '0)))
                                    (begin
                                      (let ((_g27274_
                                             (let ()
                                               (declare (not safe))
                                               (if (##values? _g27273_)
                                                   (##values-length _g27273_)
                                                   1))))
                                        (if (not (let ()
                                                   (declare (not safe))
                                                   (##fx= _g27274_ 2)))
                                            (error "Context expects 2 values"
                                                   _g27274_)))
                                      (let ((_%target2310023121%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27273_ 0)))
                                            (_%tl2310223124%_
                                             (let ()
                                               (declare (not safe))
                                               (##values-ref _g27273_ 1))))
                                        (if (gx#stx-null? _%tl2310223124%_)
                                            (letrec ((_%loop2310323127%_
                                                      (lambda (_%hd2310123131%_
                                                               _%mixin-setf2310723134%_)
                                                        (if (gx#stx-pair?
                                                             _%hd2310123131%_)
                                                            (let ((_%e2310423137%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%hd2310123131%_)))
                      (let ((_%lp-hd2310523141%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2310423137%_)))
                            (_%lp-tl2310623144%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2310423137%_))))
                        (_%loop2310323127%_
                         _%lp-tl2310623144%_
                         (cons _%lp-hd2310523141%_ _%mixin-setf2310723134%_))))
                    (let ((_%mixin-setf2310823147%_
                           (reverse _%mixin-setf2310723134%_)))
                      ((lambda (_%L23151%_)
                         (let* ((_%g2316823185%_
                                 (lambda (_%g2316923181%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"Bad syntax; invalid match target"
                                    _%g2316923181%_)))
                                (_%g2316724687%_
                                 (lambda (_%g2316923189%_)
                                   (if (gx#stx-pair/null? _%g2316923189%_)
                                       (let ((_g27275_
                                              (gx#syntax-split-splice
                                               _%g2316923189%_
                                               '0)))
                                         (begin
                                           (let ((_g27276_
                                                  (let ()
                                                    (declare (not safe))
                                                    (if (##values? _g27275_)
                                                        (##values-length
                                                         _g27275_)
                                                        1))))
                                             (if (not (let ()
                                                        (declare (not safe))
                                                        (##fx= _g27276_ 2)))
                                                 (error "Context expects 2 values"
                                                        _g27276_)))
                                           (let ((_%target2317123192%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref _g27275_ 0)))
                                                 (_%tl2317323195%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##values-ref
                                                     _g27275_
                                                     1))))
                                             (if (gx#stx-null?
                                                  _%tl2317323195%_)
                                                 (letrec ((_%loop2317423198%_
                                                           (lambda (_%hd2317223202%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%ugetf2317823205%_)
                     (if (gx#stx-pair? _%hd2317223202%_)
                         (let ((_%e2317523208%_
                                (gx#syntax-e _%hd2317223202%_)))
                           (let ((_%lp-hd2317623212%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%e2317523208%_)))
                                 (_%lp-tl2317723215%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%e2317523208%_))))
                             (_%loop2317423198%_
                              _%lp-tl2317723215%_
                              (cons _%lp-hd2317623212%_ _%ugetf2317823205%_))))
                         (let ((_%ugetf2317923218%_
                                (reverse _%ugetf2317823205%_)))
                           ((lambda (_%L23222%_)
                              (let* ((_%g2323923256%_
                                      (lambda (_%g2324023252%_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _%g2324023252%_)))
                                     (_%g2323824670%_
                                      (lambda (_%g2324023260%_)
                                        (if (gx#stx-pair/null? _%g2324023260%_)
                                            (let ((_g27277_
                                                   (gx#syntax-split-splice
                                                    _%g2324023260%_
                                                    '0)))
                                              (begin
                                                (let ((_g27278_
                                                       (let ()
                                                         (declare (not safe))
                                                         (if (##values?
                                                              _g27277_)
                                                             (##values-length
                                                              _g27277_)
                                                             1))))
                                                  (if (not (let ()
                                                             (declare
                                                               (not safe))
                                                             (##fx= _g27278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2)))
              (error "Context expects 2 values" _g27278_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%target2324223263%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27277_
                                                          0)))
                                                      (_%tl2324423266%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##values-ref
                                                          _g27277_
                                                          1))))
                                                  (if (gx#stx-null?
                                                       _%tl2324423266%_)
                                                      (letrec ((_%loop2324523269%_
                                                                (lambda (_%hd2324323273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%usetf2324923276%_)
                          (if (gx#stx-pair? _%hd2324323273%_)
                              (let ((_%e2324623279%_
                                     (gx#syntax-e _%hd2324323273%_)))
                                (let ((_%lp-hd2324723283%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2324623279%_)))
                                      (_%lp-tl2324823286%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2324623279%_))))
                                  (_%loop2324523269%_
                                   _%lp-tl2324823286%_
                                   (cons _%lp-hd2324723283%_
                                         _%usetf2324923276%_))))
                              (let ((_%usetf2325023289%_
                                     (reverse _%usetf2324923276%_)))
                                ((lambda (_%L23293%_)
                                   (let* ((_%g2331023327%_
                                           (lambda (_%g2331123323%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2331123323%_)))
                                          (_%g2330924653%_
                                           (lambda (_%g2331123331%_)
                                             (if (gx#stx-pair/null?
                                                  _%g2331123331%_)
                                                 (let ((_g27279_
                                                        (gx#syntax-split-splice
                                                         _%g2331123331%_
                                                         '0)))
                                                   (begin
                                                     (let ((_g27280_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g27279_)
                          (##values-length _g27279_)
                          1))))
               (if (not (let () (declare (not safe)) (##fx= _g27280_ 2)))
                   (error "Context expects 2 values" _g27280_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_%target2331323334%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27279_
                                                               0)))
                                                           (_%tl2331523337%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##values-ref
                                                               _g27279_
                                                               1))))
                                                       (if (gx#stx-null?
                                                            _%tl2331523337%_)
                                                           (letrec ((_%loop2331623340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%hd2331423344%_
                                      _%mixin-ugetf2332023347%_)
                               (if (gx#stx-pair? _%hd2331423344%_)
                                   (let ((_%e2331723350%_
                                          (gx#syntax-e _%hd2331423344%_)))
                                     (let ((_%lp-hd2331823354%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2331723350%_)))
                                           (_%lp-tl2331923357%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2331723350%_))))
                                       (_%loop2331623340%_
                                        _%lp-tl2331923357%_
                                        (cons _%lp-hd2331823354%_
                                              _%mixin-ugetf2332023347%_))))
                                   (let ((_%mixin-ugetf2332123360%_
                                          (reverse _%mixin-ugetf2332023347%_)))
                                     ((lambda (_%L23364%_)
                                        (let* ((_%g2338123398%_
                                                (lambda (_%g2338223394%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%g2338223394%_)))
                                               (_%g2338024636%_
                                                (lambda (_%g2338223402%_)
                                                  (if (gx#stx-pair/null?
                                                       _%g2338223402%_)
                                                      (let ((_g27281_
                                                             (gx#syntax-split-splice
                                                              _%g2338223402%_
                                                              '0)))
                                                        (begin
                                                          (let ((_g27282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (if (##values? _g27281_)
                               (##values-length _g27281_)
                               1))))
                    (if (not (let () (declare (not safe)) (##fx= _g27282_ 2)))
                        (error "Context expects 2 values" _g27282_)))
                  (let ((_%target2338423405%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27281_ 0)))
                        (_%tl2338623408%_
                         (let ()
                           (declare (not safe))
                           (##values-ref _g27281_ 1))))
                    (if (gx#stx-null? _%tl2338623408%_)
                        (letrec ((_%loop2338723411%_
                                  (lambda (_%hd2338523415%_
                                           _%mixin-usetf2339123418%_)
                                    (if (gx#stx-pair? _%hd2338523415%_)
                                        (let ((_%e2338823421%_
                                               (gx#syntax-e _%hd2338523415%_)))
                                          (let ((_%lp-hd2338923425%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2338823421%_)))
                                                (_%lp-tl2339023428%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2338823421%_))))
                                            (_%loop2338723411%_
                                             _%lp-tl2339023428%_
                                             (cons _%lp-hd2338923425%_
                                                   _%mixin-usetf2339123418%_))))
                                        (let ((_%mixin-usetf2339223431%_
                                               (reverse _%mixin-usetf2339123418%_)))
                                          ((lambda (_%L23435%_)
                                             (let* ((_%type-slots23470%_
                                                     (if (gx#stx-null?
                                                          _%slots22577%_)
                                                         '()
                                                         (cons 'slots:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L22934%_
                                _%L22863%_
                                _%L22792%_)
                               (foldr (lambda (_%g2345523460%_
                                               _%g2345623463%_
                                               _%g2345723465%_
                                               _%g2345823467%_)
                                        (cons (cons _%g2345723465%_
                                                    (cons _%g2345623463%_
                                                          (cons _%g2345523460%_
                                                                '())))
                                              _%g2345823467%_))
                                      '()
                                      _%L22934%_
                                      _%L22863%_
                                      _%L22792%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-mixin-slots23491%_
                                                     (if (gx#stx-null?
                                                          _%mixin-slots22951%_)
                                                         '()
                                                         (cons 'mixin:
                                                               (cons (begin
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#syntax-check-splice-targets
                                _%L23151%_
                                _%L23080%_
                                _%L23008%_)
                               (foldr (lambda (_%g2347623481%_
                                               _%g2347723484%_
                                               _%g2347823486%_
                                               _%g2347923488%_)
                                        (cons (cons _%g2347823486%_
                                                    (cons _%g2347723484%_
                                                          (cons _%g2347623481%_
                                                                '())))
                                              _%g2347923488%_))
                                      '()
                                      _%L23151%_
                                      _%L23080%_
                                      _%L23008%_))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-name23498%_
                                                     (cons 'name:
                                                           (cons (let ((_%$e23494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'name: _%body22578%_)))
                           (if _%$e23494%_ _%$e23494%_ _%id22575%_))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-id23505%_
                                                     (cons 'id:
                                                           (cons (let ((_%$e23501%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                (gx#stx-getq 'id: _%body22578%_)))
                           (if _%$e23501%_
                               _%$e23501%_
                               (let ()
                                 (declare (not safe))
                                 (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                  _%L22610%_))))
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-constructor23520%_
                                                     (let ((_%$e23516%_
                                                            (let ((_%e2350723509%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#stx-getq 'constructor: _%body22578%_)))
                      (if _%e2350723509%_
                          (let ((_%e23513%_ _%e2350723509%_))
                            (cons 'constructor: (cons _%e23513%_ '())))
                          '#f))))
               (if _%$e23516%_ _%$e23516%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%properties23561%_
                                                     (let* ((_%properties23523%_
                                                             (if (gx#stx-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#stx-getq 'transparent: _%body22578%_))
                         (cons (cons 'transparent: '#t) '())
                         '()))
                    (_%properties23538%_
                     (let ((_%$e23526%_
                            (gx#stx-e (gx#stx-getq 'print: _%body22578%_))))
                       (if _%$e23526%_
                           ((lambda (_%print23530%_)
                              (let ((_%print23533%_
                                     (if (eq? _%print23530%_ '#t)
                                         _%slots22577%_
                                         _%print23530%_)))
                                (cons (cons 'print: _%print23533%_)
                                      _%properties23523%_)))
                            _%$e23526%_)
                           _%properties23523%_)))
                    (_%properties23553%_
                     (let ((_%$e23541%_
                            (gx#stx-e (gx#stx-getq 'equal: _%body22578%_))))
                       (if _%$e23541%_
                           ((lambda (_%equal23545%_)
                              (let ((_%equal23548%_
                                     (if (eq? _%equal23545%_ '#t)
                                         _%slots22577%_
                                         _%equal23545%_)))
                                (cons (cons 'equal: _%equal23548%_)
                                      _%properties23538%_)))
                            _%$e23541%_)
                           _%properties23538%_)))
                    (_%properties23556%_
                     (if (gx#stx-e (gx#stx-getq 'acyclic: _%body22578%_))
                         (cons (cons 'acyclic: '#t) '())
                         '())))
               _%properties23556%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-properties23602%_
                                                     (if (null? _%properties23561%_)
                                                         '()
                                                         (let* ((_%g2356423572%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_%g2356523568%_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid match target"
                            _%g2356523568%_)))
                        (_%g2356323598%_
                         (lambda (_%g2356523576%_)
                           ((lambda (_%L23579%_)
                              (cons 'properties:
                                    (cons (cons (gx#datum->syntax '#f 'quote)
                                                (cons _%L23579%_ '()))
                                          '())))
                            _%g2356523576%_))))
                   (_%g2356323598%_ _%properties23561%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%metaclass23614%_
                                                     (let ((_%$e23605%_
                                                            (gx#stx-getq
                                                             'metaclass:
                                                             _%body22578%_)))
                                                       (if _%$e23605%_
                                                           ((lambda (_%metaclass23609%_)
                                                              (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%metaclass23609%_)
                          _%metaclass23609%_
                          '#f))
                    _%$e23605%_)
                   '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-metaclass23617%_
                                                     (if _%metaclass23614%_
                                                         (cons 'metaclass:
                                                               (cons _%metaclass23614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%final?23620%_
                                                     (gx#stx-e
                                                      (gx#stx-getq
                                                       'final:
                                                       _%body22578%_)))
                                                    (_%type-struct23623%_
                                                     (cons 'struct:
                                                           (cons _%struct?22592%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%type-final23626%_
                                                     (cons 'final:
                                                           (cons _%final?23620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2362923646%_
                                                     (lambda (_%g2363023642%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2363023642%_)))
                                                    (_%g2362824632%_
                                                     (lambda (_%g2363023650%_)
                                                       (if (gx#stx-pair/null?
                                                            _%g2363023650%_)
                                                           (let ((_g27283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-split-splice _%g2363023650%_ '0)))
                     (begin
                       (let ((_g27284_
                              (let ()
                                (declare (not safe))
                                (if (##values? _g27283_)
                                    (##values-length _g27283_)
                                    1))))
                         (if (not (let ()
                                    (declare (not safe))
                                    (##fx= _g27284_ 2)))
                             (error "Context expects 2 values" _g27284_)))
                       (let ((_%target2363223653%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27283_ 0)))
                             (_%tl2363423656%_
                              (let ()
                                (declare (not safe))
                                (##values-ref _g27283_ 1))))
                         (if (gx#stx-null? _%tl2363423656%_)
                             (letrec ((_%loop2363523659%_
                                       (lambda (_%hd2363323663%_
                                                _%type-body2363923666%_)
                                         (if (gx#stx-pair? _%hd2363323663%_)
                                             (let ((_%e2363623669%_
                                                    (gx#syntax-e
                                                     _%hd2363323663%_)))
                                               (let ((_%lp-hd2363723673%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%e2363623669%_)))
                                                     (_%lp-tl2363823676%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%e2363623669%_))))
                                                 (_%loop2363523659%_
                                                  _%lp-tl2363823676%_
                                                  (cons _%lp-hd2363723673%_
                                                        _%type-body2363923666%_))))
                                             (let ((_%type-body2364023679%_
                                                    (reverse _%type-body2363923666%_)))
                                               ((lambda (_%L23683%_)
                                                  (let* ((_%g2370423712%_
                                                          (lambda (_%g2370523708%_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _%g2370523708%_)))
                                                         (_%g2370324620%_
                                                          (lambda (_%g2370523716%_)
                                                            ((lambda (_%L23719%_)
                                                               (let* ((_%g2373223740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (lambda (_%g2373323736%_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _%g2373323736%_)))
                              (_%g2373124549%_
                               (lambda (_%g2373323744%_)
                                 ((lambda (_%L23747%_)
                                    (let* ((_%g2376023768%_
                                            (lambda (_%g2376123764%_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%g2376123764%_)))
                                           (_%g2375924514%_
                                            (lambda (_%g2376123772%_)
                                              ((lambda (_%L23775%_)
                                                 (let* ((_%g2378823796%_
                                                         (lambda (_%g2378923792%_)
                                                           (gx#raise-syntax-error
                                                            '#f
                                                            '"Bad syntax; invalid match target"
                                                            _%g2378923792%_)))
                                                        (_%g2378724428%_
                                                         (lambda (_%g2378923800%_)
                                                           ((lambda (_%L23803%_)
                                                              (let* ((_%g2381623824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%g2381723820%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%g2381723820%_)))
                             (_%g2381524416%_
                              (lambda (_%g2381723828%_)
                                ((lambda (_%L23831%_)
                                   (let* ((_%g2384423852%_
                                           (lambda (_%g2384523848%_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%g2384523848%_)))
                                          (_%g2384324412%_
                                           (lambda (_%g2384523856%_)
                                             ((lambda (_%L23859%_)
                                                (let* ((_%g2387223880%_
                                                        (lambda (_%g2387323876%_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%g2387323876%_)))
                                                       (_%g2387124408%_
                                                        (lambda (_%g2387323884%_)
                                                          ((lambda (_%L23887%_)
                                                             (let* ((_%g2390023908%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%g2390123904%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2390123904%_)))
                            (_%g2389924373%_
                             (lambda (_%g2390123912%_)
                               ((lambda (_%L23915%_)
                                  (let* ((_%g2392823936%_
                                          (lambda (_%g2392923932%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%g2392923932%_)))
                                         (_%g2392724302%_
                                          (lambda (_%g2392923940%_)
                                            ((lambda (_%L23943%_)
                                               (let* ((_%g2395623964%_
                                                       (lambda (_%g2395723960%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2395723960%_)))
                                                      (_%g2395524298%_
                                                       (lambda (_%g2395723968%_)
                                                         ((lambda (_%L23971%_)
                                                            (let* ((_%g2398423992%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2398523988%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2398523988%_)))
                           (_%g2398324294%_
                            (lambda (_%g2398523996%_)
                              ((lambda (_%L23999%_)
                                 (let* ((_%g2401224020%_
                                         (lambda (_%g2401324016%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2401324016%_)))
                                        (_%g2401124290%_
                                         (lambda (_%g2401324024%_)
                                           ((lambda (_%L24027%_)
                                              (let* ((_%g2404024048%_
                                                      (lambda (_%g2404124044%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2404124044%_)))
                                                     (_%g2403924264%_
                                                      (lambda (_%g2404124052%_)
                                                        ((lambda (_%L24055%_)
                                                           (let* ((_%g2406824076%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2406924072%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2406924072%_)))
                          (_%g2406724238%_
                           (lambda (_%g2406924080%_)
                             ((lambda (_%L24083%_)
                                (let* ((_%g2409624104%_
                                        (lambda (_%g2409724100%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2409724100%_)))
                                       (_%g2409524212%_
                                        (lambda (_%g2409724108%_)
                                          ((lambda (_%L24111%_)
                                             (let* ((_%g2412424132%_
                                                     (lambda (_%g2412524128%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _%g2412524128%_)))
                                                    (_%g2412324186%_
                                                     (lambda (_%g2412524136%_)
                                                       ((lambda (_%L24139%_)
                                                          (let* ((_%g2415224160%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%g2415324156%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%g2415324156%_)))
                         (_%g2415124182%_
                          (lambda (_%g2415324164%_)
                            ((lambda (_%L24167%_)
                               (_%wrap22580%_
                                (cons (gx#datum->syntax '#f 'begin)
                                      (cons _%L23719%_
                                            (cons _%L24167%_ '())))))
                             _%g2415324164%_))))
                    (_%g2415124182%_
                     (_%wrap22580%_
                      (cons (gx#datum->syntax '#f 'defsyntax)
                            (cons _%L22610%_
                                  (cons (cons (gx#datum->syntax
                                               '#f
                                               'make-class-type-info)
                                              (cons 'id:
                                                    (cons _%L23747%_
                                                          (cons 'name:
                                                                (cons _%L23775%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'slots:
                                    (cons _%L23831%_
                                          (cons 'super:
                                                (cons _%L23803%_
                                                      (cons 'struct?:
                                                            (cons _%L23859%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons 'final?:
                                (cons _%L23887%_
                                      (cons 'metaclass:
                                            (cons _%L23915%_
                                                  (cons 'constructor-method:
                                                        (cons _%L23943%_
                                                              (cons 'type-descriptor:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _%L23971%_
                                  (cons 'constructor:
                                        (cons _%L23999%_
                                              (cons 'predicate:
                                                    (cons _%L24027%_
                                                          (cons 'accessors:
                                                                (cons _%L24055%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons 'mutators:
                                    (cons _%L24083%_
                                          (cons 'unchecked-accessors:
                                                (cons _%L24111%_
                                                      (cons 'unchecked-mutators:
                                                            (cons _%L24139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())))))))))))))))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '())))))))
                _%g2412524136%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2412324186%_
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       '@list)
                                                      (begin
                                                        (gx#syntax-check-splice-targets
                                                         _%L23293%_
                                                         _%L22792%_)
                                                        (foldr (lambda (_%g2418924196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%g2419024199%_
                                _%g2419124201%_)
                         (cons (cons (gx#datum->syntax '#f '@list)
                                     (cons (cons (gx#datum->syntax '#f 'quote)
                                                 (cons _%g2419024199%_ '()))
                                           (cons '::
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote-syntax)
                                                             (cons _%g2418924196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               _%g2419124201%_))
                       (begin
                         (gx#syntax-check-splice-targets _%L23435%_ _%L23008%_)
                         (foldr (lambda (_%g2419224204%_
                                         _%g2419324207%_
                                         _%g2419424209%_)
                                  (cons (cons (gx#datum->syntax '#f '@list)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%g2419324207%_
                                                                '()))
                                                    (cons '::
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote-syntax)
                              (cons _%g2419224204%_ '()))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _%g2419424209%_))
                                '()
                                _%L23435%_
                                _%L23008%_))
                       _%L23293%_
                       _%L22792%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%g2409724108%_))))
                                  (_%g2409524212%_
                                   (cons (gx#datum->syntax '#f '@list)
                                         (begin
                                           (gx#syntax-check-splice-targets
                                            _%L23222%_
                                            _%L22792%_)
                                           (foldr (lambda (_%g2421524222%_
                                                           _%g2421624225%_
                                                           _%g2421724227%_)
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '@list)
                        (cons (cons (gx#datum->syntax '#f 'quote)
                                    (cons _%g2421624225%_ '()))
                              (cons '::
                                    (cons (cons (gx#datum->syntax
                                                 '#f
                                                 'quote-syntax)
                                                (cons _%g2421524222%_ '()))
                                          '()))))
                  _%g2421724227%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (begin
                                                    (gx#syntax-check-splice-targets
                                                     _%L23364%_
                                                     _%L23008%_)
                                                    (foldr (lambda (_%g2421824230%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%g2421924233%_
                            _%g2422024235%_)
                     (cons (cons (gx#datum->syntax '#f '@list)
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%g2421924233%_ '()))
                                       (cons '::
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          'quote-syntax)
                                                         (cons _%g2421824230%_
                                                               '()))
                                                   '()))))
                           _%g2422024235%_))
                   '()
                   _%L23364%_
                   _%L23008%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%L23222%_
                                                  _%L22792%_))))))
                              _%g2406924080%_))))
                     (_%g2406724238%_
                      (cons (gx#datum->syntax '#f '@list)
                            (begin
                              (gx#syntax-check-splice-targets
                               _%L22934%_
                               _%L22792%_)
                              (foldr (lambda (_%g2424124248%_
                                              _%g2424224251%_
                                              _%g2424324253%_)
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    '@list)
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%g2424224251%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 (cons '::
                       (cons (cons (gx#datum->syntax '#f 'quote-syntax)
                                   (cons _%g2424124248%_ '()))
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _%g2424324253%_))
                                     (begin
                                       (gx#syntax-check-splice-targets
                                        _%L23151%_
                                        _%L23008%_)
                                       (foldr (lambda (_%g2424424256%_
                                                       _%g2424524259%_
                                                       _%g2424624261%_)
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             '@list)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'quote)
                                (cons _%g2424524259%_ '()))
                          (cons '::
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2424424256%_ '()))
                                      '()))))
              _%g2424624261%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()
                                              _%L23151%_
                                              _%L23008%_))
                                     _%L22934%_
                                     _%L22792%_))))))
                 _%g2404124052%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2403924264%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (begin
                                                         (gx#syntax-check-splice-targets
                                                          _%L22863%_
                                                          _%L22792%_)
                                                         (foldr (lambda (_%g2426724274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2426824277%_
                                 _%g2426924279%_)
                          (cons (cons (gx#datum->syntax '#f '@list)
                                      (cons (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%g2426824277%_ '()))
                                            (cons '::
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'quote-syntax)
                                                              (cons _%g2426724274%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                _%g2426924279%_))
                        (begin
                          (gx#syntax-check-splice-targets
                           _%L23080%_
                           _%L23008%_)
                          (foldr (lambda (_%g2427024282%_
                                          _%g2427124285%_
                                          _%g2427224287%_)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%g2427124285%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons '::
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote-syntax)
                               (cons _%g2427024282%_ '()))
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         _%g2427224287%_))
                                 '()
                                 _%L23080%_
                                 _%L23008%_))
                        _%L22863%_
                        _%L22792%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2401324024%_))))
                                   (_%g2401124290%_
                                    (cons (gx#datum->syntax '#f 'quote-syntax)
                                          (cons _%L22697%_ '())))))
                               _%g2398523996%_))))
                      (_%g2398324294%_
                       (cons (gx#datum->syntax '#f 'quote-syntax)
                             (cons _%L22669%_ '())))))
                  _%g2395723968%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2395524298%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'quote-syntax)
                                                        (cons _%L22641%_
                                                              '())))))
                                             _%g2392923940%_))))
                                    (_%g2392724302%_
                                     (if (null? _%type-constructor23520%_)
                                         '#f
                                         (let* ((_%g2430624321%_
                                                 (lambda (_%g2430724317%_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%g2430724317%_)))
                                                (_%g2430524369%_
                                                 (lambda (_%g2430724325%_)
                                                   (if (gx#stx-pair?
                                                        _%g2430724325%_)
                                                       (let ((_%e2430924328%_
                                                              (gx#syntax-e
                                                               _%g2430724325%_)))
                                                         (let ((_%hd2431024332%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _%e2430924328%_)))
                       (_%tl2431124335%_
                        (let () (declare (not safe)) (##cdr _%e2430924328%_))))
                   (if (gx#stx-datum? _%hd2431024332%_)
                       (let ((_%e2431224338%_ (gx#stx-e _%hd2431024332%_)))
                         (if (equal? _%e2431224338%_ 'constructor:)
                             (if (gx#stx-pair? _%tl2431124335%_)
                                 (let ((_%e2431324342%_
                                        (gx#syntax-e _%tl2431124335%_)))
                                   (let ((_%hd2431424346%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%e2431324342%_)))
                                         (_%tl2431524349%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%e2431324342%_))))
                                     (if (gx#stx-null? _%tl2431524349%_)
                                         ((lambda (_%L24352%_)
                                            (cons (gx#datum->syntax '#f 'quote)
                                                  (cons _%L24352%_ '())))
                                          _%hd2431424346%_)
                                         (_%g2430624321%_ _%g2430724325%_))))
                                 (_%g2430624321%_ _%g2430724325%_))
                             (_%g2430624321%_ _%g2430724325%_)))
                       (_%g2430624321%_ _%g2430724325%_))))
               (_%g2430624321%_ _%g2430724325%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%g2430524369%_
                                            _%type-constructor23520%_))))))
                                _%g2390123912%_))))
                       (_%g2389924373%_
                        (if _%metaclass23614%_
                            (let* ((_%g2437724385%_
                                    (lambda (_%g2437824381%_)
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax; invalid match target"
                                       _%g2437824381%_)))
                                   (_%g2437624404%_
                                    (lambda (_%g2437824389%_)
                                      ((lambda (_%L24392%_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'quote-syntax)
                                               (cons _%L24392%_ '())))
                                       _%g2437824389%_))))
                              (_%g2437624404%_ _%metaclass23614%_))
                            '#f))))
                   _%g2387323884%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%g2387124408%_
                                                   _%final?23620%_)))
                                              _%g2384523856%_))))
                                     (_%g2384324412%_ _%struct?22592%_)))
                                 _%g2381723828%_))))
                        (_%g2381524416%_
                         (cons (gx#datum->syntax '#f 'quote)
                               (cons (foldr (lambda (_%g2441924422%_
                                                     _%g2442024425%_)
                                              (cons _%g2441924422%_
                                                    _%g2442024425%_))
                                            '()
                                            _%L22792%_)
                                     '())))))
                    _%g2378923800%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2378724428%_
                                                    (let* ((_%g2443224449%_
                                                            (lambda (_%g2443324445%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%g2443324445%_)))
                                                           (_%g2443124510%_
                                                            (lambda (_%g2443324453%_)
                                                              (if (gx#stx-pair/null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%g2443324453%_)
                          (let ((_g27285_
                                 (gx#syntax-split-splice _%g2443324453%_ '0)))
                            (begin
                              (let ((_g27286_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g27285_)
                                           (##values-length _g27285_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g27286_ 2)))
                                    (error "Context expects 2 values"
                                           _g27286_)))
                              (let ((_%target2443524456%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27285_ 0)))
                                    (_%tl2443724459%_
                                     (let ()
                                       (declare (not safe))
                                       (##values-ref _g27285_ 1))))
                                (if (gx#stx-null? _%tl2443724459%_)
                                    (letrec ((_%loop2443824462%_
                                              (lambda (_%hd2443624466%_
                                                       _%super-id2444224469%_)
                                                (if (gx#stx-pair?
                                                     _%hd2443624466%_)
                                                    (let ((_%e2443924472%_
                                                           (gx#syntax-e
                                                            _%hd2443624466%_)))
                                                      (let ((_%lp-hd2444024476%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%e2443924472%_)))
                    (_%lp-tl2444124479%_
                     (let () (declare (not safe)) (##cdr _%e2443924472%_))))
                (_%loop2443824462%_
                 _%lp-tl2444124479%_
                 (cons _%lp-hd2444024476%_ _%super-id2444224469%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%super-id2444324482%_
                                                           (reverse _%super-id2444224469%_)))
                                                      ((lambda (_%L24486%_)
                                                         (cons (gx#datum->syntax
                                                                '#f
                                                                '@list)
                                                               (foldr (lambda (_%g2450124504%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                       _%g2450224507%_)
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'quote-syntax)
                                            (cons _%g2450124504%_ '()))
                                      _%g2450224507%_))
                              '()
                              _%L24486%_)))
               _%super-id2444324482%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (_%loop2443824462%_
                                       _%target2443524456%_
                                       '()))
                                    (_%g2443224449%_ _%g2443324453%_)))))
                          (_%g2443224449%_ _%g2443324453%_)))))
              (_%g2443124510%_ _%super-ref22576%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _%g2376123772%_))))
                                      (_%g2375924514%_
                                       (let* ((_%g2451824526%_
                                               (lambda (_%g2451924522%_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%g2451924522%_)))
                                              (_%g2451724545%_
                                               (lambda (_%g2451924530%_)
                                                 ((lambda (_%L24533%_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _%L24533%_
                                                                '())))
                                                  _%g2451924530%_))))
                                         (_%g2451724545%_
                                          (cadr _%type-name23498%_))))))
                                  _%g2373323744%_))))
                         (_%g2373124549%_
                          (let* ((_%g2455324568%_
                                  (lambda (_%g2455424564%_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _%g2455424564%_)))
                                 (_%g2455224616%_
                                  (lambda (_%g2455424572%_)
                                    (if (gx#stx-pair? _%g2455424572%_)
                                        (let ((_%e2455624575%_
                                               (gx#syntax-e _%g2455424572%_)))
                                          (let ((_%hd2455724579%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2455624575%_)))
                                                (_%tl2455824582%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2455624575%_))))
                                            (if (gx#stx-datum?
                                                 _%hd2455724579%_)
                                                (let ((_%e2455924585%_
                                                       (gx#stx-e
                                                        _%hd2455724579%_)))
                                                  (if (equal? _%e2455924585%_
                                                              'id:)
                                                      (if (gx#stx-pair?
                                                           _%tl2455824582%_)
                                                          (let ((_%e2456024589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2455824582%_)))
                    (let ((_%hd2456124593%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2456024589%_)))
                          (_%tl2456224596%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2456024589%_))))
                      (if (gx#stx-null? _%tl2456224596%_)
                          ((lambda (_%L24599%_)
                             (cons (gx#datum->syntax '#f 'quote)
                                   (cons _%L24599%_ '())))
                           _%hd2456124593%_)
                          (_%g2455324568%_ _%g2455424572%_))))
                  (_%g2455324568%_ _%g2455424572%_))
              (_%g2455324568%_ _%g2455424572%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2455324568%_
                                                 _%g2455424572%_))))
                                        (_%g2455324568%_ _%g2455424572%_)))))
                            (_%g2455224616%_ _%type-id23505%_)))))
                     _%g2370523716%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2370324620%_
                                                     (_%wrap22580%_
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defclass-type)
                                                            (cons _%L22641%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%L22725%_
                                (cons _%L22669%_
                                      (cons _%L22697%_
                                            (foldr (lambda (_%g2462324626%_
                                                            _%g2462424629%_)
                                                     (cons _%g2462324626%_
                                                           _%g2462424629%_))
                                                   '()
                                                   _%L23683%_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _%type-body2364023679%_))))))
                               (_%loop2363523659%_ _%target2363223653%_ '()))
                             (_%g2362923646%_ _%g2363023650%_)))))
                   (_%g2362923646%_ _%g2363023650%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2362824632%_
                                                (foldr cons
                                                       (foldr cons
                                                              (foldr cons
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (foldr cons
                                    (foldr cons
                                           (foldr cons
                                                  (foldr cons
                                                         (foldr cons
                                                                _%type-mixin-slots23491%_
                                                                _%type-slots23470%_)
                                                         _%type-properties23602%_)
                                                  _%type-metaclass23617%_)
                                           _%type-final23626%_)
                                    _%type-struct23623%_)
                             _%type-constructor23520%_)
                      _%type-name23498%_)
               _%type-id23505%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%mixin-usetf2339223431%_))))))
                          (_%loop2338723411%_ _%target2338423405%_ '()))
                        (_%g2338123398%_ _%g2338223402%_)))))
              (_%g2338123398%_ _%g2338223402%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2338024636%_
                                           (gx#stx-map
                                            (lambda (_%g2463924641%_)
                                              (_%make-id22582%_
                                               '"&"
                                               _%g2463924641%_))
                                            (foldr (lambda (_%g2464424647%_
                                                            _%g2464524650%_)
                                                     (cons _%g2464424647%_
                                                           _%g2464524650%_))
                                                   '()
                                                   _%L23151%_)))))
                                      _%mixin-ugetf2332123360%_))))))
                     (_%loop2331623340%_ _%target2331323334%_ '()))
                   (_%g2331023327%_ _%g2331123331%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2331023327%_
                                                  _%g2331123331%_)))))
                                     (_%g2330924653%_
                                      (gx#stx-map
                                       (lambda (_%g2465624658%_)
                                         (_%make-id22582%_
                                          '"&"
                                          _%g2465624658%_))
                                       (foldr (lambda (_%g2466124664%_
                                                       _%g2466224667%_)
                                                (cons _%g2466124664%_
                                                      _%g2466224667%_))
                                              '()
                                              _%L23080%_)))))
                                 _%usetf2325023289%_))))))
                (_%loop2324523269%_ _%target2324223263%_ '()))
              (_%g2323923256%_ _%g2324023260%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%g2323923256%_
                                             _%g2324023260%_)))))
                                (_%g2323824670%_
                                 (gx#stx-map
                                  (lambda (_%g2467324675%_)
                                    (_%make-id22582%_ '"&" _%g2467324675%_))
                                  (foldr (lambda (_%g2467824681%_
                                                  _%g2467924684%_)
                                           (cons _%g2467824681%_
                                                 _%g2467924684%_))
                                         '()
                                         _%L22934%_)))))
                            _%ugetf2317923218%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%loop2317423198%_
                                                    _%target2317123192%_
                                                    '()))
                                                 (_%g2316823185%_
                                                  _%g2316923189%_)))))
                                       (_%g2316823185%_ _%g2316923189%_)))))
                           (_%g2316724687%_
                            (gx#stx-map
                             (lambda (_%g2469024692%_)
                               (_%make-id22582%_ '"&" _%g2469024692%_))
                             (foldr (lambda (_%g2469524698%_ _%g2469624701%_)
                                      (cons _%g2469524698%_ _%g2469624701%_))
                                    '()
                                    _%L22863%_)))))
                       _%mixin-setf2310823147%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%loop2310323127%_
                                               _%target2310023121%_
                                               '()))
                                            (_%g2309723114%_
                                             _%g2309823118%_)))))
                                  (_%g2309723114%_ _%g2309823118%_)))))
                      (_%g2309624704%_
                       (gx#stx-map
                        (lambda (_%g2470724709%_)
                          (_%make-id22582%_
                           _%name22586%_
                           '"-"
                           _%g2470724709%_
                           '"-set!"))
                        _%mixin-slots22951%_))))
                  _%mixin-getf2303723076%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (_%loop2303223056%_
                                          _%target2302923050%_
                                          '()))
                                       (_%g2302623043%_ _%g2302723047%_)))))
                             (_%g2302623043%_ _%g2302723047%_)))))
                 (_%g2302524713%_
                  (gx#stx-map
                   (lambda (_%g2471624718%_)
                     (_%make-id22582%_ _%name22586%_ '"-" _%g2471624718%_))
                   _%mixin-slots22951%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%mixin-slot2296523004%_))))))
                                    (_%loop2296022984%_
                                     _%target2295722978%_
                                     '()))
                                  (_%g2295422971%_ _%g2295522975%_)))))
                        (_%g2295422971%_ _%g2295522975%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2295324722%_
                                                     _%mixin-slots22951%_)))
                                                _%setf2289122930%_))))))
                               (_%loop2288622910%_ _%target2288322904%_ '()))
                             (_%g2288022897%_ _%g2288122901%_)))))
                   (_%g2288022897%_ _%g2288122901%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%g2287924726%_
                                                (gx#stx-map
                                                 (lambda (_%g2472924731%_)
                                                   (_%make-id22582%_
                                                    _%name22586%_
                                                    '"-"
                                                    _%g2472924731%_
                                                    '"-set!"))
                                                 _%slots22577%_))))
                                           _%getf2282022859%_))))))
                          (_%loop2281522839%_ _%target2281222833%_ '()))
                        (_%g2280922826%_ _%g2281022830%_)))))
              (_%g2280922826%_ _%g2281022830%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%g2280824735%_
                                           (gx#stx-map
                                            (lambda (_%g2473824740%_)
                                              (_%make-id22582%_
                                               _%name22586%_
                                               '"-"
                                               _%g2473824740%_))
                                            _%slots22577%_))))
                                      _%slot2274922788%_))))))
                     (_%loop2274422768%_ _%target2274122762%_ '()))
                   (_%g2273822755%_ _%g2273922759%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2273822755%_
                                                  _%g2273922759%_)))))
                                     (_%g2273724744%_ _%slots22577%_)))
                                 _%g2271122722%_))))
                        (_%g2270924748%_
                         (let ()
                           (declare (not safe))
                           (##map gerbil/core/mop~MOP-2#!class-type-descriptor
                                  _%super22589%_)))))
                    _%g2268322694%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%g2268124752%_
                                                    (_%make-id22582%_
                                                     _%name22586%_
                                                     '"?"))))
                                               _%g2265522666%_))))
                                      (_%g2265324756%_
                                       (_%make-id22582%_
                                        '"make-"
                                        _%name22586%_))))
                                  _%g2262722638%_))))
                         (_%g2262524760%_
                          (_%make-id22582%_ _%name22586%_ '"::t"))))
                     _%g2259622607%_))))
            (_%g2259424764%_ _%id22575%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defstruct|
      (lambda (_%$stx24831%_)
        (let* ((_%g2483524854%_
                (lambda (_%g2483624850%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%g2483624850%_)))
               (_%g2483424911%_
                (lambda (_%g2483624858%_)
                  (if (gx#stx-pair? _%g2483624858%_)
                      (let ((_%e2484024861%_ (gx#syntax-e _%g2483624858%_)))
                        (let ((_%hd2484124865%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%e2484024861%_)))
                              (_%tl2484224868%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%e2484024861%_))))
                          (if (gx#stx-pair? _%tl2484224868%_)
                              (let ((_%e2484324871%_
                                     (gx#syntax-e _%tl2484224868%_)))
                                (let ((_%hd2484424875%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2484324871%_)))
                                      (_%tl2484524878%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2484324871%_))))
                                  (if (gx#stx-pair? _%tl2484524878%_)
                                      (let ((_%e2484624881%_
                                             (gx#syntax-e _%tl2484524878%_)))
                                        (let ((_%hd2484724885%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2484624881%_)))
                                              (_%tl2484824888%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2484624881%_))))
                                          ((lambda (_%L24891%_
                                                    _%L24893%_
                                                    _%L24894%_)
                                             (cons (gx#datum->syntax
                                                    '#f
                                                    'defclass)
                                                   (cons _%L24894%_
                                                         (cons _%L24893%_
                                                               (cons 'struct:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons '#t _%L24891%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _%tl2484824888%_
                                           _%hd2484724885%_
                                           _%hd2484424875%_)))
                                      (_%g2483524854%_ _%g2483624858%_))))
                              (_%g2483524854%_ _%g2483624858%_))))
                      (_%g2483524854%_ _%g2483624858%_)))))
          (_%g2483424911%_ _%$stx24831%_))))
    (define |gerbil/core/mop~MOP-4[:0:]#defclass|
      (lambda (_%stx24915%_)
        (letrec ((_%generate24918%_
                  (lambda (_%hd25002%_ _%slots25004%_ _%body25005%_)
                    (let* ((_%__stx2677026771%_ _%hd25002%_)
                           (_%g2500825020%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%__stx2677026771%_))))
                      (let ((_%__kont2677326774%_
                             (lambda (_%L25048%_ _%L25050%_)
                               (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                _%stx24915%_
                                _%L25050%_
                                (gx#syntax->list _%L25048%_)
                                _%slots25004%_
                                _%body25005%_)))
                            (_%__kont2677526776%_
                             (lambda ()
                               (if (gx#identifier? _%hd25002%_)
                                   (|gerbil/core/mop~MOP-4[1]#generate-defclass|
                                    _%stx24915%_
                                    _%hd25002%_
                                    '()
                                    _%slots25004%_
                                    _%body25005%_)
                                   (gx#raise-syntax-error
                                    '#f
                                    '"bad syntax; head should be class name or list of class names"
                                    _%stx24915%_
                                    _%hd25002%_)))))
                        (let ((_%__match2678326784%_
                               (lambda (_%e2501225038%_
                                        _%hd2501325042%_
                                        _%tl2501425045%_)
                                 (let ((_%L25048%_ _%tl2501425045%_)
                                       (_%L25050%_ _%hd2501325042%_))
                                   (if (and (gx#stx-list? _%L25048%_)
                                            (gx#stx-andmap
                                             gerbil/core/mop~MOP-2#syntax-local-class-type-info?
                                             _%L25048%_))
                                       (_%__kont2677326774%_
                                        _%L25048%_
                                        _%L25050%_)
                                       (_%__kont2677526776%_))))))
                          (if (gx#stx-pair? _%__stx2677026771%_)
                              (let ((_%e2501225038%_
                                     (gx#syntax-e _%__stx2677026771%_)))
                                (let ((_%tl2501425045%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%e2501225038%_)))
                                      (_%hd2501325042%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%e2501225038%_))))
                                  (_%__match2678326784%_
                                   _%e2501225038%_
                                   _%hd2501325042%_
                                   _%tl2501425045%_)))
                              (_%__kont2677526776%_))))))))
          (let* ((_%g2492124940%_
                  (lambda (_%g2492224936%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2492224936%_)))
                 (_%g2492024998%_
                  (lambda (_%g2492224944%_)
                    (if (gx#stx-pair? _%g2492224944%_)
                        (let ((_%e2492624947%_ (gx#syntax-e _%g2492224944%_)))
                          (let ((_%hd2492724951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2492624947%_)))
                                (_%tl2492824954%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2492624947%_))))
                            (if (gx#stx-pair? _%tl2492824954%_)
                                (let ((_%e2492924957%_
                                       (gx#syntax-e _%tl2492824954%_)))
                                  (let ((_%hd2493024961%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2492924957%_)))
                                        (_%tl2493124964%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2492924957%_))))
                                    (if (gx#stx-pair? _%tl2493124964%_)
                                        (let ((_%e2493224967%_
                                               (gx#syntax-e _%tl2493124964%_)))
                                          (let ((_%hd2493324971%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2493224967%_)))
                                                (_%tl2493424974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2493224967%_))))
                                            ((lambda (_%L24977%_
                                                      _%L24979%_
                                                      _%L24980%_)
                                               (if (and (gx#identifier-list?
                                                         _%L24979%_)
                                                        (|gerbil/core/mop~MOP-4[1]#typedef-body?|
                                                         _%L24977%_))
                                                   (_%generate24918%_
                                                    _%L24980%_
                                                    _%L24979%_
                                                    _%L24977%_)
                                                   (_%g2492124940%_
                                                    _%g2492224944%_)))
                                             _%tl2493424974%_
                                             _%hd2493324971%_
                                             _%hd2493024961%_)))
                                        (_%g2492124940%_ _%g2492224944%_))))
                                (_%g2492124940%_ _%g2492224944%_))))
                        (_%g2492124940%_ _%g2492224944%_)))))
            (_%g2492024998%_ _%stx24915%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#defmethod|
      (lambda (_%stx25067%_)
        (letrec ((_%wrap25070%_
                  (lambda (_%e-stx25416%_)
                    (gx#stx-wrap-source
                     _%e-stx25416%_
                     (gx#stx-source _%stx25067%_))))
                 (_%method-opt?25072%_
                  (lambda (_%x25413%_)
                    (let ((__tmp27287 (gx#stx-e _%x25413%_)))
                      (declare (not safe))
                      (##memq __tmp27287 '(rebind:))))))
          (let* ((_%g2507425103%_
                  (lambda (_%g2507525099%_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%g2507525099%_)))
                 (_%g2507325409%_
                  (lambda (_%g2507525107%_)
                    (if (gx#stx-pair? _%g2507525107%_)
                        (let ((_%e2508025110%_ (gx#syntax-e _%g2507525107%_)))
                          (let ((_%hd2508125114%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2508025110%_)))
                                (_%tl2508225117%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2508025110%_))))
                            (if (gx#stx-pair? _%tl2508225117%_)
                                (let ((_%e2508325120%_
                                       (gx#syntax-e _%tl2508225117%_)))
                                  (let ((_%hd2508425124%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2508325120%_)))
                                        (_%tl2508525127%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2508325120%_))))
                                    (if (gx#stx-pair? _%hd2508425124%_)
                                        (let ((_%e2508625130%_
                                               (gx#syntax-e _%hd2508425124%_)))
                                          (let ((_%hd2508725134%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2508625130%_)))
                                                (_%tl2508825137%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2508625130%_))))
                                            (if (gx#identifier?
                                                 _%hd2508725134%_)
                                                (if (gx#free-identifier=?
                                                     |gerbil/core/mop~MOP-4[1]#_g27288_|
                                                     _%hd2508725134%_)
                                                    (if (gx#stx-pair?
                                                         _%tl2508825137%_)
                                                        (let ((_%e2508925140%_
                                                               (gx#syntax-e
                                                                _%tl2508825137%_)))
                                                          (let ((_%hd2509025144%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _%e2508925140%_)))
                        (_%tl2509125147%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%e2508925140%_))))
                    (if (gx#stx-pair? _%tl2509125147%_)
                        (let ((_%e2509225150%_ (gx#syntax-e _%tl2509125147%_)))
                          (let ((_%hd2509325154%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%e2509225150%_)))
                                (_%tl2509425157%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%e2509225150%_))))
                            (if (gx#stx-null? _%tl2509425157%_)
                                (if (gx#stx-pair? _%tl2508525127%_)
                                    (let ((_%e2509525160%_
                                           (gx#syntax-e _%tl2508525127%_)))
                                      (let ((_%hd2509625164%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%e2509525160%_)))
                                            (_%tl2509725167%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%e2509525160%_))))
                                        ((lambda (_%L25170%_
                                                  _%L25172%_
                                                  _%L25173%_
                                                  _%L25174%_)
                                           (if (and (gx#identifier? _%L25174%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                       _%L25173%_))
                                                    (gx#stx-plist?
                                                     _%L25170%_
                                                     _%method-opt?25072%_))
                                               (let* ((_%klass25201%_
                                                       (gx#syntax-local-value
                                                        _%L25173%_))
                                                      (_%rebind?25204%_
                                                       (gx#stx-e
                                                        (gx#stx-getq
                                                         'rebind:
                                                         _%L25170%_)))
                                                      (_%g2520725215%_
                                                       (lambda (_%g2520825211%_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax; invalid match target"
                                                          _%g2520825211%_)))
                                                      (_%g2520625399%_
                                                       (lambda (_%g2520825219%_)
                                                         ((lambda (_%L25222%_)
                                                            (let* ((_%g2523725245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%g2523825241%_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _%g2523825241%_)))
                           (_%g2523625395%_
                            (lambda (_%g2523825249%_)
                              ((lambda (_%L25252%_)
                                 (let* ((_%g2526525273%_
                                         (lambda (_%g2526625269%_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%g2526625269%_)))
                                        (_%g2526425391%_
                                         (lambda (_%g2526625277%_)
                                           ((lambda (_%L25280%_)
                                              (let* ((_%g2529325301%_
                                                      (lambda (_%g2529425297%_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _%g2529425297%_)))
                                                     (_%g2529225387%_
                                                      (lambda (_%g2529425305%_)
                                                        ((lambda (_%L25308%_)
                                                           (let* ((_%g2532125329%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_%g2532225325%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%g2532225325%_)))
                          (_%g2532025383%_
                           (lambda (_%g2532225333%_)
                             ((lambda (_%L25336%_)
                                (let* ((_%g2534925357%_
                                        (lambda (_%g2535025353%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%g2535025353%_)))
                                       (_%g2534825379%_
                                        (lambda (_%g2535025361%_)
                                          ((lambda (_%L25364%_)
                                             (_%wrap25070%_
                                              (cons (gx#datum->syntax
                                                     '#f
                                                     'begin)
                                                    (cons _%L25308%_
                                                          (cons _%L25364%_
                                                                '())))))
                                           _%g2535025361%_))))
                                  (_%g2534825379%_
                                   (_%wrap25070%_
                                    (cons (gx#datum->syntax '#f 'bind-method!)
                                          (cons _%L25222%_
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _%L25174%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons _%L25252%_ (cons _%L25336%_ '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                              _%g2532225333%_))))
                     (_%g2532025383%_ _%rebind?25204%_)))
                 _%g2529425305%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%g2529225387%_
                                                 (_%wrap25070%_
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'def)
                                                        (cons _%L25252%_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'let-syntax)
                                  (cons (cons (cons _%L25280%_
                                                    (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'syntax-rules)
                        (cons '()
                              (cons (cons (cons (gx#datum->syntax '#f '_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'obj)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'arg)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           '...)
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'call-next-method)
                                                      (cons _%L25222%_
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'obj)
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25174%_ '()))
                                (cons (gx#datum->syntax '#f 'arg)
                                      (cons (gx#datum->syntax '#f '...)
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())))
                  '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '())
                                        (cons _%L25172%_ '())))
                            '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _%g2526625277%_))))
                                   (_%g2526425391%_
                                    (gx#stx-identifier
                                     _%L25173%_
                                     '@next-method))))
                               _%g2523825249%_))))
                      (_%g2523625395%_
                       (gx#stx-identifier
                        _%L25173%_
                        _%L25173%_
                        '"::"
                        _%L25174%_))))
                  _%g2520825219%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%g2520625399%_
                                                  (let ((__obj27048
                                                         _%klass25201%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-direct-instance-of?
                                                           __obj27048
                                                           'gerbil.core#runtime-type-info::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           __obj27048
                                                           '3
                                                           '#f
                                                           '#f))
                                                        (class-slot-ref
                                                         gerbil/core/mop~MOP-2#runtime-type-info::t
                                                         __obj27048
                                                         'type-descriptor)))))
                                               (if (gx#identifier? _%L25174%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gerbil/core/mop~MOP-2#syntax-local-runtime-type-info?__0
                                                          _%L25173%_))
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; illegal method options"
                                                        _%stx25067%_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"bad syntax; invalid class type"
                                                        _%stx25067%_
                                                        _%L25173%_))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"bad syntax; expected method identifier"
                                                    _%stx25067%_
                                                    _%L25174%_))))
                                         _%tl2509725167%_
                                         _%hd2509625164%_
                                         _%hd2509325154%_
                                         _%hd2509025144%_)))
                                    (_%g2507425103%_ _%g2507525107%_))
                                (_%g2507425103%_ _%g2507525107%_))))
                        (_%g2507425103%_ _%g2507525107%_))))
                (_%g2507425103%_ _%g2507525107%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%g2507425103%_
                                                     _%g2507525107%_))
                                                (_%g2507425103%_
                                                 _%g2507525107%_))))
                                        (_%g2507425103%_ _%g2507525107%_))))
                                (_%g2507425103%_ _%g2507525107%_))))
                        (_%g2507425103%_ _%g2507525107%_)))))
            (_%g2507325409%_ _%stx25067%_)))))
    (define |gerbil/core/mop~MOP-4[:0:]#@method|
      (lambda (_%stx25419%_)
        (letrec ((_%dotted-identifier?25422%_
                  (lambda (_%id26055%_)
                    (if (gx#identifier? _%id26055%_)
                        (let ((_%id-str26058%_
                               (symbol->string (gx#stx-e _%id26055%_))))
                          (if (string-index _%id-str26058%_ '#\.)
                              (let* ((_%split26061%_
                                      (string-split _%id-str26058%_ '#\.))
                                     (__tmp27289 (length _%split26061%_)))
                                (declare (not safe))
                                (##fx= __tmp27289 '2))
                              '#f))
                        '#f)))
                 (_%split-dotted25424%_
                  (lambda (_%id26044%_)
                    (let* ((_%id-str26047%_
                            (symbol->string (gx#stx-e _%id26044%_)))
                           (_%split26050%_
                            (string-split _%id-str26047%_ '#\.)))
                      (cons (gx#stx-identifier
                             _%id26044%_
                             (car _%split26050%_))
                            (cons (gx#stx-identifier
                                   _%id26044%_
                                   (cadr _%split26050%_))
                                  '()))))))
          (let* ((_%__stx2678626787%_ _%stx25419%_)
                 (_%g2542925516%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx2678626787%_))))
            (let ((_%__kont2678926790%_
                   (lambda (_%L25937%_ _%L25939%_ _%L25940%_)
                     (let* ((_%g2596825983%_
                             (lambda (_%g2596925979%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2596925979%_)))
                            (_%g2596726036%_
                             (lambda (_%g2596925987%_)
                               (if (gx#stx-pair? _%g2596925987%_)
                                   (let ((_%e2597225990%_
                                          (gx#syntax-e _%g2596925987%_)))
                                     (let ((_%hd2597325994%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2597225990%_)))
                                           (_%tl2597425997%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2597225990%_))))
                                       (if (gx#stx-pair? _%tl2597425997%_)
                                           (let ((_%e2597526000%_
                                                  (gx#syntax-e
                                                   _%tl2597425997%_)))
                                             (let ((_%hd2597626004%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2597526000%_)))
                                                   (_%tl2597726007%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2597526000%_))))
                                               (if (gx#stx-null?
                                                    _%tl2597726007%_)
                                                   ((lambda (_%L26010%_
                                                             _%L26012%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'apply)
                                                            (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'call-method)
                          (cons _%L26012%_
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _%L26010%_ '()))
                                      (cons (cons (gx#datum->syntax '#f '@list)
                                                  (foldr (lambda (_%g2602726030%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%g2602826033%_)
                   (cons _%g2602726030%_ _%g2602826033%_))
                 '()
                 _%L25939%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2597626004%_
                                                    _%hd2597325994%_)
                                                   (_%g2596825983%_
                                                    _%g2596925987%_))))
                                           (_%g2596825983%_ _%g2596925987%_))))
                                   (_%g2596825983%_ _%g2596925987%_)))))
                       (_%g2596726036%_ (_%split-dotted25424%_ _%L25940%_)))))
                  (_%__kont2679326794%_
                   (lambda (_%L25779%_ _%L25781%_)
                     (let* ((_%g2579825813%_
                             (lambda (_%g2579925809%_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax; invalid match target"
                                _%g2579925809%_)))
                            (_%g2579725866%_
                             (lambda (_%g2579925817%_)
                               (if (gx#stx-pair? _%g2579925817%_)
                                   (let ((_%e2580225820%_
                                          (gx#syntax-e _%g2579925817%_)))
                                     (let ((_%hd2580325824%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%e2580225820%_)))
                                           (_%tl2580425827%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%e2580225820%_))))
                                       (if (gx#stx-pair? _%tl2580425827%_)
                                           (let ((_%e2580525830%_
                                                  (gx#syntax-e
                                                   _%tl2580425827%_)))
                                             (let ((_%hd2580625834%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%e2580525830%_)))
                                                   (_%tl2580725837%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%e2580525830%_))))
                                               (if (gx#stx-null?
                                                    _%tl2580725837%_)
                                                   ((lambda (_%L25840%_
                                                             _%L25842%_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'call-method)
                                                            (cons _%L25842%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _%L25840%_ '()))
                                (foldr (lambda (_%g2585725860%_
                                                _%g2585825863%_)
                                         (cons _%g2585725860%_
                                               _%g2585825863%_))
                                       '()
                                       _%L25779%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _%hd2580625834%_
                                                    _%hd2580325824%_)
                                                   (_%g2579825813%_
                                                    _%g2579925817%_))))
                                           (_%g2579825813%_ _%g2579925817%_))))
                                   (_%g2579825813%_ _%g2579925817%_)))))
                       (_%g2579725866%_ (_%split-dotted25424%_ _%L25781%_)))))
                  (_%__kont2679726798%_
                   (lambda (_%L25683%_ _%L25685%_ _%L25686%_)
                     (cons (gx#datum->syntax '#f 'apply)
                           (cons (gx#datum->syntax '#f 'call-method)
                                 (cons _%L25685%_
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'quote)
                                                   (cons _%L25686%_ '()))
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (foldr (lambda (_%g2571325716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%g2571425719%_)
                          (cons _%g2571325716%_ _%g2571425719%_))
                        '()
                        _%L25683%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '())))))))
                  (_%__kont2680126802%_
                   (lambda (_%L25583%_ _%L25585%_ _%L25586%_)
                     (cons (gx#datum->syntax '#f 'call-method)
                           (cons _%L25585%_
                                 (cons (cons (gx#datum->syntax '#f 'quote)
                                             (cons _%L25586%_ '()))
                                       (foldr (lambda (_%g2560725610%_
                                                       _%g2560825613%_)
                                                (cons _%g2560725610%_
                                                      _%g2560825613%_))
                                              '()
                                              _%L25583%_)))))))
              (let* ((_%__match2690526906%_
                      (lambda (_%e2549325523%_
                               _%hd2549425527%_
                               _%tl2549525530%_
                               _%e2549625533%_
                               _%hd2549725537%_
                               _%tl2549825540%_
                               _%e2549925543%_
                               _%hd2550025547%_
                               _%tl2550125550%_
                               _%__splice2680326804%_
                               _%target2550225553%_
                               _%tl2550425556%_)
                        (letrec ((_%loop2550525559%_
                                  (lambda (_%hd2550325563%_ _%arg2550925566%_)
                                    (if (gx#stx-pair? _%hd2550325563%_)
                                        (let ((_%e2550625569%_
                                               (gx#syntax-e _%hd2550325563%_)))
                                          (let ((_%lp-tl2550825576%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2550625569%_)))
                                                (_%lp-hd2550725573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2550625569%_))))
                                            (_%loop2550525559%_
                                             _%lp-tl2550825576%_
                                             (cons _%lp-hd2550725573%_
                                                   _%arg2550925566%_))))
                                        (let ((_%arg2551025579%_
                                               (reverse _%arg2550925566%_)))
                                          (let ((_%L25583%_ _%arg2551025579%_)
                                                (_%L25585%_ _%hd2550025547%_)
                                                (_%L25586%_ _%hd2549725537%_))
                                            (if (gx#identifier? _%L25586%_)
                                                (_%__kont2680126802%_
                                                 _%L25583%_
                                                 _%L25585%_
                                                 _%L25586%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2542925516%_)))))))))
                          (_%loop2550525559%_ _%target2550225553%_ '()))))
                     (_%__match2687926880%_
                      (lambda (_%e2547225623%_
                               _%hd2547325627%_
                               _%tl2547425630%_
                               _%e2547525633%_
                               _%hd2547625637%_
                               _%tl2547725640%_
                               _%e2547825643%_
                               _%hd2547925647%_
                               _%tl2548025650%_
                               _%__splice2679926800%_
                               _%target2548125653%_
                               _%tl2548325656%_)
                        (letrec ((_%loop2548425659%_
                                  (lambda (_%hd2548225663%_ _%arg2548825666%_)
                                    (if (gx#stx-pair? _%hd2548225663%_)
                                        (let ((_%e2548525669%_
                                               (gx#syntax-e _%hd2548225663%_)))
                                          (let ((_%lp-tl2548725676%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2548525669%_)))
                                                (_%lp-hd2548625673%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2548525669%_))))
                                            (_%loop2548425659%_
                                             _%lp-tl2548725676%_
                                             (cons _%lp-hd2548625673%_
                                                   _%arg2548825666%_))))
                                        (let ((_%arg2548925679%_
                                               (reverse _%arg2548825666%_)))
                                          (let ((_%L25683%_ _%arg2548925679%_)
                                                (_%L25685%_ _%hd2547925647%_)
                                                (_%L25686%_ _%hd2547625637%_))
                                            (if (and (gx#identifier?
                                                      _%L25686%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2570525708%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2570625711%_)
                       (cons _%g2570525708%_ _%g2570625711%_))
                     '()
                     _%L25683%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2679726798%_
                                                 _%L25683%_
                                                 _%L25685%_
                                                 _%L25686%_)
                                                (_%__match2690526906%_
                                                 _%e2547225623%_
                                                 _%hd2547325627%_
                                                 _%tl2547425630%_
                                                 _%e2547525633%_
                                                 _%hd2547625637%_
                                                 _%tl2547725640%_
                                                 _%e2547825643%_
                                                 _%hd2547925647%_
                                                 _%tl2548025650%_
                                                 _%__splice2679926800%_
                                                 _%target2548125653%_
                                                 _%tl2548325656%_))))))))
                          (_%loop2548425659%_ _%target2548125653%_ '()))))
                     (_%__match2686526866%_
                      (lambda (_%e2547225623%_
                               _%hd2547325627%_
                               _%tl2547425630%_
                               _%e2547525633%_
                               _%hd2547625637%_
                               _%tl2547725640%_)
                        (if (gx#stx-pair? _%tl2547725640%_)
                            (let ((_%e2547825643%_
                                   (gx#syntax-e _%tl2547725640%_)))
                              (let ((_%tl2548025650%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2547825643%_)))
                                    (_%hd2547925647%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2547825643%_))))
                                (if (gx#stx-pair/null? _%tl2548025650%_)
                                    (let ((_%__splice2679926800%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2548025650%_
                                            '0)))
                                      (let ((_%tl2548325656%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2679926800%_
                                                '1)))
                                            (_%target2548125653%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2679926800%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2548325656%_)
                                            (_%__match2687926880%_
                                             _%e2547225623%_
                                             _%hd2547325627%_
                                             _%tl2547425630%_
                                             _%e2547525633%_
                                             _%hd2547625637%_
                                             _%tl2547725640%_
                                             _%e2547825643%_
                                             _%hd2547925647%_
                                             _%tl2548025650%_
                                             _%__splice2679926800%_
                                             _%target2548125653%_
                                             _%tl2548325656%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2542925516%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2542925516%_)))))
                            (let () (declare (not safe)) (_%g2542925516%_)))))
                     (_%__match2685326854%_
                      (lambda (_%e2545425729%_
                               _%hd2545525733%_
                               _%tl2545625736%_
                               _%e2545725739%_
                               _%hd2545825743%_
                               _%tl2545925746%_
                               _%__splice2679526796%_
                               _%target2546025749%_
                               _%tl2546225752%_)
                        (letrec ((_%loop2546325755%_
                                  (lambda (_%hd2546125759%_ _%arg2546725762%_)
                                    (if (gx#stx-pair? _%hd2546125759%_)
                                        (let ((_%e2546425765%_
                                               (gx#syntax-e _%hd2546125759%_)))
                                          (let ((_%lp-tl2546625772%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2546425765%_)))
                                                (_%lp-hd2546525769%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2546425765%_))))
                                            (_%loop2546325755%_
                                             _%lp-tl2546625772%_
                                             (cons _%lp-hd2546525769%_
                                                   _%arg2546725762%_))))
                                        (let ((_%arg2546825775%_
                                               (reverse _%arg2546725762%_)))
                                          (let ((_%L25779%_ _%arg2546825775%_)
                                                (_%L25781%_ _%hd2545825743%_))
                                            (if (_%dotted-identifier?25422%_
                                                 _%L25781%_)
                                                (_%__kont2679326794%_
                                                 _%L25779%_
                                                 _%L25781%_)
                                                (_%__match2686526866%_
                                                 _%e2545425729%_
                                                 _%hd2545525733%_
                                                 _%tl2545625736%_
                                                 _%e2545725739%_
                                                 _%hd2545825743%_
                                                 _%tl2545925746%_))))))))
                          (_%loop2546325755%_ _%target2546025749%_ '()))))
                     (_%__match2685126852%_
                      (lambda (_%e2545425729%_
                               _%hd2545525733%_
                               _%tl2545625736%_
                               _%e2545725739%_
                               _%hd2545825743%_
                               _%tl2545925746%_
                               _%__splice2679526796%_
                               _%target2546025749%_
                               _%tl2546225752%_)
                        (if (gx#stx-null? _%tl2546225752%_)
                            (_%__match2685326854%_
                             _%e2545425729%_
                             _%hd2545525733%_
                             _%tl2545625736%_
                             _%e2545725739%_
                             _%hd2545825743%_
                             _%tl2545925746%_
                             _%__splice2679526796%_
                             _%target2546025749%_
                             _%tl2546225752%_)
                            (if (gx#stx-pair? _%tl2545925746%_)
                                (let ((_%e2547825643%_
                                       (gx#syntax-e _%tl2545925746%_)))
                                  (let ((_%tl2548025650%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%e2547825643%_)))
                                        (_%hd2547925647%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%e2547825643%_))))
                                    (if (gx#stx-pair/null? _%tl2548025650%_)
                                        (let ((_%__splice2679926800%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2548025650%_
                                                '0)))
                                          (let ((_%tl2548325656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679926800%_
                                                    '1)))
                                                (_%target2548125653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679926800%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2548325656%_)
                                                (_%__match2687926880%_
                                                 _%e2545425729%_
                                                 _%hd2545525733%_
                                                 _%tl2545625736%_
                                                 _%e2545725739%_
                                                 _%hd2545825743%_
                                                 _%tl2545925746%_
                                                 _%e2547825643%_
                                                 _%hd2547925647%_
                                                 _%tl2548025650%_
                                                 _%__splice2679926800%_
                                                 _%target2548125653%_
                                                 _%tl2548325656%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2542925516%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2542925516%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2542925516%_))))))
                     (_%__match2683326834%_
                      (lambda (_%e2543425877%_
                               _%hd2543525881%_
                               _%tl2543625884%_
                               _%e2543725887%_
                               _%hd2543825891%_
                               _%tl2543925894%_
                               _%__splice2679126792%_
                               _%target2544025897%_
                               _%tl2544225900%_
                               _%e2544925903%_
                               _%hd2545025907%_
                               _%tl2545125910%_)
                        (letrec ((_%loop2544325913%_
                                  (lambda (_%hd2544125917%_ _%arg2544725920%_)
                                    (if (gx#stx-pair? _%hd2544125917%_)
                                        (let ((_%e2544425923%_
                                               (gx#syntax-e _%hd2544125917%_)))
                                          (let ((_%lp-tl2544625930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2544425923%_)))
                                                (_%lp-hd2544525927%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2544425923%_))))
                                            (_%loop2544325913%_
                                             _%lp-tl2544625930%_
                                             (cons _%lp-hd2544525927%_
                                                   _%arg2544725920%_))))
                                        (let ((_%arg2544825933%_
                                               (reverse _%arg2544725920%_)))
                                          (let ((_%L25937%_ _%hd2545025907%_)
                                                (_%L25939%_ _%arg2544825933%_)
                                                (_%L25940%_ _%hd2543825891%_))
                                            (if (and (_%dotted-identifier?25422%_
                                                      _%L25940%_)
                                                     (gx#stx-ormap
                                                      gx#ellipsis?
                                                      (foldr (lambda (_%g2595925962%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%g2596025965%_)
                       (cons _%g2595925962%_ _%g2596025965%_))
                     '()
                     _%L25939%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont2678926790%_
                                                 _%L25937%_
                                                 _%L25939%_
                                                 _%L25940%_)
                                                (let ((_%__splice2679526796%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2543925894%_
                                                        '0)))
                                                  (let ((_%tl2546225752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679526796%_
                                                            '1)))
                                                        (_%target2546025749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679526796%_
                                                            '0))))
                                                    (_%__match2685126852%_
                                                     _%e2543425877%_
                                                     _%hd2543525881%_
                                                     _%tl2543625884%_
                                                     _%e2543725887%_
                                                     _%hd2543825891%_
                                                     _%tl2543925894%_
                                                     _%__splice2679526796%_
                                                     _%target2546025749%_
                                                     _%tl2546225752%_))))))))))
                          (_%loop2544325913%_ _%target2544025897%_ '())))))
                (if (gx#stx-pair? _%__stx2678626787%_)
                    (let ((_%e2543425877%_ (gx#syntax-e _%__stx2678626787%_)))
                      (let ((_%tl2543625884%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2543425877%_)))
                            (_%hd2543525881%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2543425877%_))))
                        (if (gx#stx-pair? _%tl2543625884%_)
                            (let ((_%e2543725887%_
                                   (gx#syntax-e _%tl2543625884%_)))
                              (let ((_%tl2543925894%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2543725887%_)))
                                    (_%hd2543825891%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2543725887%_))))
                                (if (gx#stx-pair/null? _%tl2543925894%_)
                                    (if (let ((__tmp27290
                                               (gx#stx-length
                                                _%tl2543925894%_)))
                                          (declare (not safe))
                                          (##fx>= __tmp27290 '1))
                                        (let ((_%__splice2679126792%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2543925894%_
                                                '1)))
                                          (let ((_%tl2544225900%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679126792%_
                                                    '1)))
                                                (_%target2544025897%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679126792%_
                                                    '0))))
                                            (if (gx#stx-pair? _%tl2544225900%_)
                                                (let ((_%e2544925903%_
                                                       (gx#syntax-e
                                                        _%tl2544225900%_)))
                                                  (let ((_%tl2545125910%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%e2544925903%_)))
                                                        (_%hd2545025907%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%e2544925903%_))))
                                                    (if (gx#stx-null?
                                                         _%tl2545125910%_)
                                                        (_%__match2683326834%_
                                                         _%e2543425877%_
                                                         _%hd2543525881%_
                                                         _%tl2543625884%_
                                                         _%e2543725887%_
                                                         _%hd2543825891%_
                                                         _%tl2543925894%_
                                                         _%__splice2679126792%_
                                                         _%target2544025897%_
                                                         _%tl2544225900%_
                                                         _%e2544925903%_
                                                         _%hd2545025907%_
                                                         _%tl2545125910%_)
                                                        (let ((_%__splice2679526796%_
                                                               (gx#syntax-split-splice->vector
                                                                _%tl2543925894%_
                                                                '0)))
                                                          (let ((_%tl2546225752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2679526796%_ '1)))
                        (_%target2546025749%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice2679526796%_ '0))))
                    (if (gx#stx-null? _%tl2546225752%_)
                        (_%__match2685326854%_
                         _%e2543425877%_
                         _%hd2543525881%_
                         _%tl2543625884%_
                         _%e2543725887%_
                         _%hd2543825891%_
                         _%tl2543925894%_
                         _%__splice2679526796%_
                         _%target2546025749%_
                         _%tl2546225752%_)
                        (if (gx#stx-pair? _%tl2543925894%_)
                            (let ((_%e2547825643%_
                                   (gx#syntax-e _%tl2543925894%_)))
                              (let ((_%tl2548025650%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%e2547825643%_)))
                                    (_%hd2547925647%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%e2547825643%_))))
                                (if (gx#stx-pair/null? _%tl2548025650%_)
                                    (let ((_%__splice2679926800%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2548025650%_
                                            '0)))
                                      (let ((_%tl2548325656%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2679926800%_
                                                '1)))
                                            (_%target2548125653%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2679926800%_
                                                '0))))
                                        (if (gx#stx-null? _%tl2548325656%_)
                                            (_%__match2687926880%_
                                             _%e2543425877%_
                                             _%hd2543525881%_
                                             _%tl2543625884%_
                                             _%e2543725887%_
                                             _%hd2543825891%_
                                             _%tl2543925894%_
                                             _%e2547825643%_
                                             _%hd2547925647%_
                                             _%tl2548025650%_
                                             _%__splice2679926800%_
                                             _%target2548125653%_
                                             _%tl2548325656%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%g2542925516%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2542925516%_)))))
                            (let ()
                              (declare (not safe))
                              (_%g2542925516%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ((_%__splice2679526796%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2543925894%_
                                                        '0)))
                                                  (let ((_%tl2546225752%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679526796%_
                                                            '1)))
                                                        (_%target2546025749%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679526796%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2546225752%_)
                                                        (_%__match2685326854%_
                                                         _%e2543425877%_
                                                         _%hd2543525881%_
                                                         _%tl2543625884%_
                                                         _%e2543725887%_
                                                         _%hd2543825891%_
                                                         _%tl2543925894%_
                                                         _%__splice2679526796%_
                                                         _%target2546025749%_
                                                         _%tl2546225752%_)
                                                        (if (gx#stx-pair?
                                                             _%tl2543925894%_)
                                                            (let ((_%e2547825643%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%tl2543925894%_)))
                      (let ((_%tl2548025650%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%e2547825643%_)))
                            (_%hd2547925647%_
                             (let ()
                               (declare (not safe))
                               (##car _%e2547825643%_))))
                        (if (gx#stx-pair/null? _%tl2548025650%_)
                            (let ((_%__splice2679926800%_
                                   (gx#syntax-split-splice->vector
                                    _%tl2548025650%_
                                    '0)))
                              (let ((_%tl2548325656%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2679926800%_
                                        '1)))
                                    (_%target2548125653%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        _%__splice2679926800%_
                                        '0))))
                                (if (gx#stx-null? _%tl2548325656%_)
                                    (_%__match2687926880%_
                                     _%e2543425877%_
                                     _%hd2543525881%_
                                     _%tl2543625884%_
                                     _%e2543725887%_
                                     _%hd2543825891%_
                                     _%tl2543925894%_
                                     _%e2547825643%_
                                     _%hd2547925647%_
                                     _%tl2548025650%_
                                     _%__splice2679926800%_
                                     _%target2548125653%_
                                     _%tl2548325656%_)
                                    (let ()
                                      (declare (not safe))
                                      (_%g2542925516%_)))))
                            (let () (declare (not safe)) (_%g2542925516%_)))))
                    (let () (declare (not safe)) (_%g2542925516%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ((_%__splice2679526796%_
                                               (gx#syntax-split-splice->vector
                                                _%tl2543925894%_
                                                '0)))
                                          (let ((_%tl2546225752%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679526796%_
                                                    '1)))
                                                (_%target2546025749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice2679526796%_
                                                    '0))))
                                            (if (gx#stx-null? _%tl2546225752%_)
                                                (_%__match2685326854%_
                                                 _%e2543425877%_
                                                 _%hd2543525881%_
                                                 _%tl2543625884%_
                                                 _%e2543725887%_
                                                 _%hd2543825891%_
                                                 _%tl2543925894%_
                                                 _%__splice2679526796%_
                                                 _%target2546025749%_
                                                 _%tl2546225752%_)
                                                (if (gx#stx-pair?
                                                     _%tl2543925894%_)
                                                    (let ((_%e2547825643%_
                                                           (gx#syntax-e
                                                            _%tl2543925894%_)))
                                                      (let ((_%tl2548025650%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2547825643%_)))
                    (_%hd2547925647%_
                     (let () (declare (not safe)) (##car _%e2547825643%_))))
                (if (gx#stx-pair/null? _%tl2548025650%_)
                    (let ((_%__splice2679926800%_
                           (gx#syntax-split-splice->vector
                            _%tl2548025650%_
                            '0)))
                      (let ((_%tl2548325656%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2679926800%_ '1)))
                            (_%target2548125653%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice2679926800%_ '0))))
                        (if (gx#stx-null? _%tl2548325656%_)
                            (_%__match2687926880%_
                             _%e2543425877%_
                             _%hd2543525881%_
                             _%tl2543625884%_
                             _%e2543725887%_
                             _%hd2543825891%_
                             _%tl2543925894%_
                             _%e2547825643%_
                             _%hd2547925647%_
                             _%tl2548025650%_
                             _%__splice2679926800%_
                             _%target2548125653%_
                             _%tl2548325656%_)
                            (let () (declare (not safe)) (_%g2542925516%_)))))
                    (let () (declare (not safe)) (_%g2542925516%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2542925516%_)))))))
                                    (if (gx#stx-pair? _%tl2543925894%_)
                                        (let ((_%e2547825643%_
                                               (gx#syntax-e _%tl2543925894%_)))
                                          (let ((_%tl2548025650%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%e2547825643%_)))
                                                (_%hd2547925647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%e2547825643%_))))
                                            (if (gx#stx-pair/null?
                                                 _%tl2548025650%_)
                                                (let ((_%__splice2679926800%_
                                                       (gx#syntax-split-splice->vector
                                                        _%tl2548025650%_
                                                        '0)))
                                                  (let ((_%tl2548325656%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679926800%_
                                                            '1)))
                                                        (_%target2548125653%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice2679926800%_
                                                            '0))))
                                                    (if (gx#stx-null?
                                                         _%tl2548325656%_)
                                                        (_%__match2687926880%_
                                                         _%e2543425877%_
                                                         _%hd2543525881%_
                                                         _%tl2543625884%_
                                                         _%e2543725887%_
                                                         _%hd2543825891%_
                                                         _%tl2543925894%_
                                                         _%e2547825643%_
                                                         _%hd2547925647%_
                                                         _%tl2548025650%_
                                                         _%__splice2679926800%_
                                                         _%target2548125653%_
                                                         _%tl2548325656%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%g2542925516%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%g2542925516%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%g2542925516%_))))))
                            (let () (declare (not safe)) (_%g2542925516%_)))))
                    (let () (declare (not safe)) (_%g2542925516%_)))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@|
      (lambda (_%$stx26068%_)
        (let* ((_%__stx2690826909%_ _%$stx26068%_)
               (_%g2607326113%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2690826909%_))))
          (let ((_%__kont2691126912%_
                 (lambda (_%L26251%_ _%L26253%_)
                   (cons (gx#datum->syntax '#f 'slot-ref)
                         (cons _%L26253%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26251%_ '()))
                                     '())))))
                (_%__kont2691326914%_
                 (lambda (_%L26180%_ _%L26182%_ _%L26183%_ _%L26184%_)
                   (cons _%L26184%_
                         (cons (cons _%L26184%_
                                     (cons _%L26183%_ (cons _%L26182%_ '())))
                               (foldr (lambda (_%g2620526208%_ _%g2620626211%_)
                                        (cons _%g2620526208%_ _%g2620626211%_))
                                      '()
                                      _%L26180%_))))))
            (let* ((_%__match2696326964%_
                    (lambda (_%e2609026120%_
                             _%hd2609126124%_
                             _%tl2609226127%_
                             _%e2609326130%_
                             _%hd2609426134%_
                             _%tl2609526137%_
                             _%e2609626140%_
                             _%hd2609726144%_
                             _%tl2609826147%_
                             _%__splice2691526916%_
                             _%target2609926150%_
                             _%tl2610126153%_)
                      (letrec ((_%loop2610226156%_
                                (lambda (_%hd2610026160%_ _%rest2610626163%_)
                                  (if (gx#stx-pair? _%hd2610026160%_)
                                      (let ((_%e2610326166%_
                                             (gx#syntax-e _%hd2610026160%_)))
                                        (let ((_%lp-tl2610526173%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2610326166%_)))
                                              (_%lp-hd2610426170%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2610326166%_))))
                                          (_%loop2610226156%_
                                           _%lp-tl2610526173%_
                                           (cons _%lp-hd2610426170%_
                                                 _%rest2610626163%_))))
                                      (let ((_%rest2610726176%_
                                             (reverse _%rest2610626163%_)))
                                        (_%__kont2691326914%_
                                         _%rest2610726176%_
                                         _%hd2609726144%_
                                         _%hd2609426134%_
                                         _%hd2609126124%_))))))
                        (_%loop2610226156%_ _%target2609926150%_ '()))))
                   (_%__match2693726938%_
                    (lambda (_%e2607726221%_
                             _%hd2607826225%_
                             _%tl2607926228%_
                             _%e2608026231%_
                             _%hd2608126235%_
                             _%tl2608226238%_
                             _%e2608326241%_
                             _%hd2608426245%_
                             _%tl2608526248%_)
                      (let ((_%L26251%_ _%hd2608426245%_)
                            (_%L26253%_ _%hd2608126235%_))
                        (if (gx#identifier? _%L26251%_)
                            (_%__kont2691126912%_ _%L26251%_ _%L26253%_)
                            (if (gx#stx-pair/null? _%tl2608526248%_)
                                (let ((_%__splice2691526916%_
                                       (gx#syntax-split-splice->vector
                                        _%tl2608526248%_
                                        '0)))
                                  (let ((_%tl2610126153%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2691526916%_
                                            '1)))
                                        (_%target2609926150%_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref
                                            _%__splice2691526916%_
                                            '0))))
                                    (if (gx#stx-null? _%tl2610126153%_)
                                        (_%__match2696326964%_
                                         _%e2607726221%_
                                         _%hd2607826225%_
                                         _%tl2607926228%_
                                         _%e2608026231%_
                                         _%hd2608126235%_
                                         _%tl2608226238%_
                                         _%e2608326241%_
                                         _%hd2608426245%_
                                         _%tl2608526248%_
                                         _%__splice2691526916%_
                                         _%target2609926150%_
                                         _%tl2610126153%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%g2607326113%_)))))
                                (let ()
                                  (declare (not safe))
                                  (_%g2607326113%_))))))))
              (if (gx#stx-pair? _%__stx2690826909%_)
                  (let ((_%e2607726221%_ (gx#syntax-e _%__stx2690826909%_)))
                    (let ((_%tl2607926228%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2607726221%_)))
                          (_%hd2607826225%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2607726221%_))))
                      (if (gx#stx-pair? _%tl2607926228%_)
                          (let ((_%e2608026231%_
                                 (gx#syntax-e _%tl2607926228%_)))
                            (let ((_%tl2608226238%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2608026231%_)))
                                  (_%hd2608126235%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2608026231%_))))
                              (if (gx#stx-pair? _%tl2608226238%_)
                                  (let ((_%e2608326241%_
                                         (gx#syntax-e _%tl2608226238%_)))
                                    (let ((_%tl2608526248%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2608326241%_)))
                                          (_%hd2608426245%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2608326241%_))))
                                      (if (gx#stx-null? _%tl2608526248%_)
                                          (_%__match2693726938%_
                                           _%e2607726221%_
                                           _%hd2607826225%_
                                           _%tl2607926228%_
                                           _%e2608026231%_
                                           _%hd2608126235%_
                                           _%tl2608226238%_
                                           _%e2608326241%_
                                           _%hd2608426245%_
                                           _%tl2608526248%_)
                                          (if (gx#stx-pair/null?
                                               _%tl2608526248%_)
                                              (let ((_%__splice2691526916%_
                                                     (gx#syntax-split-splice->vector
                                                      _%tl2608526248%_
                                                      '0)))
                                                (let ((_%tl2610126153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2691526916%_
                                                          '1)))
                                                      (_%target2609926150%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          _%__splice2691526916%_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _%tl2610126153%_)
                                                      (_%__match2696326964%_
                                                       _%e2607726221%_
                                                       _%hd2607826225%_
                                                       _%tl2607926228%_
                                                       _%e2608026231%_
                                                       _%hd2608126235%_
                                                       _%tl2608226238%_
                                                       _%e2608326241%_
                                                       _%hd2608426245%_
                                                       _%tl2608526248%_
                                                       _%__splice2691526916%_
                                                       _%target2609926150%_
                                                       _%tl2610126153%_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_%g2607326113%_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2607326113%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2607326113%_)))))
                          (let () (declare (not safe)) (_%g2607326113%_)))))
                  (let () (declare (not safe)) (_%g2607326113%_))))))))
    (define |gerbil/core/mop~MOP-4[:0:]#@-set!|
      (lambda (_%$stx26273%_)
        (let* ((_%__stx2696626967%_ _%$stx26273%_)
               (_%g2627826330%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%__stx2696626967%_))))
          (let ((_%__kont2696926970%_
                 (lambda (_%L26506%_ _%L26508%_ _%L26509%_)
                   (cons (gx#datum->syntax '#f 'slot-set!)
                         (cons _%L26509%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%L26508%_ '()))
                                     (cons _%L26506%_ '()))))))
                (_%__kont2697126972%_
                 (lambda (_%L26417%_
                          _%L26419%_
                          _%L26420%_
                          _%L26421%_
                          _%L26422%_
                          _%L26423%_)
                   (cons _%L26423%_
                         (cons (cons (gx#datum->syntax '#f '@)
                                     (cons _%L26422%_
                                           (cons _%L26421%_
                                                 (foldr (lambda (_%g2645026453%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%g2645126456%_)
                  (cons _%g2645026453%_ _%g2645126456%_))
                '()
                _%L26420%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                               (cons _%L26419%_ (cons _%L26417%_ '())))))))
            (let* ((_%__match2704127042%_
                    (lambda (_%e2630126337%_
                             _%hd2630226341%_
                             _%tl2630326344%_
                             _%e2630426347%_
                             _%hd2630526351%_
                             _%tl2630626354%_
                             _%e2630726357%_
                             _%hd2630826361%_
                             _%tl2630926364%_
                             _%__splice2697326974%_
                             _%target2631026367%_
                             _%tl2631226370%_
                             _%e2631926373%_
                             _%hd2632026377%_
                             _%tl2632126380%_
                             _%e2632226383%_
                             _%hd2632326387%_
                             _%tl2632426390%_)
                      (letrec ((_%loop2631326393%_
                                (lambda (_%hd2631126397%_ _%path2631726400%_)
                                  (if (gx#stx-pair? _%hd2631126397%_)
                                      (let ((_%e2631426403%_
                                             (gx#syntax-e _%hd2631126397%_)))
                                        (let ((_%lp-tl2631626410%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%e2631426403%_)))
                                              (_%lp-hd2631526407%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%e2631426403%_))))
                                          (_%loop2631326393%_
                                           _%lp-tl2631626410%_
                                           (cons _%lp-hd2631526407%_
                                                 _%path2631726400%_))))
                                      (let ((_%path2631826413%_
                                             (reverse _%path2631726400%_)))
                                        (_%__kont2697126972%_
                                         _%hd2632326387%_
                                         _%hd2632026377%_
                                         _%path2631826413%_
                                         _%hd2630826361%_
                                         _%hd2630526351%_
                                         _%hd2630226341%_))))))
                        (_%loop2631326393%_ _%target2631026367%_ '()))))
                   (_%__match2700127002%_
                    (lambda (_%e2628326466%_
                             _%hd2628426470%_
                             _%tl2628526473%_
                             _%e2628626476%_
                             _%hd2628726480%_
                             _%tl2628826483%_
                             _%e2628926486%_
                             _%hd2629026490%_
                             _%tl2629126493%_
                             _%e2629226496%_
                             _%hd2629326500%_
                             _%tl2629426503%_)
                      (let ((_%L26506%_ _%hd2629326500%_)
                            (_%L26508%_ _%hd2629026490%_)
                            (_%L26509%_ _%hd2628726480%_))
                        (if (gx#identifier? _%L26508%_)
                            (_%__kont2696926970%_
                             _%L26506%_
                             _%L26508%_
                             _%L26509%_)
                            (if (gx#stx-pair/null? _%tl2629126493%_)
                                (if (let ((__tmp27291
                                           (gx#stx-length _%tl2629126493%_)))
                                      (declare (not safe))
                                      (##fx>= __tmp27291 '2))
                                    (let ((_%__splice2697326974%_
                                           (gx#syntax-split-splice->vector
                                            _%tl2629126493%_
                                            '2)))
                                      (let ((_%tl2631226370%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2697326974%_
                                                '1)))
                                            (_%target2631026367%_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                _%__splice2697326974%_
                                                '0))))
                                        (if (gx#stx-pair? _%tl2631226370%_)
                                            (let ((_%e2631926373%_
                                                   (gx#syntax-e
                                                    _%tl2631226370%_)))
                                              (let ((_%tl2632126380%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%e2631926373%_)))
                                                    (_%hd2632026377%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%e2631926373%_))))
                                                (if (gx#stx-pair?
                                                     _%tl2632126380%_)
                                                    (let ((_%e2632226383%_
                                                           (gx#syntax-e
                                                            _%tl2632126380%_)))
                                                      (let ((_%tl2632426390%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%e2632226383%_)))
                    (_%hd2632326387%_
                     (let () (declare (not safe)) (##car _%e2632226383%_))))
                (if (gx#stx-null? _%tl2632426390%_)
                    (_%__match2704127042%_
                     _%e2628326466%_
                     _%hd2628426470%_
                     _%tl2628526473%_
                     _%e2628626476%_
                     _%hd2628726480%_
                     _%tl2628826483%_
                     _%e2628926486%_
                     _%hd2629026490%_
                     _%tl2629126493%_
                     _%__splice2697326974%_
                     _%target2631026367%_
                     _%tl2631226370%_
                     _%e2631926373%_
                     _%hd2632026377%_
                     _%tl2632126380%_
                     _%e2632226383%_
                     _%hd2632326387%_
                     _%tl2632426390%_)
                    (let () (declare (not safe)) (_%g2627826330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%g2627826330%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%g2627826330%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%g2627826330%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%g2627826330%_))))))))
              (if (gx#stx-pair? _%__stx2696626967%_)
                  (let ((_%e2628326466%_ (gx#syntax-e _%__stx2696626967%_)))
                    (let ((_%tl2628526473%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2628326466%_)))
                          (_%hd2628426470%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2628326466%_))))
                      (if (gx#stx-pair? _%tl2628526473%_)
                          (let ((_%e2628626476%_
                                 (gx#syntax-e _%tl2628526473%_)))
                            (let ((_%tl2628826483%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2628626476%_)))
                                  (_%hd2628726480%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2628626476%_))))
                              (if (gx#stx-pair? _%tl2628826483%_)
                                  (let ((_%e2628926486%_
                                         (gx#syntax-e _%tl2628826483%_)))
                                    (let ((_%tl2629126493%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2628926486%_)))
                                          (_%hd2629026490%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2628926486%_))))
                                      (if (gx#stx-pair? _%tl2629126493%_)
                                          (let ((_%e2629226496%_
                                                 (gx#syntax-e
                                                  _%tl2629126493%_)))
                                            (let ((_%tl2629426503%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%e2629226496%_)))
                                                  (_%hd2629326500%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%e2629226496%_))))
                                              (if (gx#stx-null?
                                                   _%tl2629426503%_)
                                                  (_%__match2700127002%_
                                                   _%e2628326466%_
                                                   _%hd2628426470%_
                                                   _%tl2628526473%_
                                                   _%e2628626476%_
                                                   _%hd2628726480%_
                                                   _%tl2628826483%_
                                                   _%e2628926486%_
                                                   _%hd2629026490%_
                                                   _%tl2629126493%_
                                                   _%e2629226496%_
                                                   _%hd2629326500%_
                                                   _%tl2629426503%_)
                                                  (if (gx#stx-pair/null?
                                                       _%tl2629126493%_)
                                                      (if (let ((__tmp27292
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#stx-length _%tl2629126493%_)))
                    (declare (not safe))
                    (##fx>= __tmp27292 '2))
                  (let ((_%__splice2697326974%_
                         (gx#syntax-split-splice->vector _%tl2629126493%_ '2)))
                    (let ((_%tl2631226370%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2697326974%_ '1)))
                          (_%target2631026367%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _%__splice2697326974%_ '0))))
                      (if (gx#stx-pair? _%tl2631226370%_)
                          (let ((_%e2631926373%_
                                 (gx#syntax-e _%tl2631226370%_)))
                            (let ((_%tl2632126380%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2631926373%_)))
                                  (_%hd2632026377%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2631926373%_))))
                              (if (gx#stx-pair? _%tl2632126380%_)
                                  (let ((_%e2632226383%_
                                         (gx#syntax-e _%tl2632126380%_)))
                                    (let ((_%tl2632426390%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%e2632226383%_)))
                                          (_%hd2632326387%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%e2632226383%_))))
                                      (if (gx#stx-null? _%tl2632426390%_)
                                          (_%__match2704127042%_
                                           _%e2628326466%_
                                           _%hd2628426470%_
                                           _%tl2628526473%_
                                           _%e2628626476%_
                                           _%hd2628726480%_
                                           _%tl2628826483%_
                                           _%e2628926486%_
                                           _%hd2629026490%_
                                           _%tl2629126493%_
                                           _%__splice2697326974%_
                                           _%target2631026367%_
                                           _%tl2631226370%_
                                           _%e2631926373%_
                                           _%hd2632026377%_
                                           _%tl2632126380%_
                                           _%e2632226383%_
                                           _%hd2632326387%_
                                           _%tl2632426390%_)
                                          (let ()
                                            (declare (not safe))
                                            (_%g2627826330%_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2627826330%_)))))
                          (let () (declare (not safe)) (_%g2627826330%_)))))
                  (let () (declare (not safe)) (_%g2627826330%_)))
              (let () (declare (not safe)) (_%g2627826330%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (gx#stx-pair/null?
                                               _%tl2629126493%_)
                                              (if (let ((__tmp27293
                                                         (gx#stx-length
                                                          _%tl2629126493%_)))
                                                    (declare (not safe))
                                                    (##fx>= __tmp27293 '2))
                                                  (let ((_%__splice2697326974%_
                                                         (gx#syntax-split-splice->vector
                                                          _%tl2629126493%_
                                                          '2)))
                                                    (let ((_%tl2631226370%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2697326974%_
                                                              '1)))
                                                          (_%target2631026367%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _%__splice2697326974%_
                                                              '0))))
                                                      (if (gx#stx-pair?
                                                           _%tl2631226370%_)
                                                          (let ((_%e2631926373%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%tl2631226370%_)))
                    (let ((_%tl2632126380%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%e2631926373%_)))
                          (_%hd2632026377%_
                           (let ()
                             (declare (not safe))
                             (##car _%e2631926373%_))))
                      (if (gx#stx-pair? _%tl2632126380%_)
                          (let ((_%e2632226383%_
                                 (gx#syntax-e _%tl2632126380%_)))
                            (let ((_%tl2632426390%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%e2632226383%_)))
                                  (_%hd2632326387%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%e2632226383%_))))
                              (if (gx#stx-null? _%tl2632426390%_)
                                  (_%__match2704127042%_
                                   _%e2628326466%_
                                   _%hd2628426470%_
                                   _%tl2628526473%_
                                   _%e2628626476%_
                                   _%hd2628726480%_
                                   _%tl2628826483%_
                                   _%e2628926486%_
                                   _%hd2629026490%_
                                   _%tl2629126493%_
                                   _%__splice2697326974%_
                                   _%target2631026367%_
                                   _%tl2631226370%_
                                   _%e2631926373%_
                                   _%hd2632026377%_
                                   _%tl2632126380%_
                                   _%e2632226383%_
                                   _%hd2632326387%_
                                   _%tl2632426390%_)
                                  (let ()
                                    (declare (not safe))
                                    (_%g2627826330%_)))))
                          (let () (declare (not safe)) (_%g2627826330%_)))))
                  (let () (declare (not safe)) (_%g2627826330%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%g2627826330%_)))
                                              (let ()
                                                (declare (not safe))
                                                (_%g2627826330%_))))))
                                  (let ()
                                    (declare (not safe))
                                    (_%g2627826330%_)))))
                          (let () (declare (not safe)) (_%g2627826330%_)))))
                  (let () (declare (not safe)) (_%g2627826330%_))))))))))

(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/mop~MOP-1[1]#module-type-id|
    (lambda (_%type-t23388%_)
      (let ((_%$e23391%_ (gx#module-context-ns (gx#current-expander-context))))
        (if _%$e23391%_
            (gx#stx-identifier
             _%type-t23388%_
             _%$e23391%_
             '"#"
             _%type-t23388%_
             '"::t")
            (gx#stx-identifier _%type-t23388%_ _%type-t23388%_ '"::t")))))
  (define |gerbil/core/mop~MOP-1[1]#make-class-type-id|
    (lambda (_%type-t23385%_)
      (if (gx#module-context? (gx#current-expander-context))
          (|gerbil/core/mop~MOP-1[1]#module-type-id| _%type-t23385%_)
          (make-symbol '"__" (gensym (gx#stx-e _%type-t23385%_)) '"::t"))))
  (define |gerbil/core/mop~MOP-1[1]#generate-typedef|
    (lambda (_%stx21973%_ _%struct?21975%_)
      (letrec ((_%wrap21977%_
                (lambda (_%e-stx23382%_)
                  (gx#stx-wrap-source
                   _%e-stx23382%_
                   (gx#stx-source _%stx21973%_))))
               (_%slot-name21979%_
                (lambda (_%slot-spec23299%_)
                  (let* ((_%$%g2330223321%_
                          (lambda (_%$%g2330323317%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; invalid match target"
                             _%$%g2330323317%_)))
                         (_%$%g2330123378%_
                          (lambda (_%$%g2330323325%_)
                            (if (gx#stx-pair? _%$%g2330323325%_)
                                (let ((_%$%e2330723328%_
                                       (gx#syntax-e _%$%g2330323325%_)))
                                  (let ((_%$%hd2330823332%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2330723328%_)))
                                        (_%$%tl2330923335%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2330723328%_))))
                                    (if (gx#stx-pair? _%$%tl2330923335%_)
                                        (let ((_%$%e2331023338%_
                                               (gx#syntax-e
                                                _%$%tl2330923335%_)))
                                          (let ((_%$%hd2331123342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2331023338%_)))
                                                (_%$%tl2331223345%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2331023338%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl2331223345%_)
                                                (let ((_%$%e2331323348%_
                                                       (gx#syntax-e
                                                        _%$%tl2331223345%_)))
                                                  (let ((_%$%hd2331423352%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e2331323348%_)))
                                                        (_%$%tl2331523355%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e2331323348%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2331523355%_)
                                                        _%$%hd2330823332%_
                                                        (_%$%g2330223321%_
                                                         _%$%g2330323325%_))))
                                                (_%$%g2330223321%_
                                                 _%$%g2330323325%_))))
                                        (_%$%g2330223321%_
                                         _%$%g2330323325%_))))
                                (_%$%g2330223321%_ _%$%g2330323325%_)))))
                    (_%$%g2330123378%_ _%slot-spec23299%_))))
               (_%class-opt?21980%_
                (lambda (_%key23296%_)
                  (let ((__tmp28452 (gx#stx-e _%key23296%_)))
                    (declare (not safe))
                    (##memq __tmp28452
                            '(struct:
                              slots:
                              id:
                              name:
                              properties:
                              constructor:
                              final:
                              mixin:
                              metaclass:))))))
        (let* ((_%$%g2198222009%_
                (lambda (_%$%g2198322005%_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _%$%g2198322005%_)))
               (_%$%g2198123292%_
                (lambda (_%$%g2198322013%_)
                  (if (gx#stx-pair? _%$%g2198322013%_)
                      (let ((_%$%e2198922016%_
                             (gx#syntax-e _%$%g2198322013%_)))
                        (let ((_%$%hd2199022020%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2198922016%_)))
                              (_%$%tl2199122023%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2198922016%_))))
                          (if (gx#stx-pair? _%$%tl2199122023%_)
                              (let ((_%$%e2199222026%_
                                     (gx#syntax-e _%$%tl2199122023%_)))
                                (let ((_%$%hd2199322030%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2199222026%_)))
                                      (_%$%tl2199422033%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2199222026%_))))
                                  (if (gx#stx-pair? _%$%tl2199422033%_)
                                      (let ((_%$%e2199522036%_
                                             (gx#syntax-e _%$%tl2199422033%_)))
                                        (let ((_%$%hd2199622040%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e2199522036%_)))
                                              (_%$%tl2199722043%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e2199522036%_))))
                                          (if (gx#stx-pair? _%$%tl2199722043%_)
                                              (let ((_%$%e2199822046%_
                                                     (gx#syntax-e
                                                      _%$%tl2199722043%_)))
                                                (let ((_%$%hd2199922050%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e2199822046%_)))
                                                      (_%$%tl2200022053%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e2199822046%_))))
                                                  (if (gx#stx-pair?
                                                       _%$%tl2200022053%_)
                                                      (let ((_%$%e2200122056%_
                                                             (gx#syntax-e
                                                              _%$%tl2200022053%_)))
                                                        (let ((_%$%hd2200222060%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e2200122056%_)))
                      (_%$%tl2200322063%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e2200122056%_))))
                  (if (and (gx#identifier? _%$%hd2199322030%_)
                           (gx#identifier-list? _%$%hd2199622040%_)
                           (or (gx#identifier? _%$%hd2199922050%_)
                               (gx#stx-false? _%$%hd2199922050%_))
                           (gx#identifier? _%$%hd2200222060%_)
                           (gx#stx-plist?
                            _%$%tl2200322063%_
                            _%class-opt?21980%_))
                      (let* ((_%struct?22111%_
                              (let ((_%$e22101%_ _%struct?21975%_))
                                (if _%$e22101%_
                                    _%$e22101%_
                                    (let ((_%$e22105%_
                                           (gx#stx-getq
                                            'struct:
                                            _%$%tl2200322063%_)))
                                      (if _%$e22105%_
                                          (gx#stx-e _%$e22105%_)
                                          '#f)))))
                             (_%slots22118%_
                              (let ((_%$e22114%_
                                     (gx#stx-getq 'slots: _%$%tl2200322063%_)))
                                (if _%$e22114%_ _%$e22114%_ '())))
                             (_%mixin-slots22125%_
                              (let ((_%$e22121%_
                                     (gx#stx-getq 'mixin: _%$%tl2200322063%_)))
                                (if _%$e22121%_ _%$e22121%_ '())))
                             (_%accessible-slots22128%_
                              (append (gx#syntax->list _%slots22118%_)
                                      (gx#syntax->list _%mixin-slots22125%_)))
                             (_%metaclass22131%_
                              (gx#stx-getq 'metaclass: _%$%tl2200322063%_))
                             (_%$%g2213422151%_
                              (lambda (_%$%g2213522147%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2213522147%_)))
                             (_%$%g2213323288%_
                              (lambda (_%$%g2213522155%_)
                                (if (gx#stx-pair/null? _%$%g2213522155%_)
                                    (let ((_g28453_
                                           (gx#syntax-split-splice
                                            _%$%g2213522155%_
                                            '0)))
                                      (begin
                                        (let ((_g28454_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g28453_)
                                                     (##values-length _g28453_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g28454_ 2)))
                                              (error "Context expects 2 values"
                                                     _g28454_)))
                                        (let ((_%$%target2213722158%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g28453_ 0)))
                                              (_%$%tl2213922161%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##values-ref _g28453_ 1))))
                                          (if (gx#stx-null? _%$%tl2213922161%_)
                                              (letrec ((_%$%loop2214022164%_
                                                        (lambda (_%$%hd2213822168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%slot2214422171%_)
                  (if (gx#stx-pair? _%$%hd2213822168%_)
                      (let ((_%$%e2214122173%_
                             (gx#syntax-e _%$%hd2213822168%_)))
                        (let ((_%$%lp-hd2214222177%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2214122173%_)))
                              (_%$%lp-tl2214322180%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2214122173%_))))
                          (_%$%loop2214022164%_
                           _%$%lp-tl2214322180%_
                           (cons _%$%lp-hd2214222177%_ _%$%slot2214422171%_))))
                      (let* ((_%$%slot2214522183%_
                              (reverse _%$%slot2214422171%_))
                             (_%$%g2220722215%_
                              (lambda (_%$%g2220822211%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2220822211%_)))
                             (_%$%g2220623280%_
                              (lambda (_%$%g2220822219%_)
                                (let* ((_%$%g2223522243%_
                                        (lambda (_%$%g2223622239%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2223622239%_)))
                                       (_%$%g2223423272%_
                                        (lambda (_%$%g2223622247%_)
                                          (let* ((_%$%g2226322271%_
                                                  (lambda (_%$%g2226422267%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g2226422267%_)))
                                                 (_%$%g2226223268%_
                                                  (lambda (_%$%g2226422275%_)
                                                    (let* ((_%$%g2229122299%_
                                                            (lambda (_%$%g2229222295%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g2229222295%_)))
                                                           (_%$%g2229023264%_
                                                            (lambda (_%$%g2229222303%_)
                                                              (let* ((_%$%g2231922327%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g2232022323%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2232022323%_)))
                             (_%$%g2231823260%_
                              (lambda (_%$%g2232022331%_)
                                (let* ((_%$%g2234722355%_
                                        (lambda (_%$%g2234822351%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2234822351%_)))
                                       (_%$%g2234623256%_
                                        (lambda (_%$%g2234822359%_)
                                          (let* ((_%$%g2237522383%_
                                                  (lambda (_%$%g2237622379%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g2237622379%_)))
                                                 (_%$%g2237423252%_
                                                  (lambda (_%$%g2237622387%_)
                                                    (let* ((_%$%g2240322411%_
                                                            (lambda (_%$%g2240422407%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g2240422407%_)))
                                                           (_%$%g2240223248%_
                                                            (lambda (_%$%g2240422415%_)
                                                              (let* ((_%$%g2243122439%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g2243222435%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2243222435%_)))
                             (_%$%g2243023240%_
                              (lambda (_%$%g2243222443%_)
                                (let* ((_%$%g2245922467%_
                                        (lambda (_%$%g2246022463%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2246022463%_)))
                                       (_%$%g2245823236%_
                                        (lambda (_%$%g2246022471%_)
                                          (let* ((_%$%g2248722495%_
                                                  (lambda (_%$%g2248822491%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g2248822491%_)))
                                                 (_%$%g2248623232%_
                                                  (lambda (_%$%g2248822499%_)
                                                    (let* ((_%$%g2251522523%_
                                                            (lambda (_%$%g2251622519%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g2251622519%_)))
                                                           (_%$%g2251423197%_
                                                            (lambda (_%$%g2251622527%_)
                                                              (let* ((_%$%g2254322551%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g2254422547%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2254422547%_)))
                             (_%$%g2254223193%_
                              (lambda (_%$%g2254422555%_)
                                (let* ((_%$%g2257122579%_
                                        (lambda (_%$%g2257222575%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2257222575%_)))
                                       (_%$%g2257023181%_
                                        (lambda (_%$%g2257222583%_)
                                          (let* ((_%$%g2259922607%_
                                                  (lambda (_%$%g2260022603%_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax; invalid match target"
                                                     _%$%g2260022603%_)))
                                                 (_%$%g2259823169%_
                                                  (lambda (_%$%g2260022611%_)
                                                    (let* ((_%$%g2262722635%_
                                                            (lambda (_%$%g2262822631%_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax; invalid match target"
                                                               _%$%g2262822631%_)))
                                                           (_%$%g2262623165%_
                                                            (lambda (_%$%g2262822639%_)
                                                              (let* ((_%$%g2265522663%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_%$%g2265622659%_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _%$%g2265622659%_)))
                             (_%$%g2265423161%_
                              (lambda (_%$%g2265622667%_)
                                (let* ((_%$%g2268322709%_
                                        (lambda (_%$%g2268422705%_)
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           _%$%g2268422705%_)))
                                       (_%$%g2268223073%_
                                        (lambda (_%$%g2268422713%_)
                                          (if (gx#stx-pair/null?
                                               _%$%g2268422713%_)
                                              (let ((_g28455_
                                                     (gx#syntax-split-splice
                                                      _%$%g2268422713%_
                                                      '0)))
                                                (begin
                                                  (let ((_g28456_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g28455_)
                                                               (##values-length
                                                                _g28455_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g28456_ 2)))
                (error "Context expects 2 values" _g28456_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_%$%target2268722716%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g28455_
                                                            0)))
                                                        (_%$%tl2268922719%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##values-ref
                                                            _g28455_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2268922719%_)
                                                        (letrec ((_%$%loop2269022722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_%$%hd2268822726%_
                                   _%$%def-setf2269422729%_
                                   _%$%def-getf2269522730%_)
                            (if (gx#stx-pair? _%$%hd2268822726%_)
                                (let ((_%$%e2269122732%_
                                       (gx#syntax-e _%$%hd2268822726%_)))
                                  (let ((_%$%lp-hd2269222736%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e2269122732%_)))
                                        (_%$%lp-tl2269322739%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e2269122732%_))))
                                    (if (gx#stx-pair? _%$%lp-hd2269222736%_)
                                        (let ((_%$%e2269822742%_
                                               (gx#syntax-e
                                                _%$%lp-hd2269222736%_)))
                                          (let ((_%$%hd2269922746%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e2269822742%_)))
                                                (_%$%tl2270022749%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e2269822742%_))))
                                            (if (gx#stx-pair?
                                                 _%$%tl2270022749%_)
                                                (let ((_%$%e2270122752%_
                                                       (gx#syntax-e
                                                        _%$%tl2270022749%_)))
                                                  (let ((_%$%hd2270222756%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e2270122752%_)))
                                                        (_%$%tl2270322759%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e2270122752%_))))
                                                    (if (gx#stx-null?
                                                         _%$%tl2270322759%_)
                                                        (_%$%loop2269022722%_
                                                         _%$%lp-tl2269322739%_
                                                         (cons _%$%hd2270222756%_
                                                               _%$%def-setf2269422729%_)
                                                         (cons _%$%hd2269922746%_
                                                               _%$%def-getf2269522730%_))
                                                        (_%$%g2268322709%_
                                                         _%$%g2268422713%_))))
                                                (_%$%g2268322709%_
                                                 _%$%g2268422713%_))))
                                        (_%$%g2268322709%_
                                         _%$%g2268422713%_))))
                                (let ((_%$%def-setf2269622762%_
                                       (reverse _%$%def-setf2269422729%_))
                                      (_%$%def-getf2269722764%_
                                       (reverse _%$%def-getf2269522730%_)))
                                  (let* ((_%$%g2278522811%_
                                          (lambda (_%$%g2278622807%_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             _%$%g2278622807%_)))
                                         (_%$%g2278422921%_
                                          (lambda (_%$%g2278622815%_)
                                            (if (gx#stx-pair/null?
                                                 _%$%g2278622815%_)
                                                (let ((_g28457_
                                                       (gx#syntax-split-splice
                                                        _%$%g2278622815%_
                                                        '0)))
                                                  (begin
                                                    (let ((_g28458_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g28457_)
                         (##values-length _g28457_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g28458_ 2)))
                  (error "Context expects 2 values" _g28458_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_%$%target2278922818%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g28457_
                                                              0)))
                                                          (_%$%tl2279122821%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##values-ref
                                                              _g28457_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _%$%tl2279122821%_)
                                                          (letrec ((_%$%loop2279222824%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_%$%hd2279022828%_
                                     _%$%def-usetf2279622831%_
                                     _%$%def-ugetf2279722832%_)
                              (if (gx#stx-pair? _%$%hd2279022828%_)
                                  (let ((_%$%e2279322834%_
                                         (gx#syntax-e _%$%hd2279022828%_)))
                                    (let ((_%$%lp-hd2279422838%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e2279322834%_)))
                                          (_%$%lp-tl2279522841%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e2279322834%_))))
                                      (if (gx#stx-pair? _%$%lp-hd2279422838%_)
                                          (let ((_%$%e2280022844%_
                                                 (gx#syntax-e
                                                  _%$%lp-hd2279422838%_)))
                                            (let ((_%$%hd2280122848%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e2280022844%_)))
                                                  (_%$%tl2280222851%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e2280022844%_))))
                                              (if (gx#stx-pair?
                                                   _%$%tl2280222851%_)
                                                  (let ((_%$%e2280322854%_
                                                         (gx#syntax-e
                                                          _%$%tl2280222851%_)))
                                                    (let ((_%$%hd2280422858%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e2280322854%_)))
                                                          (_%$%tl2280522861%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e2280322854%_))))
                                                      (if (gx#stx-null?
                                                           _%$%tl2280522861%_)
                                                          (_%$%loop2279222824%_
                                                           _%$%lp-tl2279522841%_
                                                           (cons _%$%hd2280422858%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%def-usetf2279622831%_)
                   (cons _%$%hd2280122848%_ _%$%def-ugetf2279722832%_))
                  (_%$%g2278522811%_ _%$%g2278622815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%g2278522811%_
                                                   _%$%g2278622815%_))))
                                          (_%$%g2278522811%_
                                           _%$%g2278622815%_))))
                                  (let ((_%$%def-usetf2279822864%_
                                         (reverse _%$%def-usetf2279622831%_))
                                        (_%$%def-ugetf2279922866%_
                                         (reverse _%$%def-ugetf2279722832%_)))
                                    (_%wrap21977%_
                                     (cons (gx#datum->syntax '#f 'begin)
                                           (cons _%$%g2260022611%_
                                                 (cons _%$%g2265622667%_
                                                       (cons _%$%g2262822639%_
                                                             (foldr (lambda (_%$%g2288822897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _%$%g2288922900%_)
                              (cons _%$%g2288822897%_ _%$%g2288922900%_))
                            (foldr (lambda (_%$%g2289022903%_
                                            _%$%g2289122906%_)
                                     (cons _%$%g2289022903%_
                                           _%$%g2289122906%_))
                                   (foldr (lambda (_%$%g2289222909%_
                                                   _%$%g2289322912%_)
                                            (cons _%$%g2289222909%_
                                                  _%$%g2289322912%_))
                                          (foldr (lambda (_%$%g2289422915%_
                                                          _%$%g2289522918%_)
                                                   (cons _%$%g2289422915%_
                                                         _%$%g2289522918%_))
                                                 '()
                                                 _%$%def-usetf2279822864%_)
                                          _%$%def-ugetf2279922866%_)
                                   _%$%def-setf2269622762%_)
                            _%$%def-getf2269722764%_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (_%$%loop2279222824%_ _%$%target2278922818%_ '() '()))
                  (_%$%g2278522811%_ _%$%g2278622815%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g2278522811%_
                                                 _%$%g2278622815%_)))))
                                    (_%$%g2278422921%_
                                     (gx#stx-map
                                      (lambda (_%ref22925%_)
                                        (let* ((_%$%g2292822947%_
                                                (lambda (_%$%g2292922943%_)
                                                  (gx#raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; invalid match target"
                                                   _%$%g2292922943%_)))
                                               (_%$%g2292723069%_
                                                (lambda (_%$%g2292922951%_)
                                                  (if (gx#stx-pair?
                                                       _%$%g2292922951%_)
                                                      (let ((_%$%e2293322954%_
                                                             (gx#syntax-e
                                                              _%$%g2292922951%_)))
                                                        (let ((_%$%hd2293422958%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _%$%e2293322954%_)))
                      (_%$%tl2293522961%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e2293322954%_))))
                  (if (gx#stx-pair? _%$%tl2293522961%_)
                      (let ((_%$%e2293622964%_
                             (gx#syntax-e _%$%tl2293522961%_)))
                        (let ((_%$%hd2293722968%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e2293622964%_)))
                              (_%$%tl2293822971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e2293622964%_))))
                          (if (gx#stx-pair? _%$%tl2293822971%_)
                              (let ((_%$%e2293922974%_
                                     (gx#syntax-e _%$%tl2293822971%_)))
                                (let ((_%$%hd2294022978%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e2293922974%_)))
                                      (_%$%tl2294122981%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e2293922974%_))))
                                  (if (gx#stx-null? _%$%tl2294122981%_)
                                      (let* ((_%$%g2300523020%_
                                              (lambda (_%$%g2300623016%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g2300623016%_)))
                                             (_%$%g2300423065%_
                                              (lambda (_%$%g2300623024%_)
                                                (if (gx#stx-pair?
                                                     _%$%g2300623024%_)
                                                    (let ((_%$%e2300923027%_
                                                           (gx#syntax-e
                                                            _%$%g2300623024%_)))
                                                      (let ((_%$%hd2301023031%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2300923027%_)))
                    (_%$%tl2301123034%_
                     (let () (declare (not safe)) (##cdr _%$%e2300923027%_))))
                (if (gx#stx-pair? _%$%tl2301123034%_)
                    (let ((_%$%e2301223037%_ (gx#syntax-e _%$%tl2301123034%_)))
                      (let ((_%$%hd2301323041%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2301223037%_)))
                            (_%$%tl2301423044%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2301223037%_))))
                        (if (gx#stx-null? _%$%tl2301423044%_)
                            (cons (_%wrap21977%_
                                   (cons (gx#datum->syntax '#f 'def)
                                         (cons _%$%hd2301023031%_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'begin-annotation)
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                '@mop.accessor)
                               (cons _%$%g2229222303%_
                                     (cons _%$%hd2293422958%_ (cons '#f '()))))
                         (cons (cons (gx#datum->syntax
                                      '#f
                                      'make-class-slot-unchecked-accessor)
                                     (cons _%$%hd2199322030%_
                                           (cons (cons (gx#datum->syntax
                                                        '#f
                                                        'quote)
                                                       (cons _%$%hd2293422958%_
                                                             '()))
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))
                                  (cons (_%wrap21977%_
                                         (cons (gx#datum->syntax '#f 'def)
                                               (cons _%$%hd2301323041%_
                                                     (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'begin-annotation)
                         (cons (cons (gx#datum->syntax '#f '@mop.mutator)
                                     (cons _%$%g2229222303%_
                                           (cons _%$%hd2293422958%_
                                                 (cons '#f '()))))
                               (cons (cons (gx#datum->syntax
                                            '#f
                                            'make-class-slot-unchecked-mutator)
                                           (cons _%$%hd2199322030%_
                                                 (cons (cons (gx#datum->syntax
                                                              '#f
                                                              'quote)
                                                             (cons _%$%hd2293422958%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        '()))
                            (_%$%g2300523020%_ _%$%g2300623024%_))))
                    (_%$%g2300523020%_ _%$%g2300623024%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2300523020%_
                                                     _%$%g2300623024%_)))))
                                        (_%$%g2300423065%_
                                         (list (gx#stx-identifier
                                                _%$%hd2293722968%_
                                                '"&"
                                                _%$%hd2293722968%_)
                                               (gx#stx-identifier
                                                _%$%hd2294022978%_
                                                '"&"
                                                _%$%hd2294022978%_))))
                                      (_%$%g2292822947%_ _%$%g2292922951%_))))
                              (_%$%g2292822947%_ _%$%g2292922951%_))))
                      (_%$%g2292822947%_ _%$%g2292922951%_))))
              (_%$%g2292822947%_ _%$%g2292922951%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%g2292723069%_ _%ref22925%_)))
                                      _%accessible-slots22128%_))))))))
                  (_%$%loop2269022722%_ _%$%target2268722716%_ '() '()))
                (_%$%g2268322709%_ _%$%g2268422713%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2268322709%_
                                               _%$%g2268422713%_)))))
                                  (_%$%g2268223073%_
                                   (gx#stx-map
                                    (lambda (_%ref23077%_)
                                      (let* ((_%$%g2308023099%_
                                              (lambda (_%$%g2308123095%_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%$%g2308123095%_)))
                                             (_%$%g2307923157%_
                                              (lambda (_%$%g2308123103%_)
                                                (if (gx#stx-pair?
                                                     _%$%g2308123103%_)
                                                    (let ((_%$%e2308523106%_
                                                           (gx#syntax-e
                                                            _%$%g2308123103%_)))
                                                      (let ((_%$%hd2308623110%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _%$%e2308523106%_)))
                    (_%$%tl2308723113%_
                     (let () (declare (not safe)) (##cdr _%$%e2308523106%_))))
                (if (gx#stx-pair? _%$%tl2308723113%_)
                    (let ((_%$%e2308823116%_ (gx#syntax-e _%$%tl2308723113%_)))
                      (let ((_%$%hd2308923120%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e2308823116%_)))
                            (_%$%tl2309023123%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e2308823116%_))))
                        (if (gx#stx-pair? _%$%tl2309023123%_)
                            (let ((_%$%e2309123126%_
                                   (gx#syntax-e _%$%tl2309023123%_)))
                              (let ((_%$%hd2309223130%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e2309123126%_)))
                                    (_%$%tl2309323133%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e2309123126%_))))
                                (if (gx#stx-null? _%$%tl2309323133%_)
                                    (cons (_%wrap21977%_
                                           (cons (gx#datum->syntax '#f 'def)
                                                 (cons _%$%hd2308923120%_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'begin-annotation)
                           (cons (cons (gx#datum->syntax '#f '@mop.accessor)
                                       (cons _%$%g2229222303%_
                                             (cons _%$%hd2308623110%_
                                                   (cons '#t '()))))
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              'make-class-slot-accessor)
                                             (cons _%$%hd2199322030%_
                                                   (cons (cons (gx#datum->syntax
                                                                '#f
                                                                'quote)
                                                               (cons _%$%hd2308623110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '()))
                 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       '())))
                     '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons (_%wrap21977%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'def)
                                                       (cons _%$%hd2309223130%_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'begin-annotation)
                                 (cons (cons (gx#datum->syntax
                                              '#f
                                              '@mop.mutator)
                                             (cons _%$%g2229222303%_
                                                   (cons _%$%hd2308623110%_
                                                         (cons '#t '()))))
                                       (cons (cons (gx#datum->syntax
                                                    '#f
                                                    'make-class-slot-mutator)
                                                   (cons _%$%hd2199322030%_
                                                         (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _%$%hd2308623110%_ '()))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    (_%$%g2308023099%_ _%$%g2308123103%_))))
                            (_%$%g2308023099%_ _%$%g2308123103%_))))
                    (_%$%g2308023099%_ _%$%g2308123103%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%g2308023099%_
                                                     _%$%g2308123103%_)))))
                                        (_%$%g2307923157%_ _%ref23077%_)))
                                    _%accessible-slots22128%_))))))
                        (_%$%g2265423161%_
                         (_%wrap21977%_
                          (cons (gx#datum->syntax '#f 'def)
                                (cons _%$%hd2200222060%_
                                      (cons (cons (gx#datum->syntax
                                                   '#f
                                                   'begin-annotation)
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               '@mop.predicate)
                                                              (cons _%$%g2229222303%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (cons (gx#datum->syntax '#f 'make-class-predicate)
                            (cons _%$%hd2199322030%_ '()))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            '())))))))))
              (_%$%g2262623165%_
               (if (gx#stx-false? _%$%hd2199922050%_)
                   (cons (gx#datum->syntax '#f 'begin) '())
                   (_%wrap21977%_
                    (cons (gx#datum->syntax '#f 'def)
                          (cons _%$%hd2199922050%_
                                (cons (cons (gx#datum->syntax
                                             '#f
                                             'begin-annotation)
                                            (cons (cons (gx#datum->syntax
                                                         '#f
                                                         '@mop.constructor)
                                                        (cons _%$%g2229222303%_
                                                              '()))
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'lambda)
                                                              (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$args)
                            (cons (cons (gx#datum->syntax '#f 'apply)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'make-instance)
                                              (cons _%$%hd2199322030%_
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           '$args)
                                                          '()))))
                                  '())))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2259823169%_
                                             (_%wrap21977%_
                                              (cons (gx#datum->syntax '#f 'def)
                                                    (cons _%$%hd2199322030%_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'begin-annotation)
                              (cons (cons (gx#datum->syntax '#f '@mop.class)
                                          (cons _%$%g2220822219%_
                                                (cons _%$%g2232022331%_
                                                      (cons (foldr (lambda (_%$%g2317223175%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    _%$%g2317323178%_)
                             (cons _%$%g2317223175%_ _%$%g2317323178%_))
                           '()
                           _%$%slot2214522183%_)
                    (cons _%$%g2226422275%_
                          (cons _%$%g2234822359%_
                                (cons _%$%g2237622387%_
                                      (cons _%$%g2240422415%_ '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    (cons _%$%g2257222583%_ '())))
                        '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_%$%g2257023181%_
                                   (cons (gx#datum->syntax
                                          '#f
                                          'make-class-type)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'quote)
                                                     (cons _%$%g2220822219%_
                                                           '()))
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'quote)
                                                           (cons _%$%g2223622247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons _%$%g2254422555%_
                                                           (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '#f
                                'quote)
                               (cons (foldr (lambda (_%$%g2318423187%_
                                                     _%$%g2318523190%_)
                                              (cons _%$%g2318423187%_
                                                    _%$%g2318523190%_))
                                            '()
                                            _%$%slot2214522183%_)
                                     '()))
                         (cons _%$%g2251622527%_
                               (cons (cons (gx#datum->syntax '#f 'quote)
                                           (cons _%$%g2226422275%_ '()))
                                     '()))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (_%$%g2254223193%_
                         (cons (gx#datum->syntax '#f 'list)
                               _%$%hd2199622040%_))))))
              (_%$%g2251423197%_
               (if (gx#stx-e _%metaclass22131%_)
                   (let* ((_%$%g2320123209%_
                           (lambda (_%$%g2320223205%_)
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax; invalid match target"
                              _%$%g2320223205%_)))
                          (_%$%g2320023228%_
                           (lambda (_%$%g2320223213%_)
                             (cons (gx#datum->syntax '#f '@list)
                                   (cons (cons (gx#datum->syntax '#f '@list)
                                               (cons 'metaclass:
                                                     (cons '::
                                                           (cons _%$%g2320223213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons '::
                                               (cons _%$%g2248822499%_
                                                     '())))))))
                     (_%$%g2320023228%_ _%metaclass22131%_))
                   _%$%g2248822499%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2248623232%_
                                             (if _%struct?22111%_
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        '@list)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@list)
                           (cons 'struct: '#t))
                     (cons ':: (cons _%$%g2246022471%_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 _%$%g2246022471%_))))))
                                  (_%$%g2245823236%_
                                   (if (gx#stx-e _%$%g2237622387%_)
                                       (cons (gx#datum->syntax '#f '@list)
                                             (cons (cons (gx#datum->syntax
                                                          '#f
                                                          '@list)
                                                         (cons 'final: '#t))
                                                   (cons '::
                                                         (cons _%$%g2243222443%_
                                                               '()))))
                                       _%$%g2243222443%_))))))
                        (_%$%g2243023240%_
                         (let ((_%$e23244%_
                                (gx#stx-getq 'properties: _%$%tl2200322063%_)))
                           (if _%$e23244%_
                               _%$e23244%_
                               (cons (gx#datum->syntax '#f '@list) '()))))))))
              (_%$%g2240223248%_
               (if (gx#stx-e _%metaclass22131%_)
                   (gx#core-quote-syntax _%metaclass22131%_)
                   '#f))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2237423252%_
                                             (gx#stx-getq
                                              'final:
                                              _%$%tl2200322063%_))))))
                                  (_%$%g2234623256%_ _%struct?22111%_)))))
                        (_%$%g2231823260%_
                         (gx#stx-map
                          gx#core-quote-syntax
                          _%$%hd2199622040%_))))))
              (_%$%g2229023264%_ (gx#core-quote-syntax _%$%hd2199322030%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%g2226223268%_
                                             (gx#stx-getq
                                              'constructor:
                                              _%$%tl2200322063%_))))))
                                  (_%$%g2223423272%_
                                   (let ((_%$e23276%_
                                          (gx#stx-getq
                                           'name:
                                           _%$%tl2200322063%_)))
                                     (if _%$e23276%_
                                         _%$e23276%_
                                         _%$%hd2199322030%_)))))))
                        (_%$%g2220623280%_
                         (let ((_%$e23284%_
                                (gx#stx-getq 'id: _%$%tl2200322063%_)))
                           (if _%$e23284%_
                               _%$e23284%_
                               (|gerbil/core/mop~MOP-1[1]#make-class-type-id|
                                _%$%hd2199322030%_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%loop2214022164%_
                                                 _%$%target2213722158%_
                                                 '()))
                                              (_%$%g2213422151%_
                                               _%$%g2213522155%_)))))
                                    (_%$%g2213422151%_ _%$%g2213522155%_)))))
                        (_%$%g2213323288%_
                         (gx#stx-map _%slot-name21979%_ _%slots22118%_)))
                      (_%$%g2198222009%_ _%$%g2198322013%_))))
              (_%$%g2198222009%_ _%$%g2198322013%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%g2198222009%_
                                               _%$%g2198322013%_))))
                                      (_%$%g2198222009%_ _%$%g2198322013%_))))
                              (_%$%g2198222009%_ _%$%g2198322013%_))))
                      (_%$%g2198222009%_ _%$%g2198322013%_)))))
          (_%$%g2198123292%_ _%stx21973%_)))))
  (define |gerbil/core/mop~MOP-1[:0:]#defstruct-type|
    (lambda (_%stx23403%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx23403%_ '#t)))
  (define |gerbil/core/mop~MOP-1[:0:]#defclass-type|
    (lambda (_%stx23406%_)
      (|gerbil/core/mop~MOP-1[1]#generate-typedef| _%stx23406%_ '#f))))

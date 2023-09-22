(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1695377619)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl44072_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp45676 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl44072_ __tmp45676))
           (let ()
             (declare (not safe))
             (table-set! _tbl44072_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44072_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44072_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44072_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl44072_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx44065_ . _args44067_)
        (let ((__tmp45678
               (lambda () (apply gxc#compile-e _stx44065_ _args44067_)))
              (__tmp45677 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp45678
           gxc#current-compile-methods
           __tmp45677))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl44062_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp45679 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl44062_ __tmp45679))
           (let ()
             (declare (not safe))
             (table-set! _tbl44062_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44062_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44062_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44062_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44062_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44062_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44062_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44062_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44062_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl44062_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44062_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl44062_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl44062_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44062_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44062_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44062_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl44062_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx44055_ . _args44057_)
        (let ((__tmp45681
               (lambda () (apply gxc#compile-e _stx44055_ _args44057_)))
              (__tmp45680 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp45681
           gxc#current-compile-methods
           __tmp45680))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl44052_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp45682 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl44052_ __tmp45682))
           (let ()
             (declare (not safe))
             (table-set! _tbl44052_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44052_ '%#call gxc#subst-object-refs-call%))
           _tbl44052_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx44045_ . _args44047_)
        (let ((__tmp45684
               (lambda () (apply gxc#compile-e _stx44045_ _args44047_)))
              (__tmp45683 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp45684
           gxc#current-compile-methods
           __tmp45683))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx40715_)
        (letrec ((_generate-method-bind40717_
                  (lambda (_$t44039_ _id44040_ _$id44041_)
                    (let ((_$tmp44043_ (make-symbol (gensym '__tmp))))
                      (let ((__tmp45729
                             (let ()
                               (declare (not safe))
                               (cons _$id44041_ '())))
                            (__tmp45685
                             (let ((__tmp45686
                                    (let ((__tmp45687
                                           (let ((__tmp45727
                                                  (let ((__tmp45728
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp45728)))
                                                 (__tmp45688
                                                  (let ((__tmp45689
                                                         (let ((__tmp45690
                                                                (let ((__tmp45691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45692
                                      (let ((__tmp45693
                                             (let ((__tmp45713
                                                    (let ((__tmp45714
                                                           (let ((__tmp45726
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$tmp44043_ '())))
                         (__tmp45715
                          (let ((__tmp45716
                                 (let ((__tmp45717
                                        (let ((__tmp45724
                                               (let ((__tmp45725
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp45725)))
                                              (__tmp45718
                                               (let ((__tmp45722
                                                      (let ((__tmp45723
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t44039_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp45723)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45719
                                                      (let ((__tmp45720
                                                             (let ((__tmp45721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id44040_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp45721))))
                (declare (not safe))
                (cons __tmp45720 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45722
                                                       __tmp45719))))
                                          (declare (not safe))
                                          (cons __tmp45724 __tmp45718))))
                                   (declare (not safe))
                                   (cons '%#call __tmp45717))))
                            (declare (not safe))
                            (cons __tmp45716 '()))))
                     (declare (not safe))
                     (cons __tmp45726 __tmp45715))))
              (declare (not safe))
              (cons __tmp45714 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45694
                                                    (let ((__tmp45695
                                                           (let ((__tmp45696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45711
                                 (let ((__tmp45712
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp44043_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp45712)))
                                (__tmp45697
                                 (let ((__tmp45709
                                        (let ((__tmp45710
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp44043_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp45710)))
                                       (__tmp45698
                                        (let ((__tmp45699
                                               (let ((__tmp45700
                                                      (let ((__tmp45707
                                                             (let ((__tmp45708
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp45708)))
                    (__tmp45701
                     (let ((__tmp45705
                            (let ((__tmp45706
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp45706)))
                           (__tmp45702
                            (let ((__tmp45703
                                   (let ((__tmp45704
                                          (let ()
                                            (declare (not safe))
                                            (cons _id44040_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp45704))))
                              (declare (not safe))
                              (cons __tmp45703 '()))))
                       (declare (not safe))
                       (cons __tmp45705 __tmp45702))))
                (declare (not safe))
                (cons __tmp45707 __tmp45701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp45700))))
                                          (declare (not safe))
                                          (cons __tmp45699 '()))))
                                   (declare (not safe))
                                   (cons __tmp45709 __tmp45698))))
                            (declare (not safe))
                            (cons __tmp45711 __tmp45697))))
                     (declare (not safe))
                     (cons '%#if __tmp45696))))
              (declare (not safe))
              (cons __tmp45695 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45713 __tmp45694))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp45693))))
                                 (declare (not safe))
                                 (cons __tmp45692 '()))))
                          (declare (not safe))
                          (cons '() __tmp45691))))
                   (declare (not safe))
                   (cons '%#lambda __tmp45690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45689 '()))))
                                             (declare (not safe))
                                             (cons __tmp45727 __tmp45688))))
                                      (declare (not safe))
                                      (cons '%#call __tmp45687))))
                               (declare (not safe))
                               (cons __tmp45686 '()))))
                        (declare (not safe))
                        (cons __tmp45729 __tmp45685)))))
                 (_generate-slot-bind40718_
                  (lambda (_$t44033_ _id44034_ _$id44035_)
                    (let ((_$tmp44037_ (make-symbol (gensym '__tmp))))
                      (let ((__tmp45774
                             (let ()
                               (declare (not safe))
                               (cons _$id44035_ '())))
                            (__tmp45730
                             (let ((__tmp45731
                                    (let ((__tmp45732
                                           (let ((__tmp45760
                                                  (let ((__tmp45761
                                                         (let ((__tmp45773
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp44037_ '())))
                       (__tmp45762
                        (let ((__tmp45763
                               (let ((__tmp45764
                                      (let ((__tmp45771
                                             (let ((__tmp45772
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp45772)))
                                            (__tmp45765
                                             (let ((__tmp45769
                                                    (let ((__tmp45770
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t44033_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp45770)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45766
                                                    (let ((__tmp45767
                                                           (let ((__tmp45768
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id44034_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp45768))))
              (declare (not safe))
              (cons __tmp45767 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45769 __tmp45766))))
                                        (declare (not safe))
                                        (cons __tmp45771 __tmp45765))))
                                 (declare (not safe))
                                 (cons '%#call __tmp45764))))
                          (declare (not safe))
                          (cons __tmp45763 '()))))
                   (declare (not safe))
                   (cons __tmp45773 __tmp45762))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45761 '())))
                                                 (__tmp45733
                                                  (let ((__tmp45734
                                                         (let ((__tmp45735
                                                                (let ((__tmp45758
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45759
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp44037_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp45759)))
                              (__tmp45736
                               (let ((__tmp45748
                                      (let ((__tmp45749
                                             (let ((__tmp45756
                                                    (let ((__tmp45757
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '##fx+
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp45757)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45750
                                                    (let ((__tmp45754
                                                           (let ((__tmp45755
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp44037_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp45755)))
                  (__tmp45751
                   (let ((__tmp45752
                          (let ((__tmp45753
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp45753))))
                     (declare (not safe))
                     (cons __tmp45752 '()))))
              (declare (not safe))
              (cons __tmp45754 __tmp45751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45756 __tmp45750))))
                                        (declare (not safe))
                                        (cons '%#call __tmp45749)))
                                     (__tmp45737
                                      (let ((__tmp45738
                                             (let ((__tmp45739
                                                    (let ((__tmp45746
                                                           (let ((__tmp45747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp45747)))
                  (__tmp45740
                   (let ((__tmp45744
                          (let ((__tmp45745
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp45745)))
                         (__tmp45741
                          (let ((__tmp45742
                                 (let ((__tmp45743
                                        (let ()
                                          (declare (not safe))
                                          (cons _id44034_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp45743))))
                            (declare (not safe))
                            (cons __tmp45742 '()))))
                     (declare (not safe))
                     (cons __tmp45744 __tmp45741))))
              (declare (not safe))
              (cons __tmp45746 __tmp45740))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp45739))))
                                        (declare (not safe))
                                        (cons __tmp45738 '()))))
                                 (declare (not safe))
                                 (cons __tmp45748 __tmp45737))))
                          (declare (not safe))
                          (cons __tmp45758 __tmp45736))))
                   (declare (not safe))
                   (cons '%#if __tmp45735))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45734 '()))))
                                             (declare (not safe))
                                             (cons __tmp45760 __tmp45733))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp45732))))
                               (declare (not safe))
                               (cons __tmp45731 '()))))
                        (declare (not safe))
                        (cons __tmp45774 __tmp45730)))))
                 (_generate-class-check-bind40719_
                  (lambda (_$t44029_ _class-type44030_ _$class-type44031_)
                    (let ((__tmp45786
                           (let ()
                             (declare (not safe))
                             (cons _$class-type44031_ '())))
                          (__tmp45775
                           (let ((__tmp45776
                                  (let ((__tmp45777
                                         (let ((__tmp45784
                                                (let ((__tmp45785
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp45785)))
                                               (__tmp45778
                                                (let ((__tmp45782
                                                       (let ((__tmp45783
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type44030_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45783)))
              (__tmp45779
               (let ((__tmp45780
                      (let ((__tmp45781
                             (let ()
                               (declare (not safe))
                               (cons _$t44029_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp45781))))
                 (declare (not safe))
                 (cons __tmp45780 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45782
                                                        __tmp45779))))
                                           (declare (not safe))
                                           (cons __tmp45784 __tmp45778))))
                                    (declare (not safe))
                                    (cons '%#call __tmp45777))))
                             (declare (not safe))
                             (cons __tmp45776 '()))))
                      (declare (not safe))
                      (cons __tmp45786 __tmp45775))))
                 (_generate-struct-check-bind40720_
                  (lambda (_$t44025_ _class-type44026_ _$class-type44027_)
                    (let ((__tmp45798
                           (let ()
                             (declare (not safe))
                             (cons _$class-type44027_ '())))
                          (__tmp45787
                           (let ((__tmp45788
                                  (let ((__tmp45789
                                         (let ((__tmp45796
                                                (let ((__tmp45797
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp45797)))
                                               (__tmp45790
                                                (let ((__tmp45794
                                                       (let ((__tmp45795
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type44026_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45795)))
              (__tmp45791
               (let ((__tmp45792
                      (let ((__tmp45793
                             (let ()
                               (declare (not safe))
                               (cons _$t44025_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp45793))))
                 (declare (not safe))
                 (cons __tmp45792 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45794
                                                        __tmp45791))))
                                           (declare (not safe))
                                           (cons __tmp45796 __tmp45790))))
                                    (declare (not safe))
                                    (cons '%#call __tmp45789))))
                             (declare (not safe))
                             (cons __tmp45788 '()))))
                      (declare (not safe))
                      (cons __tmp45798 __tmp45787))))
                 (_generate-specializer-impl40721_
                  (lambda (_$t43974_
                           _methods-bind43975_
                           _slots-bind43976_
                           _class-check-bind43977_
                           _struct-check-bind43978_
                           _specializer-impl43979_
                           _lifted-specializer-id43980_
                           _unchecked-specializer-impl43981_)
                    (let ((__tmp45799
                           (let ((__tmp45800
                                  (let ((__tmp45825
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t43974_ '())))
                                        (__tmp45801
                                         (let ((__tmp45802
                                                (let ((__tmp45803
                                                       (let ((__tmp45822
                                                              (let ((__tmp45823
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45824
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind43978_
                                              _class-check-bind43977_))))
                               (declare (not safe))
                               (foldr1 cons __tmp45824 _slots-bind43976_))))
                        (declare (not safe))
                        (foldr1 cons __tmp45823 _methods-bind43975_)))
                     (__tmp45804
                      (let ((__tmp45805
                             (if (or _lifted-specializer-id43980_
                                     _unchecked-specializer-impl43981_)
                                 (let* ((_$specializer43986_
                                         (make-symbol (gensym '__specializer)))
                                        (__tmp45806
                                         (let ((__tmp45818
                                                (let ((__tmp45819
                                                       (let ((__tmp45821
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer43986_ '())))
                     (__tmp45820
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl43979_ '()))))
                 (declare (not safe))
                 (cons __tmp45821 __tmp45820))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45819 '())))
                                               (__tmp45807
                                                (let ((__tmp45808
                                                       (let _recur43988_ ((_rest43990_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (map caar _struct-check-bind43978_)))
                 (let* ((_rest4399143999_ _rest43990_)
                        (_else4399344007_
                         (lambda ()
                           (if _lifted-specializer-id43980_
                               (let ((__tmp45809
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id43980_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp45809))
                               _unchecked-specializer-impl43981_)))
                        (_K4399544013_
                         (lambda (_rest44010_ _checkq44011_)
                           (let ((__tmp45810
                                  (let ((__tmp45816
                                         (let ((__tmp45817
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq44011_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp45817)))
                                        (__tmp45811
                                         (let ((__tmp45815
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur43988_ _rest44010_)))
                                               (__tmp45812
                                                (let ((__tmp45813
                                                       (let ((__tmp45814
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer43986_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45814))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45813 '()))))
                                           (declare (not safe))
                                           (cons __tmp45815 __tmp45812))))
                                    (declare (not safe))
                                    (cons __tmp45816 __tmp45811))))
                             (declare (not safe))
                             (cons '%#if __tmp45810)))))
                   (if (let () (declare (not safe)) (##pair? _rest4399143999_))
                       (let ((_hd4399644016_
                              (let ()
                                (declare (not safe))
                                (##car _rest4399143999_)))
                             (_tl4399744018_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest4399143999_))))
                         (let* ((_checkq44021_ _hd4399644016_)
                                (_rest44023_ _tl4399744018_))
                           (declare (not safe))
                           (_K4399544013_ _rest44023_ _checkq44021_)))
                       (let () (declare (not safe)) (_else4399344007_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45808 '()))))
                                           (declare (not safe))
                                           (cons __tmp45818 __tmp45807))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp45806))
                                 _specializer-impl43979_)))
                        (declare (not safe))
                        (cons __tmp45805 '()))))
                 (declare (not safe))
                 (cons __tmp45822 __tmp45804))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp45803))))
                                           (declare (not safe))
                                           (cons __tmp45802 '()))))
                                    (declare (not safe))
                                    (cons __tmp45825 __tmp45801))))
                             (declare (not safe))
                             (cons '%#lambda __tmp45800))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45799 _stx40715_))))
                 (_generate-specializer-def40722_
                  (lambda (_id43968_
                           _specializer-id43969_
                           _specializer-impl43970_
                           _lifted-specializer-id43971_
                           _unchecked-specializer-impl43972_)
                    (let ((__tmp45826
                           (let ((__tmp45827
                                  (let ((__tmp45828
                                         (let ((__tmp45848
                                                (let ((__tmp45849
                                                       (let ((__tmp45850
                                                              (let ((__tmp45852
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id43969_ '())))
                            (__tmp45851
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl43970_ '()))))
                        (declare (not safe))
                        (cons __tmp45852 __tmp45851))))
                 (declare (not safe))
                 (cons '%#define-values __tmp45850))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp45849
                                                   _stx40715_)))
                                               (__tmp45829
                                                (let ((__tmp45836
                                                       (let ((__tmp45837
                                                              (let ((__tmp45838
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45839
                                    (let ((__tmp45846
                                           (let ((__tmp45847
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp45847)))
                                          (__tmp45840
                                           (let ((__tmp45844
                                                  (let ((__tmp45845
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id43968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp45845)))
                                                 (__tmp45841
                                                  (let ((__tmp45842
                                                         (let ((__tmp45843
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id43969_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp45843))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45842 '()))))
                                             (declare (not safe))
                                             (cons __tmp45844 __tmp45841))))
                                      (declare (not safe))
                                      (cons __tmp45846 __tmp45840))))
                               (declare (not safe))
                               (cons '%#call __tmp45839))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp45838 _stx40715_))))
                 (declare (not safe))
                 (cons __tmp45837 '())))
              (__tmp45830
               (if _lifted-specializer-id43971_
                   (let ((__tmp45831
                          (let ((__tmp45832
                                 (let ((__tmp45833
                                        (let ((__tmp45835
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id43971_
                                                       '())))
                                              (__tmp45834
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl43972_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp45835 __tmp45834))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp45833))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp45832 _stx40715_))))
                     (declare (not safe))
                     (cons __tmp45831 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp45836
                                                          __tmp45830))))
                                           (declare (not safe))
                                           (cons __tmp45848 __tmp45829))))
                                    (declare (not safe))
                                    (cons _stx40715_ __tmp45828))))
                             (declare (not safe))
                             (cons '%#begin __tmp45827))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45826 _stx40715_)))))
          (let* ((___stx4416144162_ _stx40715_)
                 (_g4072540745_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx4416144162_)))))
            (let ((___kont4416344164_
                   (lambda (_L40789_ _L40790_)
                     (let ((_method-calls40809_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs40810_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check40811_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check40812_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert40813_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty40814_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?40816_
                                 (lambda ()
                                   (if (let ((__tmp45857
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls40809_))))
                                         (declare (not safe))
                                         (fxzero? __tmp45857))
                                       (if (let ((__tmp45856
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs40810_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45856))
                                           (if (let ((__tmp45855
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check40811_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp45855))
                                               (if (let ((__tmp45854
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check40812_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp45854))
                                                   (let ((__tmp45853
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert40813_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp45853))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?40817_
                                 (lambda ()
                                   (let ((_$e43961_
                                          (let ((__tmp45858
                                                 (let ((__tmp45859
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check40812_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp45859))))
                                            (declare (not safe))
                                            (not __tmp45858))))
                                     (if _$e43961_
                                         _$e43961_
                                         (let ((__tmp45860
                                                (let ((__tmp45861
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert40813_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp45861))))
                                           (declare (not safe))
                                           (not __tmp45860))))))
                                (_lift-unchecked-specializer?40818_
                                 (lambda ()
                                   (if (let ((__tmp45864
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls40809_))))
                                         (declare (not safe))
                                         (fxzero? __tmp45864))
                                       (if (let ((__tmp45863
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs40810_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45863))
                                           (let ((__tmp45862
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check40811_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45862))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L40789_))
                             (let* ((___stx4407544076_ _L40789_)
                                    (_g4133141349_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4407544076_)))))
                               (let ((___kont4407744078_
                                      (lambda (_L41385_ _L41386_ _L41387_)
                                        (for-each
                                         (lambda (_g4140241404_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g4140241404_
                                              _L41387_
                                              _method-calls40809_
                                              _slot-refs40810_
                                              _class-type-check40811_
                                              _struct-type-check40812_
                                              _struct-type-assert40813_)))
                                         _L41385_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?40816_))
                                            _stx40715_
                                            (let* ((_specializer-id41413_
                                                    (let* ((_id41407_
                                                            (make-symbol
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L40790_))
                     '"::specialize"))
                   (_specializer-id41410_
                    (let ((__tmp45986
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx40715_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id41407_ __tmp45986))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id41410_))
              _specializer-id41410_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id41420_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?40818_))
                                                        (let* ((_id41415_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (gx#stx-e _L40790_))
                         '"::specialize::unchecked"))
                       (_lifted-specializer-id41417_
                        (let ((__tmp45987
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx40715_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id41415_ __tmp45987))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id41417_))
                  _lifted-specializer-id41417_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t41422_
                                                    (make-symbol
                                                     (gensym '__t)))
                                                   (_methods41424_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls40809_)))
                                                   (_$methods41428_
                                                    (map (lambda (_id41426_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id41426_)))
                                                         _methods41424_))
                                                   (_g45988_
                                                    (for-each
                                                     (lambda (_g4142941432_
                                                              _g4143041434_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls40809_
                                                          _g4142941432_
                                                          _g4143041434_)))
                                                     _methods41424_
                                                     _$methods41428_))
                                                   (_methods-bind41445_
                                                    (map (lambda (_g4143741440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4143841442_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind40717_
                      _$t41422_
                      _g4143741440_
                      _g4143841442_)))
                 _methods41424_
                 _$methods41428_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots41447_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs40810_)))
                                                   (_$slots41451_
                                                    (map (lambda (_id41449_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id41449_)))
                                                         _slots41447_))
                                                   (_g45989_
                                                    (for-each
                                                     (lambda (_g4145241455_
                                                              _g4145341457_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs40810_
                                                          _g4145241455_
                                                          _g4145341457_)))
                                                     _slots41447_
                                                     _$slots41451_))
                                                   (_slots-bind41468_
                                                    (map (lambda (_g4146041463_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4146141465_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind40718_
                      _$t41422_
                      _g4146041463_
                      _g4146141465_)))
                 _slots41447_
                 _$slots41451_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check41470_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check40811_)))
                                                   (_$class-check41473_
                                                    (map (lambda (_g45990_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _class-check41470_))
                                                   (_g45991_
                                                    (for-each
                                                     (lambda (_g4147441477_
                                                              _g4147541479_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check40811_
                                                          _g4147441477_
                                                          _g4147541479_)))
                                                     _class-check41470_
                                                     _$class-check41473_))
                                                   (_class-check-bind41490_
                                                    (map (lambda (_g4148241485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4148341487_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind40719_
                      _$t41422_
                      _g4148241485_
                      _g4148341487_)))
                 _class-check41470_
                 _$class-check41473_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all41492_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check40812_
                                                       _struct-type-assert40813_)))
                                                   (_struct-check41494_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all41492_)))
                                                   (_$struct-check41497_
                                                    (map (lambda (_g45992_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _struct-check41494_))
                                                   (_g45993_
                                                    (for-each
                                                     (lambda (_g4149841501_
                                                              _g4149941503_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all41492_
                                                          _g4149841501_
                                                          _g4149941503_)))
                                                     _struct-check41494_
                                                     _$struct-check41497_))
                                                   (_struct-check-bind41514_
                                                    (map (lambda (_g4150641509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4150741511_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind40720_
                      _$t41422_
                      _g4150641509_
                      _g4150741511_)))
                 _struct-check41494_
                 _$struct-check41497_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl41525_
                                                    (lambda (_struct-type-check141516_
                                                             _struct-type-check241517_)
                                                      (let* ((_specializer-body41523_
                                                              (map (lambda (_g4151841520_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g4151841520_
                                _L41387_
                                _$t41422_
                                _method-calls40809_
                                _slot-refs40810_
                                _class-type-check40811_
                                _struct-type-check141516_
                                _struct-type-check241517_)))
                           _L41385_))
                     (__tmp45994
                      (let ((__tmp45995
                             (let ((__tmp45996
                                    (let ()
                                      (declare (not safe))
                                      (cons _L41387_ _L41386_))))
                               (declare (not safe))
                               (cons __tmp45996 _specializer-body41523_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp45995))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp45994 _stx40715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl41527_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl41525_
                                                       _struct-check-all41492_
                                                       _empty40814_)))
                                                   (_unchecked-specializer-impl41529_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?40817_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl41525_
                                                           _empty40814_
                                                           _struct-check-all41492_))
                                                        '#f))
                                                   (_specializer-impl41531_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl40721_
                                                       _$t41422_
                                                       _methods-bind41445_
                                                       _slots-bind41468_
                                                       _class-check-bind41490_
                                                       _struct-check-bind41514_
                                                       _specializer-impl41527_
                                                       _lifted-specializer-id41420_
                                                       _unchecked-specializer-impl41529_))))
                                              (let ((__tmp45998
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L40790_)))
                                                    (__tmp45997
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id41413_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp45998
                                                 '" => "
                                                 __tmp45997))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def40722_
                                                 _L40790_
                                                 _specializer-id41413_
                                                 _specializer-impl41531_
                                                 _lifted-specializer-id41420_
                                                 _unchecked-specializer-impl41529_))))))
                                     (___kont4407944080_
                                      (lambda () _stx40715_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx4407544076_))
                                     (let ((_e4133841361_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx4407544076_))))
                                       (let ((_tl4133641366_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4133841361_)))
                                             (_hd4133741364_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4133841361_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl4133641366_))
                                             (let ((_e4134141369_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl4133641366_))))
                                               (let ((_tl4133941374_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4134141369_)))
                                                     (_hd4134041372_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4134141369_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd4134041372_))
                                                     (let ((_e4134441377_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd4134041372_))))
                                                       (let ((_tl4134241382_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4134441377_)))
                     (_hd4134341380_
                      (let () (declare (not safe)) (##car _e4134441377_))))
                 (___kont4407744078_
                  _tl4133941374_
                  _tl4134241382_
                  _hd4134341380_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4407944080_))))
                                             (___kont4407944080_))))
                                     (___kont4407944080_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L40789_))
                                 (let* ((_g4153741556_
                                         (lambda (_g4153841553_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g4153841553_))))
                                        (_g4153641907_
                                         (lambda (_g4153841559_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _g4153841559_))
                                               (let ((_e4154241561_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g4153841559_))))
                                                 (let ((_hd4154141564_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4154241561_)))
                                                       (_tl4154041566_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4154241561_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl4154041566_))
                                                       (let ((_g45969_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl4154041566_ '0))))
                 (begin
                   (let ((_g45970_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g45969_)
                                (##vector-length _g45969_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g45970_ 2)))
                         (error "Context expects 2 values" _g45970_)))
                   (let ((_target4154341569_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g45969_ 0)))
                         (_tl4154541571_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g45969_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl4154541571_))
                         (letrec ((_loop4154641574_
                                   (lambda (_hd4154441577_ _clause4155041579_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd4154441577_))
                                         (let ((_e4154741582_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _hd4154441577_))))
                                           (let ((_lp-hd4154841585_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4154741582_)))
                                                 (_lp-tl4154941587_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4154741582_))))
                                             (let ((__tmp45985
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd4154841585_
                                                            _clause4155041579_))))
                                               (declare (not safe))
                                               (_loop4154641574_
                                                _lp-tl4154941587_
                                                __tmp45985))))
                                         (let ((_clause4155141590_
                                                (reverse _clause4155041579_)))
                                           ((lambda (_L41593_)
                                              (for-each
                                               (lambda (_clause41606_)
                                                 (let* ((___stx4410144102_
                                                         _clause41606_)
                                                        (_g4160941624_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4410144102_)))))
                                                   (let ((___kont4410344104_
                                                          (lambda (_L41652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L41653_
                           _L41654_)
                    (for-each
                     (lambda (_g4166941671_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g4166941671_
                          _L41654_
                          _method-calls40809_
                          _slot-refs40810_
                          _class-type-check40811_
                          _struct-type-check40812_
                          _struct-type-assert40813_)))
                     _L41652_)))
                 (___kont4410544106_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx4410144102_))
                                                         (let ((_e4161641636_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx4410144102_))))
                   (let ((_tl4161441641_
                          (let () (declare (not safe)) (##cdr _e4161641636_)))
                         (_hd4161541639_
                          (let () (declare (not safe)) (##car _e4161641636_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd4161541639_))
                         (let ((_e4161941644_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd4161541639_))))
                           (let ((_tl4161741649_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4161941644_)))
                                 (_hd4161841647_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4161941644_))))
                             (___kont4410344104_
                              _tl4161441641_
                              _tl4161741649_
                              _hd4161841647_)))
                         (___kont4410544106_))))
                 (___kont4410544106_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp45971
                                                      (lambda (_g4167641679_
                                                               _g4167741681_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4167641679_
                                                                _g4167741681_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp45971
                                                         '()
                                                         _L41593_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?40816_))
                                                  _stx40715_
                                                  (let* ((_specializer-id41690_
                                                          (let* ((_id41684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40790_))
                           '"::specialize"))
                         (_specializer-id41687_
                          (let ((__tmp45972
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40715_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id41684_ __tmp45972))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id41687_))
                    _specializer-id41687_))
                 (_lifted-specializer-id41697_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?40818_))
                      (let* ((_id41692_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L40790_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id41694_
                              (let ((__tmp45973
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx40715_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id41692_
                                 __tmp45973))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id41694_))
                        _lifted-specializer-id41694_)
                      '#f))
                 (_$t41699_ (make-symbol (gensym '__t)))
                 (_methods41701_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls40809_)))
                 (_$methods41705_
                  (map (lambda (_id41703_)
                         (make-symbol '"__" (gensym _id41703_)))
                       _methods41701_))
                 (_g45974_
                  (for-each
                   (lambda (_g4170641709_ _g4170741711_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls40809_
                        _g4170641709_
                        _g4170741711_)))
                   _methods41701_
                   _$methods41705_))
                 (_methods-bind41722_
                  (map (lambda (_g4171441717_ _g4171541719_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind40717_
                            _$t41699_
                            _g4171441717_
                            _g4171541719_)))
                       _methods41701_
                       _$methods41705_))
                 (_slots41724_
                  (let () (declare (not safe)) (hash-keys _slot-refs40810_)))
                 (_$slots41728_
                  (map (lambda (_id41726_)
                         (make-symbol '"__" (gensym _id41726_)))
                       _slots41724_))
                 (_g45975_
                  (for-each
                   (lambda (_g4172941732_ _g4173041734_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs40810_
                        _g4172941732_
                        _g4173041734_)))
                   _slots41724_
                   _$slots41728_))
                 (_slots-bind41745_
                  (map (lambda (_g4173741740_ _g4173841742_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind40718_
                            _$t41699_
                            _g4173741740_
                            _g4173841742_)))
                       _slots41724_
                       _$slots41728_))
                 (_class-check41747_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check40811_)))
                 (_$class-check41750_
                  (map (lambda (_g45976_) (make-symbol (gensym '__class)))
                       _class-check41747_))
                 (_g45977_
                  (for-each
                   (lambda (_g4175141754_ _g4175241756_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check40811_
                        _g4175141754_
                        _g4175241756_)))
                   _class-check41747_
                   _$class-check41750_))
                 (_class-check-bind41767_
                  (map (lambda (_g4175941762_ _g4176041764_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind40719_
                            _$t41699_
                            _g4175941762_
                            _g4176041764_)))
                       _class-check41747_
                       _$class-check41750_))
                 (_struct-check-all41769_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check40812_
                     _struct-type-assert40813_)))
                 (_struct-check41771_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all41769_)))
                 (_$struct-check41774_
                  (map (lambda (_g45978_) (make-symbol (gensym '__class)))
                       _struct-check41771_))
                 (_g45979_
                  (for-each
                   (lambda (_g4177541778_ _g4177641780_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all41769_
                        _g4177541778_
                        _g4177641780_)))
                   _struct-check41771_
                   _$struct-check41774_))
                 (_struct-check-bind41791_
                  (map (lambda (_g4178341786_ _g4178441788_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind40720_
                            _$t41699_
                            _g4178341786_
                            _g4178441788_)))
                       _struct-check41771_
                       _$struct-check41774_))
                 (_make-specializer-impl41898_
                  (lambda (_struct-type-check141793_ _struct-type-check241794_)
                    (let* ((_specializer-clauses41896_
                            (map (lambda (_clause41796_)
                                   (let* ((___stx4412144122_ _clause41796_)
                                          (_g4179941814_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx4412144122_)))))
                                     (let ((___kont4412344124_
                                            (lambda (_L41842_
                                                     _L41843_
                                                     _L41844_)
                                              (let* ((_body41884_
                                                      (map (lambda (_g4187941881_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g4187941881_
                        _L41844_
                        _$t41699_
                        _method-calls40809_
                        _slot-refs40810_
                        _class-type-check40811_
                        _struct-type-check141793_
                        _struct-type-check241794_)))
                   _L41842_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45980
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L41844_
                                                              _L41843_))))
                                                (declare (not safe))
                                                (cons __tmp45980
                                                      _body41884_))))
                                           (___kont4412544126_
                                            (lambda () _clause41796_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? ___stx4412144122_))
                                           (let ((_e4180641826_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx4412144122_))))
                                             (let ((_tl4180441831_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4180641826_)))
                                                   (_hd4180541829_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4180641826_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd4180541829_))
                                                   (let ((_e4180941834_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd4180541829_))))
                                                     (let ((_tl4180741839_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4180941834_)))
                                                           (_hd4180841837_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4180941834_))))
                                                       (___kont4412344124_
                                                        _tl4180441831_
                                                        _tl4180741839_
                                                        _hd4180841837_)))
                                                   (___kont4412544126_))))
                                           (___kont4412544126_)))))
                                 (let ((__tmp45981
                                        (lambda (_g4188841891_ _g4188941893_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4188841891_
                                                  _g4188941893_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp45981 '() _L41593_))))
                           (__tmp45982
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses41896_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45982 _stx40715_))))
                 (_specializer-impl41900_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl41898_
                     _struct-check-all41769_
                     _empty40814_)))
                 (_unchecked-specializer-impl41902_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40817_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl41898_
                         _empty40814_
                         _struct-check-all41769_))
                      '#f))
                 (_specializer-impl41904_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl40721_
                     _$t41699_
                     _methods-bind41722_
                     _slots-bind41745_
                     _class-check-bind41767_
                     _struct-check-bind41791_
                     _specializer-impl41900_
                     _lifted-specializer-id41697_
                     _unchecked-specializer-impl41902_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp45984
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L40790_)))
                                                          (__tmp45983
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id41690_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp45984
                                                       '" => "
                                                       __tmp45983))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def40722_
                                                       _L40790_
                                                       _specializer-id41690_
                                                       _specializer-impl41904_
                                                       _lifted-specializer-id41697_
                                                       _unchecked-specializer-impl41902_)))))
                                            _clause4155141590_))))))
                           (let ()
                             (declare (not safe))
                             (_loop4154641574_ _target4154341569_ '())))
                         (let ()
                           (declare (not safe))
                           (_g4153741556_ _g4153841559_))))))
               (let () (declare (not safe)) (_g4153741556_ _g4153841559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4153741556_
                                                  _g4153841559_))))))
                                   (declare (not safe))
                                   (_g4153641907_ _L40789_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L40789_))
                                     (let* ((_g4191041940_
                                             (lambda (_g4191141937_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g4191141937_))))
                                            (_g4190942628_
                                             (lambda (_g4191141943_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4191141943_))
                                                   (let ((_e4191741945_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4191141943_))))
                                                     (let ((_hd4191641948_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4191741945_)))
                                                           (_tl4191541950_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4191741945_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4191541950_))
                                                           (let ((_e4192041953_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4191541950_))))
                     (let ((_hd4191941956_
                            (let ()
                              (declare (not safe))
                              (##car _e4192041953_)))
                           (_tl4191841958_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4192041953_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4191941956_))
                           (let ((_e4192341961_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4191941956_))))
                             (let ((_hd4192241964_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4192341961_)))
                                   (_tl4192141966_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4192341961_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4192241964_))
                                   (let ((_e4192641969_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4192241964_))))
                                     (let ((_hd4192541972_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4192641969_)))
                                           (_tl4192441974_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4192641969_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd4192541972_))
                                           (let ((_e4192941977_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd4192541972_))))
                                             (let ((_hd4192841980_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4192941977_)))
                                                   (_tl4192741982_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4192941977_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4192741982_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl4192441974_))
                                                       (let ((_e4193241985_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl4192441974_))))
                 (let ((_hd4193141988_
                        (let () (declare (not safe)) (##car _e4193241985_)))
                       (_tl4193041990_
                        (let () (declare (not safe)) (##cdr _e4193241985_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4193041990_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4192141966_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4191841958_))
                               (let ((_e4193541993_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4191841958_))))
                                 (let ((_hd4193441996_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4193541993_)))
                                       (_tl4193341998_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4193541993_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4193341998_))
                                       ((lambda (_L42001_ _L42002_ _L42003_)
                                          (let* ((_g4202642044_
                                                  (lambda (_g4202742041_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g4202742041_))))
                                                 (_g4202542095_
                                                  (lambda (_g4202742047_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4202742047_))
                                                        (let ((_e4203342049_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4202742047_))))
                  (let ((_hd4203242052_
                         (let () (declare (not safe)) (##car _e4203342049_)))
                        (_tl4203142054_
                         (let () (declare (not safe)) (##cdr _e4203342049_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl4203142054_))
                        (let ((_e4203642057_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl4203142054_))))
                          (let ((_hd4203542060_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4203642057_)))
                                (_tl4203442062_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4203642057_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd4203542060_))
                                (let ((_e4203942065_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd4203542060_))))
                                  (let ((_hd4203842068_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4203942065_)))
                                        (_tl4203742070_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4203942065_))))
                                    ((lambda (_L42073_ _L42074_ _L42075_)
                                       (for-each
                                        (lambda (_g4209042092_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g4209042092_
                                             _L42075_
                                             _method-calls40809_
                                             _slot-refs40810_
                                             _class-type-check40811_
                                             _struct-type-check40812_
                                             _struct-type-assert40813_)))
                                        _L42073_))
                                     _tl4203442062_
                                     _tl4203742070_
                                     _hd4203842068_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4202642044_ _g4202742047_)))))
                        (let ()
                          (declare (not safe))
                          (_g4202642044_ _g4202742047_)))))
                (let () (declare (not safe)) (_g4202642044_ _g4202742047_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4202542095_ _L42002_))
                                          (let* ((_g4209842117_
                                                  (lambda (_g4209942114_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g4209942114_))))
                                                 (_g4209742236_
                                                  (lambda (_g4209942120_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4209942120_))
                                                        (let ((_e4210342122_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4209942120_))))
                  (let ((_hd4210242125_
                         (let () (declare (not safe)) (##car _e4210342122_)))
                        (_tl4210142127_
                         (let () (declare (not safe)) (##cdr _e4210342122_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4210142127_))
                        (let ((_g45939_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl4210142127_ '0))))
                          (begin
                            (let ((_g45940_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g45939_)
                                         (##vector-length _g45939_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g45940_ 2)))
                                  (error "Context expects 2 values" _g45940_)))
                            (let ((_target4210442130_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g45939_ 0)))
                                  (_tl4210642132_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g45939_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl4210642132_))
                                  (letrec ((_loop4210742135_
                                            (lambda (_hd4210542138_
                                                     _clause4211142140_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd4210542138_))
                                                  (let ((_e4210842143_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd4210542138_))))
                                                    (let ((_lp-hd4210942146_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4210842143_)))
                                                          (_lp-tl4211042148_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4210842143_))))
                                                      (let ((__tmp45942
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd4210942146_ _clause4211142140_))))
                (declare (not safe))
                (_loop4210742135_ _lp-tl4211042148_ __tmp45942))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause4211242151_
                                                         (reverse _clause4211142140_)))
                                                    ((lambda (_L42154_)
                                                       (for-each
                                                        (lambda (_clause42167_)
                                                          (let* ((_g4216942184_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g4217042181_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4217042181_))))
                         (_g4216842226_
                          (lambda (_g4217042187_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g4217042187_))
                                (let ((_e4217642189_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g4217042187_))))
                                  (let ((_hd4217542192_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4217642189_)))
                                        (_tl4217442194_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4217642189_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd4217542192_))
                                        (let ((_e4217942197_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd4217542192_))))
                                          (let ((_hd4217842200_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4217942197_)))
                                                (_tl4217742202_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4217942197_))))
                                            ((lambda (_L42205_
                                                      _L42206_
                                                      _L42207_)
                                               (for-each
                                                (lambda (_g4222142223_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g4222142223_
                                                     _L42207_
                                                     _method-calls40809_
                                                     _slot-refs40810_
                                                     _class-type-check40811_
                                                     _struct-type-check40812_
                                                     _struct-type-assert40813_)))
                                                _L42205_))
                                             _tl4217442194_
                                             _tl4217742202_
                                             _hd4217842200_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4216942184_ _g4217042187_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4216942184_ _g4217042187_))))))
                    (declare (not safe))
                    (_g4216842226_ _clause42167_)))
                (let ((__tmp45941
                       (lambda (_g4222842231_ _g4222942233_)
                         (let ()
                           (declare (not safe))
                           (cons _g4222842231_ _g4222942233_)))))
                  (declare (not safe))
                  (foldr1 __tmp45941 '() _L42154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause4211242151_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop4210742135_
                                       _target4210442130_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g4209842117_ _g4209942120_))))))
                        (let ()
                          (declare (not safe))
                          (_g4209842117_ _g4209942120_)))))
                (let () (declare (not safe)) (_g4209842117_ _g4209942120_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4209742236_ _L42001_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?40816_))
                                              _stx40715_
                                              (let* ((_specializer-id42245_
                                                      (let* ((_id42239_
                                                              (make-symbol
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L40790_))
                       '"::specialize"))
                     (_specializer-id42242_
                      (let ((__tmp45943
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx40715_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id42239_ __tmp45943))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id42242_))
                _specializer-id42242_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id42252_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?40818_))
                                                          (let* ((_id42247_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40790_))
                           '"::specialize::unchecked"))
                         (_lifted-specializer-id42249_
                          (let ((__tmp45944
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40715_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id42247_ __tmp45944))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id42249_))
                    _lifted-specializer-id42249_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t42254_
                                                      (make-symbol
                                                       (gensym '__t)))
                                                     (_methods42256_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls40809_)))
                                                     (_$methods42260_
                                                      (map (lambda (_id42258_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id42258_)))
                                                           _methods42256_))
                                                     (_g45945_
                                                      (for-each
                                                       (lambda (_g4226142264_
                                                                _g4226242266_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls40809_
                                                            _g4226142264_
                                                            _g4226242266_)))
                                                       _methods42256_
                                                       _$methods42260_))
                                                     (_methods-bind42277_
                                                      (map (lambda (_g4226942272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4227042274_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind40717_
                        _$t42254_
                        _g4226942272_
                        _g4227042274_)))
                   _methods42256_
                   _$methods42260_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots42279_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs40810_)))
                                                     (_$slots42283_
                                                      (map (lambda (_id42281_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id42281_)))
                                                           _slots42279_))
                                                     (_g45946_
                                                      (for-each
                                                       (lambda (_g4228442287_
                                                                _g4228542289_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs40810_
                                                            _g4228442287_
                                                            _g4228542289_)))
                                                       _slots42279_
                                                       _$slots42283_))
                                                     (_slots-bind42300_
                                                      (map (lambda (_g4229242295_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4229342297_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind40718_
                        _$t42254_
                        _g4229242295_
                        _g4229342297_)))
                   _slots42279_
                   _$slots42283_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check42302_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check40811_)))
                                                     (_$class-check42305_
                                                      (map (lambda (_g45947_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _class-check42302_))
                                                     (_g45948_
                                                      (for-each
                                                       (lambda (_g4230642309_
                                                                _g4230742311_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check40811_
                                                            _g4230642309_
                                                            _g4230742311_)))
                                                       _class-check42302_
                                                       _$class-check42305_))
                                                     (_class-check-bind42322_
                                                      (map (lambda (_g4231442317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4231542319_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind40719_
                        _$t42254_
                        _g4231442317_
                        _g4231542319_)))
                   _class-check42302_
                   _$class-check42305_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all42324_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check40812_
                                                         _struct-type-assert40813_)))
                                                     (_struct-check42326_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all42324_)))
                                                     (_$struct-check42329_
                                                      (map (lambda (_g45949_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _struct-check42326_))
                                                     (_g45950_
                                                      (for-each
                                                       (lambda (_g4233042333_
                                                                _g4233142335_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all42324_
                                                            _g4233042333_
                                                            _g4233142335_)))
                                                       _struct-check42326_
                                                       _$struct-check42329_))
                                                     (_struct-check-bind42346_
                                                      (map (lambda (_g4233842341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4233942343_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind40720_
                        _$t42254_
                        _g4233842341_
                        _g4233942343_)))
                   _struct-check42326_
                   _$struct-check42329_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr42445_
                                                      (lambda (_struct-type-check142348_
                                                               _struct-type-check242349_)
                                                        (let* ((_g4235142369_
                                                                (lambda (_g4235242366_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4235242366_))))
                       (_g4235042442_
                        (lambda (_g4235242372_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4235242372_))
                              (let ((_e4235842374_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4235242372_))))
                                (let ((_hd4235742377_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4235842374_)))
                                      (_tl4235642379_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4235842374_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4235642379_))
                                      (let ((_e4236142382_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4235642379_))))
                                        (let ((_hd4236042385_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4236142382_)))
                                              (_tl4235942387_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4236142382_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd4236042385_))
                                              (let ((_e4236442390_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd4236042385_))))
                                                (let ((_hd4236342393_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4236442390_)))
                                                      (_tl4236242395_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4236442390_))))
                                                  ((lambda (_L42398_
                                                            _L42399_
                                                            _L42400_)
                                                     (let* ((_body42440_
                                                             (map (lambda (_g4243542437_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g4243542437_
                               _L42400_
                               _$t42254_
                               _method-calls40809_
                               _slot-refs40810_
                               _class-type-check40811_
                               _struct-type-check142348_
                               _struct-type-check242349_)))
                          _L42398_))
                    (__tmp45951
                     (let ((__tmp45952
                            (let ((__tmp45953
                                   (let ()
                                     (declare (not safe))
                                     (cons _L42400_ _L42399_))))
                              (declare (not safe))
                              (cons __tmp45953 _body42440_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp45952))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp45951 _L42002_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl4235942387_
                                                   _tl4236242395_
                                                   _hd4236342393_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4235142369_
                                                 _g4235242372_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4235142369_ _g4235242372_)))))
                              (let ()
                                (declare (not safe))
                                (_g4235142369_ _g4235242372_))))))
                  (declare (not safe))
                  (_g4235042442_ _L42002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr42606_
                                                      (lambda (_struct-type-check142447_
                                                               _struct-type-check242448_)
                                                        (let* ((_g4245042469_
                                                                (lambda (_g4245142466_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4245142466_))))
                       (_g4244942603_
                        (lambda (_g4245142472_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4245142472_))
                              (let ((_e4245542474_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4245142472_))))
                                (let ((_hd4245442477_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4245542474_)))
                                      (_tl4245342479_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4245542474_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl4245342479_))
                                      (let ((_g45954_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl4245342479_
                                                '0))))
                                        (begin
                                          (let ((_g45955_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45954_)
                                                       (##vector-length
                                                        _g45954_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45955_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45955_)))
                                          (let ((_target4245642482_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45954_ 0)))
                                                (_tl4245842484_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45954_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl4245842484_))
                                                (letrec ((_loop4245942487_
                                                          (lambda (_hd4245742490_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause4246342492_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd4245742490_))
                        (let ((_e4246042495_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd4245742490_))))
                          (let ((_lp-hd4246142498_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4246042495_)))
                                (_lp-tl4246242500_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4246042495_))))
                            (let ((__tmp45959
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd4246142498_
                                           _clause4246342492_))))
                              (declare (not safe))
                              (_loop4245942487_
                               _lp-tl4246242500_
                               __tmp45959))))
                        (let ((_clause4246442503_
                               (reverse _clause4246342492_)))
                          ((lambda (_L42506_)
                             (let* ((_clauses42601_
                                     (map (lambda (_clause42521_)
                                            (let* ((___stx4414144142_
                                                    _clause42521_)
                                                   (_g4252442539_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4414144142_)))))
                                              (let ((___kont4414344144_
                                                     (lambda (_L42567_
                                                              _L42568_
                                                              _L42569_)
                                                       (let* ((_body42589_
                                                               (map (lambda (_g4258442586_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g4258442586_
                                 _L42569_
                                 _$t42254_
                                 _method-calls40809_
                                 _slot-refs40810_
                                 _class-type-check40811_
                                 _struct-type-check142447_
                                 _struct-type-check242448_)))
                            _L42567_))
                      (__tmp45956
                       (let () (declare (not safe)) (cons _L42569_ _L42568_))))
                 (declare (not safe))
                 (cons __tmp45956 _body42589_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4414544146_
                                                     (lambda ()
                                                       _clause42521_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx4414144142_))
                                                    (let ((_e4253142551_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx4414144142_))))
                                                      (let ((_tl4252942556_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4253142551_)))
                    (_hd4253042554_
                     (let () (declare (not safe)) (##car _e4253142551_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _hd4253042554_))
                    (let ((_e4253442559_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd4253042554_))))
                      (let ((_tl4253242564_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4253442559_)))
                            (_hd4253342562_
                             (let ()
                               (declare (not safe))
                               (##car _e4253442559_))))
                        (___kont4414344144_
                         _tl4252942556_
                         _tl4253242564_
                         _hd4253342562_)))
                    (___kont4414544146_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4414544146_)))))
                                          (let ((__tmp45957
                                                 (lambda (_g4259342596_
                                                          _g4259442598_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g4259342596_
                                                           _g4259442598_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp45957 '() _L42506_))))
                                    (__tmp45958
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses42601_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp45958 _L42001_)))
                           _clause4246442503_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop4245942487_
                                                     _target4245642482_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4245042469_
                                                   _g4245142472_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4245042469_ _g4245142472_)))))
                              (let ()
                                (declare (not safe))
                                (_g4245042469_ _g4245142472_))))))
                  (declare (not safe))
                  (_g4244942603_ _L42001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl42611_
                                                      (lambda (_specializer-lambda-expr42608_
                                                               _specializer-case-lambda-expr42609_)
                                                        (let ((__tmp45960
                                                               (let ((__tmp45961
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp45963
                                     (let ((__tmp45964
                                            (let ((__tmp45966
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L42003_ '())))
                                                  (__tmp45965
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr42608_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp45966 __tmp45965))))
                                       (declare (not safe))
                                       (cons __tmp45964 '())))
                                    (__tmp45962
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr42609_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp45963 __tmp45962))))
                         (declare (not safe))
                         (cons '%#let-values __tmp45961))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp45960 _stx40715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr42613_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr42445_
                                                         _struct-check-all42324_
                                                         _empty40814_)))
                                                     (_specializer-case-lambda-expr42615_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr42606_
                                                         _struct-check-all42324_
                                                         _empty40814_)))
                                                     (_specializer-impl42617_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl42611_
                                                         _specializer-lambda-expr42613_
                                                         _specializer-case-lambda-expr42615_)))
                                                     (_unchecked-specializer-lambda-expr42619_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40817_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr42445_
                                                             _empty40814_
                                                             _struct-check-all42324_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr42621_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40817_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr42606_
                                                             _empty40814_
                                                             _struct-check-all42324_))
                                                          '#f))
                                                     (_unchecked-specializer-impl42623_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40817_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl42611_
                                                             _unchecked-specializer-lambda-expr42619_
                                                             _unchecked-specializer-case-lambda-expr42621_))
                                                          '#f))
                                                     (_specializer-impl42625_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl40721_
                                                         _$t42254_
                                                         _methods-bind42277_
                                                         _slots-bind42300_
                                                         _class-check-bind42322_
                                                         _struct-check-bind42346_
                                                         _specializer-impl42617_
                                                         _lifted-specializer-id42252_
                                                         _unchecked-specializer-impl42623_))))
                                                (let ((__tmp45968
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L40790_)))
                                                      (__tmp45967
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id42245_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp45968
                                                   '" => "
                                                   __tmp45967))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def40722_
                                                   _L40790_
                                                   _specializer-id42245_
                                                   _specializer-impl42625_
                                                   _lifted-specializer-id42252_
                                                   _unchecked-specializer-impl42623_)))))
                                        _hd4193441996_
                                        _hd4193141988_
                                        _hd4192841980_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4191041940_ _g4191141943_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4191041940_ _g4191141943_)))
                           (let ()
                             (declare (not safe))
                             (_g4191041940_ _g4191141943_)))
                       (let ()
                         (declare (not safe))
                         (_g4191041940_ _g4191141943_)))))
               (let () (declare (not safe)) (_g4191041940_ _g4191141943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4191041940_
                                                      _g4191141943_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4191041940_ _g4191141943_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4191041940_ _g4191141943_)))))
                           (let ()
                             (declare (not safe))
                             (_g4191041940_ _g4191141943_)))))
                   (let ()
                     (declare (not safe))
                     (_g4191041940_ _g4191141943_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4191041940_
                                                      _g4191141943_))))))
                                       (declare (not safe))
                                       (_g4190942628_ _L40789_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L40789_))
                                         (let* ((_g4263142684_
                                                 (lambda (_g4263242681_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4263242681_))))
                                                (_g4263043956_
                                                 (lambda (_g4263242687_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4263242687_))
                                                       (let ((_e4264042689_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4263242687_))))
                 (let ((_hd4263942692_
                        (let () (declare (not safe)) (##car _e4264042689_)))
                       (_tl4263842694_
                        (let () (declare (not safe)) (##cdr _e4264042689_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd4263942692_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd4263942692_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4263842694_))
                               (let ((_e4264342697_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4263842694_))))
                                 (let ((_hd4264242700_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4264342697_)))
                                       (_tl4264142702_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4264342697_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4264242700_))
                                       (let ((_e4264642705_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4264242700_))))
                                         (let ((_hd4264542708_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4264642705_)))
                                               (_tl4264442710_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4264642705_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4264542708_))
                                               (let ((_e4264942713_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4264542708_))))
                                                 (let ((_hd4264842716_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4264942713_)))
                                                       (_tl4264742718_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4264942713_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd4264842716_))
                                                       (let ((_e4265242721_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd4264842716_))))
                 (let ((_hd4265142724_
                        (let () (declare (not safe)) (##car _e4265242721_)))
                       (_tl4265042726_
                        (let () (declare (not safe)) (##cdr _e4265242721_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4265042726_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl4264742718_))
                           (let ((_e4265542729_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl4264742718_))))
                             (let ((_hd4265442732_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4265542729_)))
                                   (_tl4265342734_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4265542729_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4265442732_))
                                   (let ((_e4265842737_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4265442732_))))
                                     (let ((_hd4265742740_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4265842737_)))
                                           (_tl4265642742_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4265842737_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd4265742740_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd4265742740_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl4265642742_))
                                                   (let ((_e4266142745_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl4265642742_))))
                                                     (let ((_hd4266042748_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4266142745_)))
                                                           (_tl4265942750_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4266142745_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd4266042748_))
                                                           (let ((_e4266442753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd4266042748_))))
                     (let ((_hd4266342756_
                            (let ()
                              (declare (not safe))
                              (##car _e4266442753_)))
                           (_tl4266242758_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4266442753_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4266342756_))
                           (let ((_e4266742761_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4266342756_))))
                             (let ((_hd4266642764_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4266742761_)))
                                   (_tl4266542766_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4266742761_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4266642764_))
                                   (let ((_e4267042769_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4266642764_))))
                                     (let ((_hd4266942772_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4267042769_)))
                                           (_tl4266842774_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4267042769_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4266842774_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _tl4266542766_))
                                               (let ((_e4267342777_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl4266542766_))))
                                                 (let ((_hd4267242780_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4267342777_)))
                                                       (_tl4267142782_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4267342777_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4267142782_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl4266242758_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl4265942750_))
                       (let ((_e4267642785_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4265942750_))))
                         (let ((_hd4267542788_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4267642785_)))
                               (_tl4267442790_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4267642785_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4267442790_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl4265342734_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4264442710_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl4264142702_))
                                           (let ((_e4267942793_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl4264142702_))))
                                             (let ((_hd4267842796_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4267942793_)))
                                                   (_tl4267742798_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4267942793_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4267742798_))
                                                   ((lambda (_L42801_
                                                             _L42802_
                                                             _L42803_
                                                             _L42804_
                                                             _L42805_)
                                                      (let* ((_g4284442906_
                                                              (lambda (_g4284542903_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g4284542903_))))
                     (_g4284343953_
                      (lambda (_g4284542909_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g4284542909_))
                            (let ((_e4285342911_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g4284542909_))))
                              (let ((_hd4285242914_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4285342911_)))
                                    (_tl4285142916_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4285342911_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd4285242914_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd4285242914_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl4285142916_))
                                            (let ((_e4285642919_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl4285142916_))))
                                              (let ((_hd4285542922_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4285642919_)))
                                                    (_tl4285442924_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4285642919_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4285442924_))
                                                    (let ((_e4285942927_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4285442924_))))
                                                      (let ((_hd4285842930_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4285942927_)))
                    (_tl4285742932_
                     (let () (declare (not safe)) (##cdr _e4285942927_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _hd4285842930_))
                    (let ((_e4286242935_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd4285842930_))))
                      (let ((_hd4286142938_
                             (let ()
                               (declare (not safe))
                               (##car _e4286242935_)))
                            (_tl4286042940_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4286242935_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd4286142938_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd4286142938_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl4286042940_))
                                    (let ((_e4286542943_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl4286042940_))))
                                      (let ((_hd4286442946_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4286542943_)))
                                            (_tl4286342948_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4286542943_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd4286442946_))
                                            (let ((_e4286842951_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd4286442946_))))
                                              (let ((_hd4286742954_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4286842951_)))
                                                    (_tl4286642956_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4286842951_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd4286742954_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd4286742954_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl4286642956_))
                                                            (let ((_e4287142959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl4286642956_))))
                      (let ((_hd4287042962_
                             (let ()
                               (declare (not safe))
                               (##car _e4287142959_)))
                            (_tl4286942964_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4287142959_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4286942964_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl4286342948_))
                                (let ((_e4287442967_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl4286342948_))))
                                  (let ((_hd4287342970_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4287442967_)))
                                        (_tl4287242972_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4287442967_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd4287342970_))
                                        (let ((_e4287742975_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd4287342970_))))
                                          (let ((_hd4287642978_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4287742975_)))
                                                (_tl4287542980_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4287742975_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd4287642978_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd4287642978_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl4287542980_))
                                                        (let ((_e4288042983_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl4287542980_))))
                  (let ((_hd4287942986_
                         (let () (declare (not safe)) (##car _e4288042983_)))
                        (_tl4287842988_
                         (let () (declare (not safe)) (##cdr _e4288042983_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl4287842988_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4287242972_))
                            (let ((_e4288342991_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4287242972_))))
                              (let ((_hd4288242994_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4288342991_)))
                                    (_tl4288142996_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4288342991_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4288242994_))
                                    (let ((_e4288642999_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4288242994_))))
                                      (let ((_hd4288543002_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4288642999_)))
                                            (_tl4288443004_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4288642999_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd4288543002_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd4288543002_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4288443004_))
                                                    (let ((_e4288943007_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4288443004_))))
                                                      (let ((_hd4288843010_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4288943007_)))
                    (_tl4288743012_
                     (let () (declare (not safe)) (##cdr _e4288943007_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl4288743012_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4288142996_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl4288142996_))
                                  '1)
                            (let ((_g45865_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4288142996_
                                      '1))))
                              (begin
                                (let ((_g45866_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g45865_)
                                             (##vector-length _g45865_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g45866_ 2)))
                                      (error "Context expects 2 values"
                                             _g45866_)))
                                (let ((_target4289043015_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45865_ 0)))
                                      (_tl4289243017_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45865_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4289243017_))
                                      (let ((_e4290143020_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4289243017_))))
                                        (let ((_hd4290043023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4290143020_)))
                                              (_tl4289943025_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4290143020_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl4289943025_))
                                              (letrec ((_loop4289343028_
                                                        (lambda (_hd4289143031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref4289743033_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd4289143031_))
                      (let ((_e4289443036_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd4289143031_))))
                        (let ((_lp-hd4289543039_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4289443036_)))
                              (_lp-tl4289643041_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4289443036_))))
                          (let ((__tmp45938
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4289543039_
                                         _kw-ref4289743033_))))
                            (declare (not safe))
                            (_loop4289343028_ _lp-tl4289643041_ __tmp45938))))
                      (let ((_kw-ref4289843044_ (reverse _kw-ref4289743033_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4285742932_))
                            ((lambda (_L43047_
                                      _L43048_
                                      _L43049_
                                      _L43050_
                                      _L43051_)
                               (let* ((_kw-count43102_
                                       (length (let ((__tmp45867
                                                      (lambda (_g4309443097_
                                                               _g4309543099_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4309443097_
                                                                _g4309543099_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp45867
                                                         '()
                                                         _L43048_))))
                                      (_self-index43104_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count43102_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L42803_))
                                     (let* ((_g4310743121_
                                             (lambda (_g4310843118_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g4310843118_))))
                                            (_g4310643292_
                                             (lambda (_g4310843124_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4310843124_))
                                                   (let ((_e4311343126_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4310843124_))))
                                                     (let ((_hd4311243129_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4311343126_)))
                                                           (_tl4311143131_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4311343126_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4311143131_))
                                                           (let ((_e4311643134_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4311143131_))))
                     (let ((_hd4311543137_
                            (let ()
                              (declare (not safe))
                              (##car _e4311643134_)))
                           (_tl4311443139_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4311643134_))))
                       ((lambda (_L43142_ _L43143_)
                          (let ((_self43159_
                                 (list-ref _L43143_ _self-index43104_)))
                            (for-each
                             (lambda (_g4316043162_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g4316043162_
                                  _self43159_
                                  _method-calls40809_
                                  _slot-refs40810_
                                  _class-type-check40811_
                                  _struct-type-check40812_
                                  _struct-type-assert40813_)))
                             _L43142_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?40816_))
                                _stx40715_
                                (let* ((_specializer-id43171_
                                        (let* ((_id43165_
                                                (make-symbol
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _L40790_))
                                                 '"::specialize"))
                                               (_specializer-id43168_
                                                (let ((__tmp45911
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx40715_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id43165_
                                                   __tmp45911))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id43168_))
                                          _specializer-id43168_))
                                       (_lifted-specializer-id43178_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?40818_))
                                            (let* ((_id43173_
                                                    (make-symbol
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L40790_))
                                                     '"::specialize::unchecked"))
                                                   (_lifted-specializer-id43175_
                                                    (let ((__tmp45912
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx40715_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id43173_
                                                       __tmp45912))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id43175_))
                                              _lifted-specializer-id43175_)
                                            '#f))
                                       (_$t43180_ (make-symbol (gensym '__t)))
                                       (_methods43182_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls40809_)))
                                       (_$methods43186_
                                        (map (lambda (_id43184_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id43184_)))
                                             _methods43182_))
                                       (_g45913_
                                        (for-each
                                         (lambda (_g4318743190_ _g4318843192_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls40809_
                                              _g4318743190_
                                              _g4318843192_)))
                                         _methods43182_
                                         _$methods43186_))
                                       (_methods-bind43203_
                                        (map (lambda (_g4319543198_
                                                      _g4319643200_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind40717_
                                                  _$t43180_
                                                  _g4319543198_
                                                  _g4319643200_)))
                                             _methods43182_
                                             _$methods43186_))
                                       (_slots43205_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs40810_)))
                                       (_$slots43209_
                                        (map (lambda (_id43207_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id43207_)))
                                             _slots43205_))
                                       (_g45914_
                                        (for-each
                                         (lambda (_g4321043213_ _g4321143215_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs40810_
                                              _g4321043213_
                                              _g4321143215_)))
                                         _slots43205_
                                         _$slots43209_))
                                       (_slots-bind43226_
                                        (map (lambda (_g4321843221_
                                                      _g4321943223_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind40718_
                                                  _$t43180_
                                                  _g4321843221_
                                                  _g4321943223_)))
                                             _slots43205_
                                             _$slots43209_))
                                       (_class-check43228_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _class-type-check40811_)))
                                       (_$class-check43231_
                                        (map (lambda (_g45915_)
                                               (make-symbol (gensym '__class)))
                                             _class-check43228_))
                                       (_g45916_
                                        (for-each
                                         (lambda (_g4323243235_ _g4323343237_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check40811_
                                              _g4323243235_
                                              _g4323343237_)))
                                         _class-check43228_
                                         _$class-check43231_))
                                       (_class-check-bind43248_
                                        (map (lambda (_g4324043243_
                                                      _g4324143245_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind40719_
                                                  _$t43180_
                                                  _g4324043243_
                                                  _g4324143245_)))
                                             _class-check43228_
                                             _$class-check43231_))
                                       (_struct-check-all43250_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check40812_
                                           _struct-type-assert40813_)))
                                       (_struct-check43252_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _struct-check-all43250_)))
                                       (_$struct-check43255_
                                        (map (lambda (_g45917_)
                                               (make-symbol (gensym '__class)))
                                             _struct-check43252_))
                                       (_g45918_
                                        (for-each
                                         (lambda (_g4325643259_ _g4325743261_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all43250_
                                              _g4325643259_
                                              _g4325743261_)))
                                         _struct-check43252_
                                         _$struct-check43255_))
                                       (_struct-check-bind43272_
                                        (map (lambda (_g4326443267_
                                                      _g4326543269_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind40720_
                                                  _$t43180_
                                                  _g4326443267_
                                                  _g4326543269_)))
                                             _struct-check43252_
                                             _$struct-check43255_))
                                       (_make-specializer-impl43283_
                                        (lambda (_struct-type-check143274_
                                                 _struct-type-check243275_)
                                          (let* ((_specializer-body43281_
                                                  (map (lambda (_g4327643278_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g4327643278_
                                                            _self43159_
                                                            _$t43180_
                                                            _method-calls40809_
                                                            _slot-refs40810_
                                                            _class-type-check40811_
                                                            _struct-type-check143274_
                                                            _struct-type-check243275_)))
                                                       _L43142_))
                                                 (__tmp45919
                                                  (let ((__tmp45920
                                                         (let ((__tmp45922
                                                                (let ((__tmp45923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45935
                                      (let ()
                                        (declare (not safe))
                                        (cons _L42805_ '())))
                                     (__tmp45924
                                      (let ((__tmp45925
                                             (let ((__tmp45926
                                                    (let ((__tmp45928
                                                           (let ((__tmp45929
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45934
                                 (let ()
                                   (declare (not safe))
                                   (cons _L42804_ '())))
                                (__tmp45930
                                 (let ((__tmp45931
                                        (let ((__tmp45932
                                               (let ((__tmp45933
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L43143_
                                                              _specializer-body43281_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda __tmp45933))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp45932
                                           _L42803_))))
                                   (declare (not safe))
                                   (cons __tmp45931 '()))))
                            (declare (not safe))
                            (cons __tmp45934 __tmp45930))))
                     (declare (not safe))
                     (cons __tmp45929 '())))
                  (__tmp45927
                   (let () (declare (not safe)) (cons _L42802_ '()))))
              (declare (not safe))
              (cons __tmp45928 __tmp45927))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp45926))))
                                        (declare (not safe))
                                        (cons __tmp45925 '()))))
                                 (declare (not safe))
                                 (cons __tmp45935 __tmp45924))))
                          (declare (not safe))
                          (cons __tmp45923 '())))
                       (__tmp45921
                        (let () (declare (not safe)) (cons _L42801_ '()))))
                   (declare (not safe))
                   (cons __tmp45922 __tmp45921))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp45920))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp45919
                                             _stx40715_))))
                                       (_specializer-impl43285_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl43283_
                                           _struct-check-all43250_
                                           _empty40814_)))
                                       (_unchecked-specializer-impl43287_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?40817_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl43283_
                                               _empty40814_
                                               _struct-check-all43250_))
                                            '#f))
                                       (_specializer-impl43289_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl40721_
                                           _$t43180_
                                           _methods-bind43203_
                                           _slots-bind43226_
                                           _class-check-bind43248_
                                           _struct-check-bind43272_
                                           _specializer-impl43285_
                                           _lifted-specializer-id43178_
                                           _unchecked-specializer-impl43287_))))
                                  (let ((__tmp45937
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L40790_)))
                                        (__tmp45936
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id43171_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp45937
                                     '" => "
                                     __tmp45936))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def40722_
                                     _L40790_
                                     _specializer-id43171_
                                     _specializer-impl43289_
                                     _lifted-specializer-id43178_
                                     _unchecked-specializer-impl43287_))))))
                        _tl4311443139_
                        _hd4311543137_)))
                   (let ()
                     (declare (not safe))
                     (_g4310743121_ _g4310843124_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4310743121_
                                                      _g4310843124_))))))
                                       (declare (not safe))
                                       (_g4310643292_ _L42803_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L42803_))
                                         (let* ((_g4329543325_
                                                 (lambda (_g4329643322_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4329643322_))))
                                                (_g4329443950_
                                                 (lambda (_g4329643328_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4329643328_))
                                                       (let ((_e4330243330_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4329643328_))))
                 (let ((_hd4330143333_
                        (let () (declare (not safe)) (##car _e4330243330_)))
                       (_tl4330043335_
                        (let () (declare (not safe)) (##cdr _e4330243330_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl4330043335_))
                       (let ((_e4330543338_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4330043335_))))
                         (let ((_hd4330443341_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4330543338_)))
                               (_tl4330343343_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4330543338_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd4330443341_))
                               (let ((_e4330843346_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd4330443341_))))
                                 (let ((_hd4330743349_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4330843346_)))
                                       (_tl4330643351_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4330843346_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4330743349_))
                                       (let ((_e4331143354_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4330743349_))))
                                         (let ((_hd4331043357_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4331143354_)))
                                               (_tl4330943359_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4331143354_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4331043357_))
                                               (let ((_e4331443362_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4331043357_))))
                                                 (let ((_hd4331343365_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4331443362_)))
                                                       (_tl4331243367_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4331443362_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4331243367_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4330943359_))
                                                           (let ((_e4331743370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4330943359_))))
                     (let ((_hd4331643373_
                            (let ()
                              (declare (not safe))
                              (##car _e4331743370_)))
                           (_tl4331543375_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4331743370_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4331543375_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4330643351_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl4330343343_))
                                   (let ((_e4332043378_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl4330343343_))))
                                     (let ((_hd4331943381_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4332043378_)))
                                           (_tl4331843383_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4332043378_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4331843383_))
                                           ((lambda (_L43386_
                                                     _L43387_
                                                     _L43388_)
                                              (let* ((_g4341143425_
                                                      (lambda (_g4341243422_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g4341243422_))))
                                                     (_g4341043466_
                                                      (lambda (_g4341243428_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4341243428_))
                                                            (let ((_e4341743430_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4341243428_))))
                      (let ((_hd4341643433_
                             (let ()
                               (declare (not safe))
                               (##car _e4341743430_)))
                            (_tl4341543435_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4341743430_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4341543435_))
                            (let ((_e4342043438_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4341543435_))))
                              (let ((_hd4341943441_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4342043438_)))
                                    (_tl4341843443_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4342043438_))))
                                ((lambda (_L43446_ _L43447_)
                                   (let ((_self43460_
                                          (list-ref
                                           _L43447_
                                           _self-index43104_)))
                                     (for-each
                                      (lambda (_g4346143463_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g4346143463_
                                           _self43460_
                                           _method-calls40809_
                                           _slot-refs40810_
                                           _class-type-check40811_
                                           _struct-type-check40812_
                                           _struct-type-assert40813_)))
                                      _L43446_)))
                                 _tl4341843443_
                                 _hd4341943441_)))
                            (let ()
                              (declare (not safe))
                              (_g4341143425_ _g4341243428_)))))
                    (let ()
                      (declare (not safe))
                      (_g4341143425_ _g4341243428_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4341043466_ _L43387_))
                                              (let* ((_g4346943488_
                                                      (lambda (_g4347043485_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g4347043485_))))
                                                     (_g4346843593_
                                                      (lambda (_g4347043491_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4347043491_))
                                                            (let ((_e4347443493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4347043491_))))
                      (let ((_hd4347343496_
                             (let ()
                               (declare (not safe))
                               (##car _e4347443493_)))
                            (_tl4347243498_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4347443493_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl4347243498_))
                            (let ((_g45868_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4347243498_
                                      '0))))
                              (begin
                                (let ((_g45869_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g45868_)
                                             (##vector-length _g45868_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g45869_ 2)))
                                      (error "Context expects 2 values"
                                             _g45869_)))
                                (let ((_target4347543501_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45868_ 0)))
                                      (_tl4347743503_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45868_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl4347743503_))
                                      (letrec ((_loop4347843506_
                                                (lambda (_hd4347643509_
                                                         _clause4348243511_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd4347643509_))
                                                      (let ((_e4347943514_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd4347643509_))))
                (let ((_lp-hd4348043517_
                       (let () (declare (not safe)) (##car _e4347943514_)))
                      (_lp-tl4348143519_
                       (let () (declare (not safe)) (##cdr _e4347943514_))))
                  (let ((__tmp45871
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd4348043517_ _clause4348243511_))))
                    (declare (not safe))
                    (_loop4347843506_ _lp-tl4348143519_ __tmp45871))))
              (let ((_clause4348343522_ (reverse _clause4348243511_)))
                ((lambda (_L43525_)
                   (for-each
                    (lambda (_clause43538_)
                      (let* ((_g4354043551_
                              (lambda (_g4354143548_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g4354143548_))))
                             (_g4353943583_
                              (lambda (_g4354143554_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g4354143554_))
                                    (let ((_e4354643556_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g4354143554_))))
                                      (let ((_hd4354543559_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4354643556_)))
                                            (_tl4354443561_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4354643556_))))
                                        ((lambda (_L43564_ _L43565_)
                                           (let ((_self43577_
                                                  (list-ref
                                                   _L43565_
                                                   _self-index43104_)))
                                             (for-each
                                              (lambda (_g4357843580_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g4357843580_
                                                   _self43577_
                                                   _method-calls40809_
                                                   _slot-refs40810_
                                                   _class-type-check40811_
                                                   _struct-type-check40812_
                                                   _struct-type-assert40813_)))
                                              _L43564_)))
                                         _tl4354443561_
                                         _hd4354543559_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4354043551_ _g4354143554_))))))
                        (declare (not safe))
                        (_g4353943583_ _clause43538_)))
                    (let ((__tmp45870
                           (lambda (_g4358543588_ _g4358643590_)
                             (let ()
                               (declare (not safe))
                               (cons _g4358543588_ _g4358643590_)))))
                      (declare (not safe))
                      (foldr1 __tmp45870 '() _L43525_))))
                 _clause4348343522_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop4347843506_
                                           _target4347543501_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g4346943488_ _g4347043491_))))))
                            (let ()
                              (declare (not safe))
                              (_g4346943488_ _g4347043491_)))))
                    (let ()
                      (declare (not safe))
                      (_g4346943488_ _g4347043491_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4346843593_ _L43386_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?40816_))
                                                  _stx40715_
                                                  (let* ((_specializer-id43602_
                                                          (let* ((_id43596_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40790_))
                           '"::specialize"))
                         (_specializer-id43599_
                          (let ((__tmp45872
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40715_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id43596_ __tmp45872))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id43599_))
                    _specializer-id43599_))
                 (_lifted-specializer-id43609_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?40818_))
                      (let* ((_id43604_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L40790_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id43606_
                              (let ((__tmp45873
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx40715_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id43604_
                                 __tmp45873))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id43606_))
                        _lifted-specializer-id43606_)
                      '#f))
                 (_$t43611_ (make-symbol (gensym '__t)))
                 (_methods43613_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls40809_)))
                 (_$methods43617_
                  (map (lambda (_id43615_)
                         (make-symbol '"__" (gensym _id43615_)))
                       _methods43613_))
                 (_g45874_
                  (for-each
                   (lambda (_g4361843621_ _g4361943623_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls40809_
                        _g4361843621_
                        _g4361943623_)))
                   _methods43613_
                   _$methods43617_))
                 (_methods-bind43634_
                  (map (lambda (_g4362643629_ _g4362743631_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind40717_
                            _$t43611_
                            _g4362643629_
                            _g4362743631_)))
                       _methods43613_
                       _$methods43617_))
                 (_slots43636_
                  (let () (declare (not safe)) (hash-keys _slot-refs40810_)))
                 (_$slots43640_
                  (map (lambda (_id43638_)
                         (make-symbol '"__" (gensym _id43638_)))
                       _slots43636_))
                 (_g45875_
                  (for-each
                   (lambda (_g4364143644_ _g4364243646_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs40810_
                        _g4364143644_
                        _g4364243646_)))
                   _slots43636_
                   _$slots43640_))
                 (_slots-bind43657_
                  (map (lambda (_g4364943652_ _g4365043654_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind40718_
                            _$t43611_
                            _g4364943652_
                            _g4365043654_)))
                       _slots43636_
                       _$slots43640_))
                 (_class-check43659_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check40811_)))
                 (_$class-check43662_
                  (map (lambda (_g45876_) (make-symbol (gensym '__class)))
                       _class-check43659_))
                 (_g45877_
                  (for-each
                   (lambda (_g4366343666_ _g4366443668_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check40811_
                        _g4366343666_
                        _g4366443668_)))
                   _class-check43659_
                   _$class-check43662_))
                 (_class-check-bind43679_
                  (map (lambda (_g4367143674_ _g4367243676_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind40719_
                            _$t43611_
                            _g4367143674_
                            _g4367243676_)))
                       _class-check43659_
                       _$class-check43662_))
                 (_struct-check-all43681_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check40812_
                     _struct-type-assert40813_)))
                 (_struct-check43683_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all43681_)))
                 (_$struct-check43686_
                  (map (lambda (_g45878_) (make-symbol (gensym '__class)))
                       _struct-check43683_))
                 (_g45879_
                  (for-each
                   (lambda (_g4368743690_ _g4368843692_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all43681_
                        _g4368743690_
                        _g4368843692_)))
                   _struct-check43683_
                   _$struct-check43686_))
                 (_struct-check-bind43703_
                  (map (lambda (_g4369543698_ _g4369643700_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind40720_
                            _$t43611_
                            _g4369543698_
                            _g4369643700_)))
                       _struct-check43683_
                       _$struct-check43686_))
                 (_make-specializer-lambda-expr43789_
                  (lambda (_struct-type-check143705_ _struct-type-check243706_)
                    (let* ((_g4370843722_
                            (lambda (_g4370943719_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4370943719_))))
                           (_g4370743786_
                            (lambda (_g4370943725_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4370943725_))
                                  (let ((_e4371443727_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4370943725_))))
                                    (let ((_hd4371343730_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4371443727_)))
                                          (_tl4371243732_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4371443727_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl4371243732_))
                                          (let ((_e4371743735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl4371243732_))))
                                            (let ((_hd4371643738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4371743735_)))
                                                  (_tl4371543740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4371743735_))))
                                              ((lambda (_L43743_ _L43744_)
                                                 (let* ((_self43777_
                                                         (list-ref
                                                          _L43744_
                                                          _self-index43104_))
                                                        (_body43783_
                                                         (map (lambda (_g4377843780_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g4377843780_
                           _self43777_
                           _$t43611_
                           _method-calls40809_
                           _slot-refs40810_
                           _class-type-check40811_
                           _struct-type-check143705_
                           _struct-type-check243706_)))
                      _L43743_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp45880
                                                          (let ((__tmp45881
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L43744_ _body43783_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp45881))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp45880
                                                      _L43387_))))
                                               _tl4371543740_
                                               _hd4371643738_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4370843722_ _g4370943725_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4370843722_ _g4370943725_))))))
                      (declare (not safe))
                      (_g4370743786_ _L43387_))))
                 (_make-specializer-case-lambda-expr43928_
                  (lambda (_struct-type-check143791_ _struct-type-check243792_)
                    (let* ((_g4379443813_
                            (lambda (_g4379543810_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4379543810_))))
                           (_g4379343925_
                            (lambda (_g4379543816_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4379543816_))
                                  (let ((_e4379943818_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4379543816_))))
                                    (let ((_hd4379843821_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4379943818_)))
                                          (_tl4379743823_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4379943818_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl4379743823_))
                                          (let ((_g45882_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl4379743823_
                                                    '0))))
                                            (begin
                                              (let ((_g45883_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g45882_)
                                                           (##vector-length
                                                            _g45882_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g45883_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g45883_)))
                                              (let ((_target4380043826_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g45882_
                                                        0)))
                                                    (_tl4380243828_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g45882_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl4380243828_))
                                                    (letrec ((_loop4380343831_
                                                              (lambda (_hd4380143834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause4380743836_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd4380143834_))
                            (let ((_e4380443839_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd4380143834_))))
                              (let ((_lp-hd4380543842_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4380443839_)))
                                    (_lp-tl4380643844_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4380443839_))))
                                (let ((__tmp45886
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd4380543842_
                                               _clause4380743836_))))
                                  (declare (not safe))
                                  (_loop4380343831_
                                   _lp-tl4380643844_
                                   __tmp45886))))
                            (let ((_clause4380843847_
                                   (reverse _clause4380743836_)))
                              ((lambda (_L43850_)
                                 (let* ((_clauses43923_
                                         (map (lambda (_clause43865_)
                                                (let* ((_g4386743878_
                                                        (lambda (_g4386843875_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g4386843875_))))
                                                       (_g4386643913_
                                                        (lambda (_g4386843881_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g4386843881_))
                      (let ((_e4387343883_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g4386843881_))))
                        (let ((_hd4387243886_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4387343883_)))
                              (_tl4387143888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4387343883_))))
                          ((lambda (_L43891_ _L43892_)
                             (let* ((_self43904_
                                     (list-ref _L43892_ _self-index43104_))
                                    (_body43910_
                                     (map (lambda (_g4390543907_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g4390543907_
                                               _self43904_
                                               _$t43611_
                                               _method-calls40809_
                                               _slot-refs40810_
                                               _class-type-check40811_
                                               _struct-type-check143791_
                                               _struct-type-check243792_)))
                                          _L43891_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L43892_ _body43910_))))
                           _tl4387143888_
                           _hd4387243886_)))
                      (let ()
                        (declare (not safe))
                        (_g4386743878_ _g4386843881_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g4386643913_
                                                   _clause43865_)))
                                              (let ((__tmp45884
                                                     (lambda (_g4391543918_
                                                              _g4391643920_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g4391543918_
                                                               _g4391643920_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp45884
                                                        '()
                                                        _L43850_))))
                                        (__tmp45885
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses43923_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp45885
                                    _L43386_)))
                               _clause4380843847_))))))
              (let ()
                (declare (not safe))
                (_loop4380343831_ _target4380043826_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4379443813_
                                                       _g4379543816_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4379443813_ _g4379543816_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4379443813_ _g4379543816_))))))
                      (declare (not safe))
                      (_g4379343925_ _L43386_))))
                 (_make-specializer-impl43933_
                  (lambda (_specializer-lambda-expr43930_
                           _specializer-case-lambda-expr43931_)
                    (let ((__tmp45887
                           (let ((__tmp45888
                                  (let ((__tmp45890
                                         (let ((__tmp45891
                                                (let ((__tmp45908
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L42805_ '())))
                                                      (__tmp45892
                                                       (let ((__tmp45893
                                                              (let ((__tmp45894
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45896
                                    (let ((__tmp45897
                                           (let ((__tmp45907
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L42804_ '())))
                                                 (__tmp45898
                                                  (let ((__tmp45899
                                                         (let ((__tmp45900
                                                                (let ((__tmp45901
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45903
                                      (let ((__tmp45904
                                             (let ((__tmp45906
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L43388_ '())))
                                                   (__tmp45905
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr43930_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp45906 __tmp45905))))
                                        (declare (not safe))
                                        (cons __tmp45904 '())))
                                     (__tmp45902
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr43931_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp45903 __tmp45902))))
                          (declare (not safe))
                          (cons '%#let-values __tmp45901))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp45900 _stx40715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45899 '()))))
                                             (declare (not safe))
                                             (cons __tmp45907 __tmp45898))))
                                      (declare (not safe))
                                      (cons __tmp45897 '())))
                                   (__tmp45895
                                    (let ()
                                      (declare (not safe))
                                      (cons _L42802_ '()))))
                               (declare (not safe))
                               (cons __tmp45896 __tmp45895))))
                        (declare (not safe))
                        (cons '%#let-values __tmp45894))))
                 (declare (not safe))
                 (cons __tmp45893 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45908
                                                        __tmp45892))))
                                           (declare (not safe))
                                           (cons __tmp45891 '())))
                                        (__tmp45889
                                         (let ()
                                           (declare (not safe))
                                           (cons _L42801_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45890 __tmp45889))))
                             (declare (not safe))
                             (cons '%#let-values __tmp45888))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45887 _stx40715_))))
                 (_specializer-lambda-expr43935_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr43789_
                     _struct-check-all43681_
                     _empty40814_)))
                 (_specializer-case-lambda-expr43937_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr43928_
                     _struct-check-all43681_
                     _empty40814_)))
                 (_specializer-impl43939_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl43933_
                     _specializer-lambda-expr43935_
                     _specializer-case-lambda-expr43937_)))
                 (_unchecked-specializer-lambda-expr43941_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40817_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr43789_
                         _empty40814_
                         _struct-check-all43681_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr43943_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40817_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr43928_
                         _empty40814_
                         _struct-check-all43681_))
                      '#f))
                 (_unchecked-specializer-impl43945_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40817_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl43933_
                         _unchecked-specializer-lambda-expr43941_
                         _unchecked-specializer-case-lambda-expr43943_))
                      '#f))
                 (_specializer-impl43947_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl40721_
                     _$t43611_
                     _methods-bind43634_
                     _slots-bind43657_
                     _class-check-bind43679_
                     _struct-check-bind43703_
                     _specializer-impl43939_
                     _lifted-specializer-id43609_
                     _unchecked-specializer-impl43945_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp45910
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L40790_)))
                                                          (__tmp45909
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id43602_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp45910
                                                       '" => "
                                                       __tmp45909))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def40722_
                                                       _L40790_
                                                       _specializer-id43602_
                                                       _specializer-impl43947_
                                                       _lifted-specializer-id43609_
                                                       _unchecked-specializer-impl43945_)))))
                                            _hd4331943381_
                                            _hd4331643373_
                                            _hd4331343365_)
                                           (let ()
                                             (declare (not safe))
                                             (_g4329543325_ _g4329643328_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4329543325_ _g4329643328_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4329543325_ _g4329643328_)))
                           (let ()
                             (declare (not safe))
                             (_g4329543325_ _g4329643328_)))))
                   (let () (declare (not safe)) (_g4329543325_ _g4329643328_)))
               (let () (declare (not safe)) (_g4329543325_ _g4329643328_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4329543325_
                                                  _g4329643328_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4329543325_ _g4329643328_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4329543325_ _g4329643328_)))))
                       (let ()
                         (declare (not safe))
                         (_g4329543325_ _g4329643328_)))))
               (let () (declare (not safe)) (_g4329543325_ _g4329643328_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4329443950_ _L42803_))
                                         _stx40715_))))
                             _hd4290043023_
                             _kw-ref4289843044_
                             _hd4288843010_
                             _hd4287942986_
                             _hd4287042962_)
                            (let ()
                              (declare (not safe))
                              (_g4284442906_ _g4284542909_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop4289343028_
                                                   _target4289043015_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g4284442906_
                                                 _g4284542909_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4284442906_ _g4284542909_))))))
                            (let ()
                              (declare (not safe))
                              (_g4284442906_ _g4284542909_)))
                        (let ()
                          (declare (not safe))
                          (_g4284442906_ _g4284542909_)))
                    (let ()
                      (declare (not safe))
                      (_g4284442906_ _g4284542909_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4284442906_
                                                       _g4284542909_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4284442906_
                                                   _g4284542909_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4284442906_ _g4284542909_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4284442906_ _g4284542909_)))))
                            (let ()
                              (declare (not safe))
                              (_g4284442906_ _g4284542909_)))
                        (let ()
                          (declare (not safe))
                          (_g4284442906_ _g4284542909_)))))
                (let () (declare (not safe)) (_g4284442906_ _g4284542909_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4284442906_
                                                       _g4284542909_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4284442906_
                                                   _g4284542909_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4284442906_ _g4284542909_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4284442906_ _g4284542909_)))
                            (let ()
                              (declare (not safe))
                              (_g4284442906_ _g4284542909_)))))
                    (let ()
                      (declare (not safe))
                      (_g4284442906_ _g4284542909_)))
                (let () (declare (not safe)) (_g4284442906_ _g4284542909_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4284442906_
                                                       _g4284542909_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4284442906_ _g4284542909_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4284442906_ _g4284542909_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4284442906_ _g4284542909_)))
                            (let ()
                              (declare (not safe))
                              (_g4284442906_ _g4284542909_)))))
                    (let ()
                      (declare (not safe))
                      (_g4284442906_ _g4284542909_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4284442906_
                                                       _g4284542909_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4284442906_ _g4284542909_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4284442906_ _g4284542909_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4284442906_ _g4284542909_)))))
                            (let ()
                              (declare (not safe))
                              (_g4284442906_ _g4284542909_))))))
                (declare (not safe))
                (_g4284343953_ _L42802_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd4267842796_
                                                    _hd4267542788_
                                                    _hd4267242780_
                                                    _hd4266942772_
                                                    _hd4265142724_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4263142684_
                                                      _g4263242687_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4263142684_ _g4263242687_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g4263142684_ _g4263242687_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g4263142684_ _g4263242687_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4263142684_ _g4263242687_)))))
                       (let ()
                         (declare (not safe))
                         (_g4263142684_ _g4263242687_)))
                   (let () (declare (not safe)) (_g4263142684_ _g4263242687_)))
               (let () (declare (not safe)) (_g4263142684_ _g4263242687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4263142684_
                                                  _g4263242687_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4263142684_ _g4263242687_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4263142684_ _g4263242687_)))))
                           (let ()
                             (declare (not safe))
                             (_g4263142684_ _g4263242687_)))))
                   (let ()
                     (declare (not safe))
                     (_g4263142684_ _g4263242687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4263142684_
                                                      _g4263242687_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4263142684_
                                                  _g4263242687_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4263142684_ _g4263242687_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4263142684_ _g4263242687_)))))
                           (let ()
                             (declare (not safe))
                             (_g4263142684_ _g4263242687_)))
                       (let ()
                         (declare (not safe))
                         (_g4263142684_ _g4263242687_)))))
               (let () (declare (not safe)) (_g4263142684_ _g4263242687_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4263142684_
                                                  _g4263242687_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4263142684_ _g4263242687_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4263142684_ _g4263242687_)))
                           (let ()
                             (declare (not safe))
                             (_g4263142684_ _g4263242687_)))
                       (let ()
                         (declare (not safe))
                         (_g4263142684_ _g4263242687_)))))
               (let () (declare (not safe)) (_g4263142684_ _g4263242687_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4263043956_ _L40789_))
                                         _stx40715_))))))))
                  (___kont4416544166_ (lambda () _stx40715_)))
              (let ((___match4419444195_
                     (lambda (_e4073140757_
                              _hd4073040760_
                              _tl4072940762_
                              _e4073440765_
                              _hd4073340768_
                              _tl4073240770_
                              _e4073740773_
                              _hd4073640776_
                              _tl4073540778_
                              _e4074040781_
                              _hd4073940784_
                              _tl4073840786_)
                       (let ((_L40789_ _hd4073940784_)
                             (_L40790_ _hd4073640776_))
                         (if (let ((__tmp45999
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L40790_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp45999))
                             (___kont4416344164_ _L40789_ _L40790_)
                             (___kont4416544166_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4416144162_))
                    (let ((_e4073140757_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4416144162_))))
                      (let ((_tl4072940762_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4073140757_)))
                            (_hd4073040760_
                             (let ()
                               (declare (not safe))
                               (##car _e4073140757_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4072940762_))
                            (let ((_e4073440765_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4072940762_))))
                              (let ((_tl4073240770_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4073440765_)))
                                    (_hd4073340768_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4073440765_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4073340768_))
                                    (let ((_e4073740773_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4073340768_))))
                                      (let ((_tl4073540778_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4073740773_)))
                                            (_hd4073640776_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4073740773_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl4073540778_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl4073240770_))
                                                (let ((_e4074040781_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl4073240770_))))
                                                  (let ((_tl4073840786_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4074040781_)))
                                                        (_hd4073940784_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4074040781_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl4073840786_))
                                                        (___match4419444195_
                                                         _e4073140757_
                                                         _hd4073040760_
                                                         _tl4072940762_
                                                         _e4073440765_
                                                         _hd4073340768_
                                                         _tl4073240770_
                                                         _e4073740773_
                                                         _hd4073640776_
                                                         _tl4073540778_
                                                         _e4074040781_
                                                         _hd4073940784_
                                                         _tl4073840786_)
                                                        (___kont4416544166_))))
                                                (___kont4416544166_))
                                            (___kont4416544166_))))
                                    (___kont4416544166_))))
                            (___kont4416544166_))))
                    (___kont4416544166_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx39217_
               _self39218_
               _methods39219_
               _slots39220_
               _class-check39221_
               _struct-check39222_
               _struct-assert39223_)
        (let* ((___stx4419744198_ _stx39217_)
               (_g3923539553_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx4419744198_)))))
          (let ((___kont4419944200_
                 (lambda (_L40664_ _L40665_ _L40666_ _L40667_)
                   (let ((__tmp46000
                          (let () (declare (not safe)) (gx#stx-e _L40665_))))
                     (declare (not safe))
                     (table-set! _methods39219_ __tmp46000 '#t))
                   (for-each
                    (lambda (_g4070040702_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e
                         _g4070040702_
                         _self39218_
                         _methods39219_
                         _slots39220_
                         _class-check39221_
                         _struct-check39222_
                         _struct-assert39223_)))
                    (let ((__tmp46001
                           (lambda (_g4070440707_ _g4070540709_)
                             (let ()
                               (declare (not safe))
                               (cons _g4070440707_ _g4070540709_)))))
                      (declare (not safe))
                      (foldr1 __tmp46001 '() _L40664_)))))
                (___kont4420344204_
                 (lambda (_L40499_ _L40500_ _L40501_ _L40502_ _L40503_)
                   (let ((__tmp46002
                          (let () (declare (not safe)) (gx#stx-e _L40500_))))
                     (declare (not safe))
                     (table-set! _methods39219_ __tmp46002 '#t))
                   (for-each
                    (lambda (_g4054340545_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e
                         _g4054340545_
                         _self39218_
                         _methods39219_
                         _slots39220_
                         _class-check39221_
                         _struct-check39222_
                         _struct-assert39223_)))
                    (let ((__tmp46003
                           (lambda (_g4054740550_ _g4054840552_)
                             (let ()
                               (declare (not safe))
                               (cons _g4054740550_ _g4054840552_)))))
                      (declare (not safe))
                      (foldr1 __tmp46003 '() _L40499_)))))
                (___kont4420744208_
                 (lambda (_L40332_ _L40333_ _L40334_)
                   (let ((__tmp46004
                          (let () (declare (not safe)) (gx#stx-e _L40332_))))
                     (declare (not safe))
                     (table-set! _slots39220_ __tmp46004 '#t))))
                (___kont4420944210_
                 (lambda (_L40209_ _L40210_ _L40211_ _L40212_)
                   (let ((__tmp46005
                          (let () (declare (not safe)) (gx#stx-e _L40210_))))
                     (declare (not safe))
                     (table-set! _slots39220_ __tmp46005 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e
                      _L40209_
                      _self39218_
                      _methods39219_
                      _slots39220_
                      _class-check39221_
                      _struct-check39222_
                      _struct-assert39223_))))
                (___kont4421144212_
                 (lambda (_L40093_ _L40094_)
                   (let ((__tmp46006
                          (##structure-ref
                           (let ((__tmp46007
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L40094_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46007))
                           '2
                           gxc#!class-getf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots39220_ __tmp46006 '#t))))
                (___kont4421344214_
                 (lambda (_L40005_ _L40006_ _L40007_)
                   (let ((__tmp46008
                          (##structure-ref
                           (let ((__tmp46009
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L40007_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46009))
                           '2
                           gxc#!class-setf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots39220_ __tmp46008 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e
                      _L40005_
                      _self39218_
                      _methods39219_
                      _slots39220_
                      _class-check39221_
                      _struct-check39222_
                      _struct-assert39223_))))
                (___kont4421544216_
                 (lambda (_L39913_ _L39914_)
                   (let ((__tmp46010
                          (##structure-ref
                           (let ((__tmp46011
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L39914_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46011))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _class-check39221_ __tmp46010 '#t))))
                (___kont4421744218_
                 (lambda (_L39829_ _L39830_)
                   (let ((__tmp46012
                          (##structure-ref
                           (let ((__tmp46013
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L39830_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46013))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _struct-check39222_ __tmp46012 '#t))))
                (___kont4421944220_
                 (lambda (_L39732_ _L39733_)
                   (let ((_getf39766_
                          (let ((__tmp46014
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L39733_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp46014))))
                     (if (##structure-ref
                          _getf39766_
                          '3
                          gxc#!struct-getf::t
                          '#f)
                         '#!void
                         (let ((__tmp46015
                                (##structure-ref
                                 _getf39766_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set!
                            _struct-assert39223_
                            __tmp46015
                            '#t))))))
                (___kont4422144222_
                 (lambda (_L39629_ _L39630_ _L39631_)
                   (let ((_setf39669_
                          (let ((__tmp46016
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L39631_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp46016))))
                     (if (##structure-ref
                          _setf39669_
                          '3
                          gxc#!struct-setf::t
                          '#f)
                         '#!void
                         (let ((__tmp46017
                                (##structure-ref
                                 _setf39669_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set! _struct-assert39223_ __tmp46017 '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e
                        _L39629_
                        _self39218_
                        _methods39219_
                        _slots39220_
                        _class-check39221_
                        _struct-check39222_
                        _struct-assert39223_)))))
                (___kont4422344224_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx39217_
                      _self39218_
                      _methods39219_
                      _slots39220_
                      _class-check39221_
                      _struct-check39222_
                      _struct-assert39223_)))))
            (let* ((___match4493444935_
                    (lambda (_e3952739565_
                             _hd3952639568_
                             _tl3952539570_
                             _e3953039573_
                             _hd3952939576_
                             _tl3952839578_
                             _e3953339581_
                             _hd3953239584_
                             _tl3953139586_
                             _e3953639589_
                             _hd3953539592_
                             _tl3953439594_
                             _e3953939597_
                             _hd3953839600_
                             _tl3953739602_
                             _e3954239605_
                             _hd3954139608_
                             _tl3954039610_
                             _e3954539613_
                             _hd3954439616_
                             _tl3954339618_
                             _e3954839621_
                             _hd3954739624_
                             _tl3954639626_)
                      (let ((_L39629_ _hd3954739624_)
                            (_L39630_ _hd3954439616_)
                            (_L39631_ _hd3953539592_))
                        (if (if (let ((__tmp46020
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L39630_
                                          _self39218_))))
                                  (declare (not safe))
                                  (not __tmp46020))
                                '#f
                                (let ((_$e39658_
                                       (let ((__tmp46018
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L39631_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp46018))))
                                  (and _$e39658_
                                       ((lambda (_t39661_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t39661_
                                                  'gxc#!struct-setf::t))
                                               (let ((_struct-t3966239664_
                                                      (let ((__tmp46019
                                                             (##structure-ref
                                                              _t39661_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp46019))))
                                                 (and _struct-t3966239664_
                                                      (let ((_struct-t39667_
                                                             _struct-t3966239664_))
                                                        (##structure-ref
                                                         _struct-t39667_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e39658_))))
                            (___kont4422144222_ _L39629_ _L39630_ _L39631_)
                            (___kont4422344224_)))))
                   (___match4492644927_
                    (lambda (_e3952739565_
                             _hd3952639568_
                             _tl3952539570_
                             _e3953039573_
                             _hd3952939576_
                             _tl3952839578_
                             _e3953339581_
                             _hd3953239584_
                             _tl3953139586_
                             _e3953639589_
                             _hd3953539592_
                             _tl3953439594_
                             _e3953939597_
                             _hd3953839600_
                             _tl3953739602_
                             _e3954239605_
                             _hd3954139608_
                             _tl3954039610_
                             _e3954539613_
                             _hd3954439616_
                             _tl3954339618_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3953739602_))
                          (let ((_e3954839621_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3953739602_))))
                            (let ((_tl3954639626_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3954839621_)))
                                  (_hd3954739624_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3954839621_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3954639626_))
                                  (___match4493444935_
                                   _e3952739565_
                                   _hd3952639568_
                                   _tl3952539570_
                                   _e3953039573_
                                   _hd3952939576_
                                   _tl3952839578_
                                   _e3953339581_
                                   _hd3953239584_
                                   _tl3953139586_
                                   _e3953639589_
                                   _hd3953539592_
                                   _tl3953439594_
                                   _e3953939597_
                                   _hd3953839600_
                                   _tl3953739602_
                                   _e3954239605_
                                   _hd3954139608_
                                   _tl3954039610_
                                   _e3954539613_
                                   _hd3954439616_
                                   _tl3954339618_
                                   _e3954839621_
                                   _hd3954739624_
                                   _tl3954639626_)
                                  (___kont4422344224_))))
                          (___kont4422344224_))))
                   (___match4487244873_
                    (lambda (_e3950339676_
                             _hd3950239679_
                             _tl3950139681_
                             _e3950639684_
                             _hd3950539687_
                             _tl3950439689_
                             _e3950939692_
                             _hd3950839695_
                             _tl3950739697_
                             _e3951239700_
                             _hd3951139703_
                             _tl3951039705_
                             _e3951539708_
                             _hd3951439711_
                             _tl3951339713_
                             _e3951839716_
                             _hd3951739719_
                             _tl3951639721_
                             _e3952139724_
                             _hd3952039727_
                             _tl3951939729_)
                      (let ((_L39732_ _hd3952039727_)
                            (_L39733_ _hd3951139703_))
                        (if (if (let ((__tmp46023
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L39732_
                                          _self39218_))))
                                  (declare (not safe))
                                  (not __tmp46023))
                                '#f
                                (let ((_$e39755_
                                       (let ((__tmp46021
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L39733_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp46021))))
                                  (and _$e39755_
                                       ((lambda (_t39758_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t39758_
                                                  'gxc#!struct-getf::t))
                                               (let ((_struct-t3975939761_
                                                      (let ((__tmp46022
                                                             (##structure-ref
                                                              _t39758_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp46022))))
                                                 (and _struct-t3975939761_
                                                      (let ((_struct-t39764_
                                                             _struct-t3975939761_))
                                                        (##structure-ref
                                                         _struct-t39764_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e39755_))))
                            (___kont4421944220_ _L39732_ _L39733_)
                            (___kont4422344224_)))))
                   (___match4481644817_
                    (lambda (_e3948039773_
                             _hd3947939776_
                             _tl3947839778_
                             _e3948339781_
                             _hd3948239784_
                             _tl3948139786_
                             _e3948639789_
                             _hd3948539792_
                             _tl3948439794_
                             _e3948939797_
                             _hd3948839800_
                             _tl3948739802_
                             _e3949239805_
                             _hd3949139808_
                             _tl3949039810_
                             _e3949539813_
                             _hd3949439816_
                             _tl3949339818_
                             _e3949839821_
                             _hd3949739824_
                             _tl3949639826_)
                      (let ((_L39829_ _hd3949739824_)
                            (_L39830_ _hd3948839800_))
                        (if (and (let ((__tmp46024
                                        (let ((__tmp46025
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L39830_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46025))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46024
                                    'gxc#!struct-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39829_
                                    _self39218_)))
                            (___kont4421744218_ _L39829_ _L39830_)
                            (___match4487244873_
                             _e3948039773_
                             _hd3947939776_
                             _tl3947839778_
                             _e3948339781_
                             _hd3948239784_
                             _tl3948139786_
                             _e3948639789_
                             _hd3948539792_
                             _tl3948439794_
                             _e3948939797_
                             _hd3948839800_
                             _tl3948739802_
                             _e3949239805_
                             _hd3949139808_
                             _tl3949039810_
                             _e3949539813_
                             _hd3949439816_
                             _tl3949339818_
                             _e3949839821_
                             _hd3949739824_
                             _tl3949639826_)))))
                   (___match4476044761_
                    (lambda (_e3945739857_
                             _hd3945639860_
                             _tl3945539862_
                             _e3946039865_
                             _hd3945939868_
                             _tl3945839870_
                             _e3946339873_
                             _hd3946239876_
                             _tl3946139878_
                             _e3946639881_
                             _hd3946539884_
                             _tl3946439886_
                             _e3946939889_
                             _hd3946839892_
                             _tl3946739894_
                             _e3947239897_
                             _hd3947139900_
                             _tl3947039902_
                             _e3947539905_
                             _hd3947439908_
                             _tl3947339910_)
                      (let ((_L39913_ _hd3947439908_)
                            (_L39914_ _hd3946539884_))
                        (if (and (let ((__tmp46026
                                        (let ((__tmp46027
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L39914_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46027))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46026
                                    'gxc#!class-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39913_
                                    _self39218_)))
                            (___kont4421544216_ _L39913_ _L39914_)
                            (___match4481644817_
                             _e3945739857_
                             _hd3945639860_
                             _tl3945539862_
                             _e3946039865_
                             _hd3945939868_
                             _tl3945839870_
                             _e3946339873_
                             _hd3946239876_
                             _tl3946139878_
                             _e3946639881_
                             _hd3946539884_
                             _tl3946439886_
                             _e3946939889_
                             _hd3946839892_
                             _tl3946739894_
                             _e3947239897_
                             _hd3947139900_
                             _tl3947039902_
                             _e3947539905_
                             _hd3947439908_
                             _tl3947339910_)))))
                   (___match4475844759_
                    (lambda (_e3945739857_
                             _hd3945639860_
                             _tl3945539862_
                             _e3946039865_
                             _hd3945939868_
                             _tl3945839870_
                             _e3946339873_
                             _hd3946239876_
                             _tl3946139878_
                             _e3946639881_
                             _hd3946539884_
                             _tl3946439886_
                             _e3946939889_
                             _hd3946839892_
                             _tl3946739894_
                             _e3947239897_
                             _hd3947139900_
                             _tl3947039902_
                             _e3947539905_
                             _hd3947439908_
                             _tl3947339910_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3946739894_))
                          (___match4476044761_
                           _e3945739857_
                           _hd3945639860_
                           _tl3945539862_
                           _e3946039865_
                           _hd3945939868_
                           _tl3945839870_
                           _e3946339873_
                           _hd3946239876_
                           _tl3946139878_
                           _e3946639881_
                           _hd3946539884_
                           _tl3946439886_
                           _e3946939889_
                           _hd3946839892_
                           _tl3946739894_
                           _e3947239897_
                           _hd3947139900_
                           _tl3947039902_
                           _e3947539905_
                           _hd3947439908_
                           _tl3947339910_)
                          (___match4492644927_
                           _e3945739857_
                           _hd3945639860_
                           _tl3945539862_
                           _e3946039865_
                           _hd3945939868_
                           _tl3945839870_
                           _e3946339873_
                           _hd3946239876_
                           _tl3946139878_
                           _e3946639881_
                           _hd3946539884_
                           _tl3946439886_
                           _e3946939889_
                           _hd3946839892_
                           _tl3946739894_
                           _e3947239897_
                           _hd3947139900_
                           _tl3947039902_
                           _e3947539905_
                           _hd3947439908_
                           _tl3947339910_))))
                   (___match4470444705_
                    (lambda (_e3943139941_
                             _hd3943039944_
                             _tl3942939946_
                             _e3943439949_
                             _hd3943339952_
                             _tl3943239954_
                             _e3943739957_
                             _hd3943639960_
                             _tl3943539962_
                             _e3944039965_
                             _hd3943939968_
                             _tl3943839970_
                             _e3944339973_
                             _hd3944239976_
                             _tl3944139978_
                             _e3944639981_
                             _hd3944539984_
                             _tl3944439986_
                             _e3944939989_
                             _hd3944839992_
                             _tl3944739994_
                             _e3945239997_
                             _hd3945140000_
                             _tl3945040002_)
                      (let ((_L40005_ _hd3945140000_)
                            (_L40006_ _hd3944839992_)
                            (_L40007_ _hd3943939968_))
                        (if (and (let ((__tmp46028
                                        (let ((__tmp46029
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L40007_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46029))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46028
                                    'gxc#!class-setf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40006_
                                    _self39218_)))
                            (___kont4421344214_ _L40005_ _L40006_ _L40007_)
                            (___match4493444935_
                             _e3943139941_
                             _hd3943039944_
                             _tl3942939946_
                             _e3943439949_
                             _hd3943339952_
                             _tl3943239954_
                             _e3943739957_
                             _hd3943639960_
                             _tl3943539962_
                             _e3944039965_
                             _hd3943939968_
                             _tl3943839970_
                             _e3944339973_
                             _hd3944239976_
                             _tl3944139978_
                             _e3944639981_
                             _hd3944539984_
                             _tl3944439986_
                             _e3944939989_
                             _hd3944839992_
                             _tl3944739994_
                             _e3945239997_
                             _hd3945140000_
                             _tl3945040002_)))))
                   (___match4470244703_
                    (lambda (_e3943139941_
                             _hd3943039944_
                             _tl3942939946_
                             _e3943439949_
                             _hd3943339952_
                             _tl3943239954_
                             _e3943739957_
                             _hd3943639960_
                             _tl3943539962_
                             _e3944039965_
                             _hd3943939968_
                             _tl3943839970_
                             _e3944339973_
                             _hd3944239976_
                             _tl3944139978_
                             _e3944639981_
                             _hd3944539984_
                             _tl3944439986_
                             _e3944939989_
                             _hd3944839992_
                             _tl3944739994_
                             _e3945239997_
                             _hd3945140000_
                             _tl3945040002_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3945040002_))
                          (___match4470444705_
                           _e3943139941_
                           _hd3943039944_
                           _tl3942939946_
                           _e3943439949_
                           _hd3943339952_
                           _tl3943239954_
                           _e3943739957_
                           _hd3943639960_
                           _tl3943539962_
                           _e3944039965_
                           _hd3943939968_
                           _tl3943839970_
                           _e3944339973_
                           _hd3944239976_
                           _tl3944139978_
                           _e3944639981_
                           _hd3944539984_
                           _tl3944439986_
                           _e3944939989_
                           _hd3944839992_
                           _tl3944739994_
                           _e3945239997_
                           _hd3945140000_
                           _tl3945040002_)
                          (___kont4422344224_))))
                   (___match4469644697_
                    (lambda (_e3943139941_
                             _hd3943039944_
                             _tl3942939946_
                             _e3943439949_
                             _hd3943339952_
                             _tl3943239954_
                             _e3943739957_
                             _hd3943639960_
                             _tl3943539962_
                             _e3944039965_
                             _hd3943939968_
                             _tl3943839970_
                             _e3944339973_
                             _hd3944239976_
                             _tl3944139978_
                             _e3944639981_
                             _hd3944539984_
                             _tl3944439986_
                             _e3944939989_
                             _hd3944839992_
                             _tl3944739994_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3944139978_))
                          (let ((_e3945239997_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3944139978_))))
                            (let ((_tl3945040002_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3945239997_)))
                                  (_hd3945140000_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3945239997_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3945040002_))
                                  (___match4470444705_
                                   _e3943139941_
                                   _hd3943039944_
                                   _tl3942939946_
                                   _e3943439949_
                                   _hd3943339952_
                                   _tl3943239954_
                                   _e3943739957_
                                   _hd3943639960_
                                   _tl3943539962_
                                   _e3944039965_
                                   _hd3943939968_
                                   _tl3943839970_
                                   _e3944339973_
                                   _hd3944239976_
                                   _tl3944139978_
                                   _e3944639981_
                                   _hd3944539984_
                                   _tl3944439986_
                                   _e3944939989_
                                   _hd3944839992_
                                   _tl3944739994_
                                   _e3945239997_
                                   _hd3945140000_
                                   _tl3945040002_)
                                  (___kont4422344224_))))
                          (___match4475844759_
                           _e3943139941_
                           _hd3943039944_
                           _tl3942939946_
                           _e3943439949_
                           _hd3943339952_
                           _tl3943239954_
                           _e3943739957_
                           _hd3943639960_
                           _tl3943539962_
                           _e3944039965_
                           _hd3943939968_
                           _tl3943839970_
                           _e3944339973_
                           _hd3944239976_
                           _tl3944139978_
                           _e3944639981_
                           _hd3944539984_
                           _tl3944439986_
                           _e3944939989_
                           _hd3944839992_
                           _tl3944739994_))))
                   (___match4464244643_
                    (lambda (_e3940740037_
                             _hd3940640040_
                             _tl3940540042_
                             _e3941040045_
                             _hd3940940048_
                             _tl3940840050_
                             _e3941340053_
                             _hd3941240056_
                             _tl3941140058_
                             _e3941640061_
                             _hd3941540064_
                             _tl3941440066_
                             _e3941940069_
                             _hd3941840072_
                             _tl3941740074_
                             _e3942240077_
                             _hd3942140080_
                             _tl3942040082_
                             _e3942540085_
                             _hd3942440088_
                             _tl3942340090_)
                      (let ((_L40093_ _hd3942440088_)
                            (_L40094_ _hd3941540064_))
                        (if (and (let ((__tmp46030
                                        (let ((__tmp46031
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L40094_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46031))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46030
                                    'gxc#!class-getf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40093_
                                    _self39218_)))
                            (___kont4421144212_ _L40093_ _L40094_)
                            (___match4476044761_
                             _e3940740037_
                             _hd3940640040_
                             _tl3940540042_
                             _e3941040045_
                             _hd3940940048_
                             _tl3940840050_
                             _e3941340053_
                             _hd3941240056_
                             _tl3941140058_
                             _e3941640061_
                             _hd3941540064_
                             _tl3941440066_
                             _e3941940069_
                             _hd3941840072_
                             _tl3941740074_
                             _e3942240077_
                             _hd3942140080_
                             _tl3942040082_
                             _e3942540085_
                             _hd3942440088_
                             _tl3942340090_)))))
                   (___match4464044641_
                    (lambda (_e3940740037_
                             _hd3940640040_
                             _tl3940540042_
                             _e3941040045_
                             _hd3940940048_
                             _tl3940840050_
                             _e3941340053_
                             _hd3941240056_
                             _tl3941140058_
                             _e3941640061_
                             _hd3941540064_
                             _tl3941440066_
                             _e3941940069_
                             _hd3941840072_
                             _tl3941740074_
                             _e3942240077_
                             _hd3942140080_
                             _tl3942040082_
                             _e3942540085_
                             _hd3942440088_
                             _tl3942340090_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3941740074_))
                          (___match4464244643_
                           _e3940740037_
                           _hd3940640040_
                           _tl3940540042_
                           _e3941040045_
                           _hd3940940048_
                           _tl3940840050_
                           _e3941340053_
                           _hd3941240056_
                           _tl3941140058_
                           _e3941640061_
                           _hd3941540064_
                           _tl3941440066_
                           _e3941940069_
                           _hd3941840072_
                           _tl3941740074_
                           _e3942240077_
                           _hd3942140080_
                           _tl3942040082_
                           _e3942540085_
                           _hd3942440088_
                           _tl3942340090_)
                          (___match4469644697_
                           _e3940740037_
                           _hd3940640040_
                           _tl3940540042_
                           _e3941040045_
                           _hd3940940048_
                           _tl3940840050_
                           _e3941340053_
                           _hd3941240056_
                           _tl3941140058_
                           _e3941640061_
                           _hd3941540064_
                           _tl3941440066_
                           _e3941940069_
                           _hd3941840072_
                           _tl3941740074_
                           _e3942240077_
                           _hd3942140080_
                           _tl3942040082_
                           _e3942540085_
                           _hd3942440088_
                           _tl3942340090_))))
                   (___match4458644587_
                    (lambda (_e3937240121_
                             _hd3937140124_
                             _tl3937040126_
                             _e3937540129_
                             _hd3937440132_
                             _tl3937340134_
                             _e3937840137_
                             _hd3937740140_
                             _tl3937640142_
                             _e3938140145_
                             _hd3938040148_
                             _tl3937940150_
                             _e3938440153_
                             _hd3938340156_
                             _tl3938240158_
                             _e3938740161_
                             _hd3938640164_
                             _tl3938540166_
                             _e3939040169_
                             _hd3938940172_
                             _tl3938840174_
                             _e3939340177_
                             _hd3939240180_
                             _tl3939140182_
                             _e3939640185_
                             _hd3939540188_
                             _tl3939440190_
                             _e3939940193_
                             _hd3939840196_
                             _tl3939740198_
                             _e3940240201_
                             _hd3940140204_
                             _tl3940040206_)
                      (let ((_L40209_ _hd3940140204_)
                            (_L40210_ _hd3939840196_)
                            (_L40211_ _hd3938940172_)
                            (_L40212_ _hd3938040148_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40212_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40212_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40211_
                                    _self39218_)))
                            (___kont4420944210_
                             _L40209_
                             _L40210_
                             _L40211_
                             _L40212_)
                            (___kont4422344224_)))))
                   (___match4457844579_
                    (lambda (_e3937240121_
                             _hd3937140124_
                             _tl3937040126_
                             _e3937540129_
                             _hd3937440132_
                             _tl3937340134_
                             _e3937840137_
                             _hd3937740140_
                             _tl3937640142_
                             _e3938140145_
                             _hd3938040148_
                             _tl3937940150_
                             _e3938440153_
                             _hd3938340156_
                             _tl3938240158_
                             _e3938740161_
                             _hd3938640164_
                             _tl3938540166_
                             _e3939040169_
                             _hd3938940172_
                             _tl3938840174_
                             _e3939340177_
                             _hd3939240180_
                             _tl3939140182_
                             _e3939640185_
                             _hd3939540188_
                             _tl3939440190_
                             _e3939940193_
                             _hd3939840196_
                             _tl3939740198_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3939140182_))
                          (let ((_e3940240201_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3939140182_))))
                            (let ((_tl3940040206_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3940240201_)))
                                  (_hd3940140204_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3940240201_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3940040206_))
                                  (___match4458644587_
                                   _e3937240121_
                                   _hd3937140124_
                                   _tl3937040126_
                                   _e3937540129_
                                   _hd3937440132_
                                   _tl3937340134_
                                   _e3937840137_
                                   _hd3937740140_
                                   _tl3937640142_
                                   _e3938140145_
                                   _hd3938040148_
                                   _tl3937940150_
                                   _e3938440153_
                                   _hd3938340156_
                                   _tl3938240158_
                                   _e3938740161_
                                   _hd3938640164_
                                   _tl3938540166_
                                   _e3939040169_
                                   _hd3938940172_
                                   _tl3938840174_
                                   _e3939340177_
                                   _hd3939240180_
                                   _tl3939140182_
                                   _e3939640185_
                                   _hd3939540188_
                                   _tl3939440190_
                                   _e3939940193_
                                   _hd3939840196_
                                   _tl3939740198_
                                   _e3940240201_
                                   _hd3940140204_
                                   _tl3940040206_)
                                  (___kont4422344224_))))
                          (___match4470244703_
                           _e3937240121_
                           _hd3937140124_
                           _tl3937040126_
                           _e3937540129_
                           _hd3937440132_
                           _tl3937340134_
                           _e3937840137_
                           _hd3937740140_
                           _tl3937640142_
                           _e3938140145_
                           _hd3938040148_
                           _tl3937940150_
                           _e3938440153_
                           _hd3938340156_
                           _tl3938240158_
                           _e3938740161_
                           _hd3938640164_
                           _tl3938540166_
                           _e3939040169_
                           _hd3938940172_
                           _tl3938840174_
                           _e3939340177_
                           _hd3939240180_
                           _tl3939140182_))))
                   (___match4450044501_
                    (lambda (_e3933840252_
                             _hd3933740255_
                             _tl3933640257_
                             _e3934140260_
                             _hd3934040263_
                             _tl3933940265_
                             _e3934440268_
                             _hd3934340271_
                             _tl3934240273_
                             _e3934740276_
                             _hd3934640279_
                             _tl3934540281_
                             _e3935040284_
                             _hd3934940287_
                             _tl3934840289_
                             _e3935340292_
                             _hd3935240295_
                             _tl3935140297_
                             _e3935640300_
                             _hd3935540303_
                             _tl3935440305_
                             _e3935940308_
                             _hd3935840311_
                             _tl3935740313_
                             _e3936240316_
                             _hd3936140319_
                             _tl3936040321_
                             _e3936540324_
                             _hd3936440327_
                             _tl3936340329_)
                      (let ((_L40332_ _hd3936440327_)
                            (_L40333_ _hd3935540303_)
                            (_L40334_ _hd3934640279_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40334_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40334_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40333_
                                    _self39218_)))
                            (___kont4420744208_ _L40332_ _L40333_ _L40334_)
                            (___match4470444705_
                             _e3933840252_
                             _hd3933740255_
                             _tl3933640257_
                             _e3934140260_
                             _hd3934040263_
                             _tl3933940265_
                             _e3934440268_
                             _hd3934340271_
                             _tl3934240273_
                             _e3934740276_
                             _hd3934640279_
                             _tl3934540281_
                             _e3935040284_
                             _hd3934940287_
                             _tl3934840289_
                             _e3935340292_
                             _hd3935240295_
                             _tl3935140297_
                             _e3935640300_
                             _hd3935540303_
                             _tl3935440305_
                             _e3935940308_
                             _hd3935840311_
                             _tl3935740313_)))))
                   (___match4449844499_
                    (lambda (_e3933840252_
                             _hd3933740255_
                             _tl3933640257_
                             _e3934140260_
                             _hd3934040263_
                             _tl3933940265_
                             _e3934440268_
                             _hd3934340271_
                             _tl3934240273_
                             _e3934740276_
                             _hd3934640279_
                             _tl3934540281_
                             _e3935040284_
                             _hd3934940287_
                             _tl3934840289_
                             _e3935340292_
                             _hd3935240295_
                             _tl3935140297_
                             _e3935640300_
                             _hd3935540303_
                             _tl3935440305_
                             _e3935940308_
                             _hd3935840311_
                             _tl3935740313_
                             _e3936240316_
                             _hd3936140319_
                             _tl3936040321_
                             _e3936540324_
                             _hd3936440327_
                             _tl3936340329_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3935740313_))
                          (___match4450044501_
                           _e3933840252_
                           _hd3933740255_
                           _tl3933640257_
                           _e3934140260_
                           _hd3934040263_
                           _tl3933940265_
                           _e3934440268_
                           _hd3934340271_
                           _tl3934240273_
                           _e3934740276_
                           _hd3934640279_
                           _tl3934540281_
                           _e3935040284_
                           _hd3934940287_
                           _tl3934840289_
                           _e3935340292_
                           _hd3935240295_
                           _tl3935140297_
                           _e3935640300_
                           _hd3935540303_
                           _tl3935440305_
                           _e3935940308_
                           _hd3935840311_
                           _tl3935740313_
                           _e3936240316_
                           _hd3936140319_
                           _tl3936040321_
                           _e3936540324_
                           _hd3936440327_
                           _tl3936340329_)
                          (___match4457844579_
                           _e3933840252_
                           _hd3933740255_
                           _tl3933640257_
                           _e3934140260_
                           _hd3934040263_
                           _tl3933940265_
                           _e3934440268_
                           _hd3934340271_
                           _tl3934240273_
                           _e3934740276_
                           _hd3934640279_
                           _tl3934540281_
                           _e3935040284_
                           _hd3934940287_
                           _tl3934840289_
                           _e3935340292_
                           _hd3935240295_
                           _tl3935140297_
                           _e3935640300_
                           _hd3935540303_
                           _tl3935440305_
                           _e3935940308_
                           _hd3935840311_
                           _tl3935740313_
                           _e3936240316_
                           _hd3936140319_
                           _tl3936040321_
                           _e3936540324_
                           _hd3936440327_
                           _tl3936340329_))))
                   (___match4448844489_
                    (lambda (_e3933840252_
                             _hd3933740255_
                             _tl3933640257_
                             _e3934140260_
                             _hd3934040263_
                             _tl3933940265_
                             _e3934440268_
                             _hd3934340271_
                             _tl3934240273_
                             _e3934740276_
                             _hd3934640279_
                             _tl3934540281_
                             _e3935040284_
                             _hd3934940287_
                             _tl3934840289_
                             _e3935340292_
                             _hd3935240295_
                             _tl3935140297_
                             _e3935640300_
                             _hd3935540303_
                             _tl3935440305_
                             _e3935940308_
                             _hd3935840311_
                             _tl3935740313_
                             _e3936240316_
                             _hd3936140319_
                             _tl3936040321_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd3936140319_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl3936040321_))
                              (let ((_e3936540324_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl3936040321_))))
                                (let ((_tl3936340329_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3936540324_)))
                                      (_hd3936440327_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3936540324_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl3936340329_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl3935740313_))
                                          (___match4450044501_
                                           _e3933840252_
                                           _hd3933740255_
                                           _tl3933640257_
                                           _e3934140260_
                                           _hd3934040263_
                                           _tl3933940265_
                                           _e3934440268_
                                           _hd3934340271_
                                           _tl3934240273_
                                           _e3934740276_
                                           _hd3934640279_
                                           _tl3934540281_
                                           _e3935040284_
                                           _hd3934940287_
                                           _tl3934840289_
                                           _e3935340292_
                                           _hd3935240295_
                                           _tl3935140297_
                                           _e3935640300_
                                           _hd3935540303_
                                           _tl3935440305_
                                           _e3935940308_
                                           _hd3935840311_
                                           _tl3935740313_
                                           _e3936240316_
                                           _hd3936140319_
                                           _tl3936040321_
                                           _e3936540324_
                                           _hd3936440327_
                                           _tl3936340329_)
                                          (___match4457844579_
                                           _e3933840252_
                                           _hd3933740255_
                                           _tl3933640257_
                                           _e3934140260_
                                           _hd3934040263_
                                           _tl3933940265_
                                           _e3934440268_
                                           _hd3934340271_
                                           _tl3934240273_
                                           _e3934740276_
                                           _hd3934640279_
                                           _tl3934540281_
                                           _e3935040284_
                                           _hd3934940287_
                                           _tl3934840289_
                                           _e3935340292_
                                           _hd3935240295_
                                           _tl3935140297_
                                           _e3935640300_
                                           _hd3935540303_
                                           _tl3935440305_
                                           _e3935940308_
                                           _hd3935840311_
                                           _tl3935740313_
                                           _e3936240316_
                                           _hd3936140319_
                                           _tl3936040321_
                                           _e3936540324_
                                           _hd3936440327_
                                           _tl3936340329_))
                                      (___match4470244703_
                                       _e3933840252_
                                       _hd3933740255_
                                       _tl3933640257_
                                       _e3934140260_
                                       _hd3934040263_
                                       _tl3933940265_
                                       _e3934440268_
                                       _hd3934340271_
                                       _tl3934240273_
                                       _e3934740276_
                                       _hd3934640279_
                                       _tl3934540281_
                                       _e3935040284_
                                       _hd3934940287_
                                       _tl3934840289_
                                       _e3935340292_
                                       _hd3935240295_
                                       _tl3935140297_
                                       _e3935640300_
                                       _hd3935540303_
                                       _tl3935440305_
                                       _e3935940308_
                                       _hd3935840311_
                                       _tl3935740313_))))
                              (___match4470244703_
                               _e3933840252_
                               _hd3933740255_
                               _tl3933640257_
                               _e3934140260_
                               _hd3934040263_
                               _tl3933940265_
                               _e3934440268_
                               _hd3934340271_
                               _tl3934240273_
                               _e3934740276_
                               _hd3934640279_
                               _tl3934540281_
                               _e3935040284_
                               _hd3934940287_
                               _tl3934840289_
                               _e3935340292_
                               _hd3935240295_
                               _tl3935140297_
                               _e3935640300_
                               _hd3935540303_
                               _tl3935440305_
                               _e3935940308_
                               _hd3935840311_
                               _tl3935740313_))
                          (___match4470244703_
                           _e3933840252_
                           _hd3933740255_
                           _tl3933640257_
                           _e3934140260_
                           _hd3934040263_
                           _tl3933940265_
                           _e3934440268_
                           _hd3934340271_
                           _tl3934240273_
                           _e3934740276_
                           _hd3934640279_
                           _tl3934540281_
                           _e3935040284_
                           _hd3934940287_
                           _tl3934840289_
                           _e3935340292_
                           _hd3935240295_
                           _tl3935140297_
                           _e3935640300_
                           _hd3935540303_
                           _tl3935440305_
                           _e3935940308_
                           _hd3935840311_
                           _tl3935740313_))))
                   (___match4442044421_
                    (lambda (_e3928740371_
                             _hd3928640374_
                             _tl3928540376_
                             _e3929040379_
                             _hd3928940382_
                             _tl3928840384_
                             _e3929340387_
                             _hd3929240390_
                             _tl3929140392_
                             _e3929640395_
                             _hd3929540398_
                             _tl3929440400_
                             _e3929940403_
                             _hd3929840406_
                             _tl3929740408_
                             _e3930240411_
                             _hd3930140414_
                             _tl3930040416_
                             _e3930540419_
                             _hd3930440422_
                             _tl3930340424_
                             _e3930840427_
                             _hd3930740430_
                             _tl3930640432_
                             _e3931140435_
                             _hd3931040438_
                             _tl3930940440_
                             _e3931440443_
                             _hd3931340446_
                             _tl3931240448_
                             _e3931740451_
                             _hd3931640454_
                             _tl3931540456_
                             _e3932040459_
                             _hd3931940462_
                             _tl3931840464_
                             _e3932340467_
                             _hd3932240470_
                             _tl3932140472_
                             ___splice4420544206_
                             _target3932440475_
                             _tl3932640477_)
                      (letrec ((_loop3932740480_
                                (lambda (_hd3932540483_ _args3933140485_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd3932540483_))
                                      (let ((_e3932840488_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd3932540483_))))
                                        (let ((_lp-tl3933040493_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3932840488_)))
                                              (_lp-hd3932940491_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3932840488_))))
                                          (let ((__tmp46032
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd3932940491_
                                                         _args3933140485_))))
                                            (declare (not safe))
                                            (_loop3932740480_
                                             _lp-tl3933040493_
                                             __tmp46032))))
                                      (let ((_args3933240496_
                                             (reverse _args3933140485_)))
                                        (let ((_L40499_ _args3933240496_)
                                              (_L40500_ _hd3932240470_)
                                              (_L40501_ _hd3931340446_)
                                              (_L40502_ _hd3930440422_)
                                              (_L40503_ _hd3929540398_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40503_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40502_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L40501_
                                                      _self39218_)))
                                              (___kont4420344204_
                                               _L40499_
                                               _L40500_
                                               _L40501_
                                               _L40502_
                                               _L40503_)
                                              (___kont4422344224_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop3932740480_ _target3932440475_ '())))))
                   (___match4437844379_
                    (lambda (_e3928740371_
                             _hd3928640374_
                             _tl3928540376_
                             _e3929040379_
                             _hd3928940382_
                             _tl3928840384_
                             _e3929340387_
                             _hd3929240390_
                             _tl3929140392_
                             _e3929640395_
                             _hd3929540398_
                             _tl3929440400_
                             _e3929940403_
                             _hd3929840406_
                             _tl3929740408_
                             _e3930240411_
                             _hd3930140414_
                             _tl3930040416_
                             _e3930540419_
                             _hd3930440422_
                             _tl3930340424_
                             _e3930840427_
                             _hd3930740430_
                             _tl3930640432_
                             _e3931140435_
                             _hd3931040438_
                             _tl3930940440_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd3931040438_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl3930940440_))
                              (let ((_e3931440443_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl3930940440_))))
                                (let ((_tl3931240448_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3931440443_)))
                                      (_hd3931340446_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3931440443_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl3931240448_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl3930640432_))
                                          (let ((_e3931740451_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl3930640432_))))
                                            (let ((_tl3931540456_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3931740451_)))
                                                  (_hd3931640454_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3931740451_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd3931640454_))
                                                  (let ((_e3932040459_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd3931640454_))))
                                                    (let ((_tl3931840464_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3932040459_)))
                                                          (_hd3931940462_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3932040459_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd3931940462_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd3931940462_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3931840464_))
                          (let ((_e3932340467_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3931840464_))))
                            (let ((_tl3932140472_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3932340467_)))
                                  (_hd3932240470_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3932340467_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3932140472_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl3931540456_))
                                      (let ((___splice4420544206_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl3931540456_
                                                '0))))
                                        (let ((_tl3932640477_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4420544206_
                                                  '1)))
                                              (_target3932440475_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4420544206_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl3932640477_))
                                              (___match4442044421_
                                               _e3928740371_
                                               _hd3928640374_
                                               _tl3928540376_
                                               _e3929040379_
                                               _hd3928940382_
                                               _tl3928840384_
                                               _e3929340387_
                                               _hd3929240390_
                                               _tl3929140392_
                                               _e3929640395_
                                               _hd3929540398_
                                               _tl3929440400_
                                               _e3929940403_
                                               _hd3929840406_
                                               _tl3929740408_
                                               _e3930240411_
                                               _hd3930140414_
                                               _tl3930040416_
                                               _e3930540419_
                                               _hd3930440422_
                                               _tl3930340424_
                                               _e3930840427_
                                               _hd3930740430_
                                               _tl3930640432_
                                               _e3931140435_
                                               _hd3931040438_
                                               _tl3930940440_
                                               _e3931440443_
                                               _hd3931340446_
                                               _tl3931240448_
                                               _e3931740451_
                                               _hd3931640454_
                                               _tl3931540456_
                                               _e3932040459_
                                               _hd3931940462_
                                               _tl3931840464_
                                               _e3932340467_
                                               _hd3932240470_
                                               _tl3932140472_
                                               ___splice4420544206_
                                               _target3932440475_
                                               _tl3932640477_)
                                              (___kont4422344224_))))
                                      (___kont4422344224_))
                                  (___kont4422344224_))))
                          (___kont4422344224_))
                      (___kont4422344224_))
                  (___kont4422344224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4422344224_))))
                                          (___match4470244703_
                                           _e3928740371_
                                           _hd3928640374_
                                           _tl3928540376_
                                           _e3929040379_
                                           _hd3928940382_
                                           _tl3928840384_
                                           _e3929340387_
                                           _hd3929240390_
                                           _tl3929140392_
                                           _e3929640395_
                                           _hd3929540398_
                                           _tl3929440400_
                                           _e3929940403_
                                           _hd3929840406_
                                           _tl3929740408_
                                           _e3930240411_
                                           _hd3930140414_
                                           _tl3930040416_
                                           _e3930540419_
                                           _hd3930440422_
                                           _tl3930340424_
                                           _e3930840427_
                                           _hd3930740430_
                                           _tl3930640432_))
                                      (___match4470244703_
                                       _e3928740371_
                                       _hd3928640374_
                                       _tl3928540376_
                                       _e3929040379_
                                       _hd3928940382_
                                       _tl3928840384_
                                       _e3929340387_
                                       _hd3929240390_
                                       _tl3929140392_
                                       _e3929640395_
                                       _hd3929540398_
                                       _tl3929440400_
                                       _e3929940403_
                                       _hd3929840406_
                                       _tl3929740408_
                                       _e3930240411_
                                       _hd3930140414_
                                       _tl3930040416_
                                       _e3930540419_
                                       _hd3930440422_
                                       _tl3930340424_
                                       _e3930840427_
                                       _hd3930740430_
                                       _tl3930640432_))))
                              (___match4470244703_
                               _e3928740371_
                               _hd3928640374_
                               _tl3928540376_
                               _e3929040379_
                               _hd3928940382_
                               _tl3928840384_
                               _e3929340387_
                               _hd3929240390_
                               _tl3929140392_
                               _e3929640395_
                               _hd3929540398_
                               _tl3929440400_
                               _e3929940403_
                               _hd3929840406_
                               _tl3929740408_
                               _e3930240411_
                               _hd3930140414_
                               _tl3930040416_
                               _e3930540419_
                               _hd3930440422_
                               _tl3930340424_
                               _e3930840427_
                               _hd3930740430_
                               _tl3930640432_))
                          (___match4448844489_
                           _e3928740371_
                           _hd3928640374_
                           _tl3928540376_
                           _e3929040379_
                           _hd3928940382_
                           _tl3928840384_
                           _e3929340387_
                           _hd3929240390_
                           _tl3929140392_
                           _e3929640395_
                           _hd3929540398_
                           _tl3929440400_
                           _e3929940403_
                           _hd3929840406_
                           _tl3929740408_
                           _e3930240411_
                           _hd3930140414_
                           _tl3930040416_
                           _e3930540419_
                           _hd3930440422_
                           _tl3930340424_
                           _e3930840427_
                           _hd3930740430_
                           _tl3930640432_
                           _e3931140435_
                           _hd3931040438_
                           _tl3930940440_))))
                   (___match4431044311_
                    (lambda (_e3924340560_
                             _hd3924240563_
                             _tl3924140565_
                             _e3924640568_
                             _hd3924540571_
                             _tl3924440573_
                             _e3924940576_
                             _hd3924840579_
                             _tl3924740581_
                             _e3925240584_
                             _hd3925140587_
                             _tl3925040589_
                             _e3925540592_
                             _hd3925440595_
                             _tl3925340597_
                             _e3925840600_
                             _hd3925740603_
                             _tl3925640605_
                             _e3926140608_
                             _hd3926040611_
                             _tl3925940613_
                             _e3926440616_
                             _hd3926340619_
                             _tl3926240621_
                             _e3926740624_
                             _hd3926640627_
                             _tl3926540629_
                             _e3927040632_
                             _hd3926940635_
                             _tl3926840637_
                             ___splice4420144202_
                             _target3927140640_
                             _tl3927340642_)
                      (letrec ((_loop3927440645_
                                (lambda (_hd3927240648_ _args3927840650_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd3927240648_))
                                      (let ((_e3927540653_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd3927240648_))))
                                        (let ((_lp-tl3927740658_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3927540653_)))
                                              (_lp-hd3927640656_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3927540653_))))
                                          (let ((__tmp46033
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd3927640656_
                                                         _args3927840650_))))
                                            (declare (not safe))
                                            (_loop3927440645_
                                             _lp-tl3927740658_
                                             __tmp46033))))
                                      (let ((_args3927940661_
                                             (reverse _args3927840650_)))
                                        (let ((_L40664_ _args3927940661_)
                                              (_L40665_ _hd3926940635_)
                                              (_L40666_ _hd3926040611_)
                                              (_L40667_ _hd3925140587_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40667_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L40666_
                                                      _self39218_)))
                                              (___kont4419944200_
                                               _L40664_
                                               _L40665_
                                               _L40666_
                                               _L40667_)
                                              (___match4449844499_
                                               _e3924340560_
                                               _hd3924240563_
                                               _tl3924140565_
                                               _e3924640568_
                                               _hd3924540571_
                                               _tl3924440573_
                                               _e3924940576_
                                               _hd3924840579_
                                               _tl3924740581_
                                               _e3925240584_
                                               _hd3925140587_
                                               _tl3925040589_
                                               _e3925540592_
                                               _hd3925440595_
                                               _tl3925340597_
                                               _e3925840600_
                                               _hd3925740603_
                                               _tl3925640605_
                                               _e3926140608_
                                               _hd3926040611_
                                               _tl3925940613_
                                               _e3926440616_
                                               _hd3926340619_
                                               _tl3926240621_
                                               _e3926740624_
                                               _hd3926640627_
                                               _tl3926540629_
                                               _e3927040632_
                                               _hd3926940635_
                                               _tl3926840637_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop3927440645_ _target3927140640_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx4419744198_))
                  (let ((_e3924340560_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx4419744198_))))
                    (let ((_tl3924140565_
                           (let () (declare (not safe)) (##cdr _e3924340560_)))
                          (_hd3924240563_
                           (let ()
                             (declare (not safe))
                             (##car _e3924340560_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3924140565_))
                          (let ((_e3924640568_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3924140565_))))
                            (let ((_tl3924440573_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3924640568_)))
                                  (_hd3924540571_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3924640568_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd3924540571_))
                                  (let ((_e3924940576_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd3924540571_))))
                                    (let ((_tl3924740581_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3924940576_)))
                                          (_hd3924840579_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3924940576_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd3924840579_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd3924840579_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl3924740581_))
                                                  (let ((_e3925240584_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl3924740581_))))
                                                    (let ((_tl3925040589_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3925240584_)))
                                                          (_hd3925140587_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3925240584_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl3925040589_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl3924440573_))
                      (let ((_e3925540592_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl3924440573_))))
                        (let ((_tl3925340597_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3925540592_)))
                              (_hd3925440595_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3925540592_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd3925440595_))
                              (let ((_e3925840600_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd3925440595_))))
                                (let ((_tl3925640605_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3925840600_)))
                                      (_hd3925740603_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3925840600_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd3925740603_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd3925740603_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl3925640605_))
                                              (let ((_e3926140608_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl3925640605_))))
                                                (let ((_tl3925940613_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3926140608_)))
                                                      (_hd3926040611_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3926140608_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl3925940613_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl3925340597_))
                                                          (let ((_e3926440616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl3925340597_))))
                    (let ((_tl3926240621_
                           (let () (declare (not safe)) (##cdr _e3926440616_)))
                          (_hd3926340619_
                           (let ()
                             (declare (not safe))
                             (##car _e3926440616_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd3926340619_))
                          (let ((_e3926740624_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd3926340619_))))
                            (let ((_tl3926540629_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3926740624_)))
                                  (_hd3926640627_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3926740624_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd3926640627_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd3926640627_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl3926540629_))
                                          (let ((_e3927040632_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl3926540629_))))
                                            (let ((_tl3926840637_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3927040632_)))
                                                  (_hd3926940635_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3927040632_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl3926840637_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl3926240621_))
                                                      (let ((___splice4420144202_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl3926240621_ '0))))
                (let ((_tl3927340642_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4420144202_ '1)))
                      (_target3927140640_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4420144202_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl3927340642_))
                      (___match4431044311_
                       _e3924340560_
                       _hd3924240563_
                       _tl3924140565_
                       _e3924640568_
                       _hd3924540571_
                       _tl3924440573_
                       _e3924940576_
                       _hd3924840579_
                       _tl3924740581_
                       _e3925240584_
                       _hd3925140587_
                       _tl3925040589_
                       _e3925540592_
                       _hd3925440595_
                       _tl3925340597_
                       _e3925840600_
                       _hd3925740603_
                       _tl3925640605_
                       _e3926140608_
                       _hd3926040611_
                       _tl3925940613_
                       _e3926440616_
                       _hd3926340619_
                       _tl3926240621_
                       _e3926740624_
                       _hd3926640627_
                       _tl3926540629_
                       _e3927040632_
                       _hd3926940635_
                       _tl3926840637_
                       ___splice4420144202_
                       _target3927140640_
                       _tl3927340642_)
                      (___match4449844499_
                       _e3924340560_
                       _hd3924240563_
                       _tl3924140565_
                       _e3924640568_
                       _hd3924540571_
                       _tl3924440573_
                       _e3924940576_
                       _hd3924840579_
                       _tl3924740581_
                       _e3925240584_
                       _hd3925140587_
                       _tl3925040589_
                       _e3925540592_
                       _hd3925440595_
                       _tl3925340597_
                       _e3925840600_
                       _hd3925740603_
                       _tl3925640605_
                       _e3926140608_
                       _hd3926040611_
                       _tl3925940613_
                       _e3926440616_
                       _hd3926340619_
                       _tl3926240621_
                       _e3926740624_
                       _hd3926640627_
                       _tl3926540629_
                       _e3927040632_
                       _hd3926940635_
                       _tl3926840637_))))
              (___match4449844499_
               _e3924340560_
               _hd3924240563_
               _tl3924140565_
               _e3924640568_
               _hd3924540571_
               _tl3924440573_
               _e3924940576_
               _hd3924840579_
               _tl3924740581_
               _e3925240584_
               _hd3925140587_
               _tl3925040589_
               _e3925540592_
               _hd3925440595_
               _tl3925340597_
               _e3925840600_
               _hd3925740603_
               _tl3925640605_
               _e3926140608_
               _hd3926040611_
               _tl3925940613_
               _e3926440616_
               _hd3926340619_
               _tl3926240621_
               _e3926740624_
               _hd3926640627_
               _tl3926540629_
               _e3927040632_
               _hd3926940635_
               _tl3926840637_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match4470244703_
                                                   _e3924340560_
                                                   _hd3924240563_
                                                   _tl3924140565_
                                                   _e3924640568_
                                                   _hd3924540571_
                                                   _tl3924440573_
                                                   _e3924940576_
                                                   _hd3924840579_
                                                   _tl3924740581_
                                                   _e3925240584_
                                                   _hd3925140587_
                                                   _tl3925040589_
                                                   _e3925540592_
                                                   _hd3925440595_
                                                   _tl3925340597_
                                                   _e3925840600_
                                                   _hd3925740603_
                                                   _tl3925640605_
                                                   _e3926140608_
                                                   _hd3926040611_
                                                   _tl3925940613_
                                                   _e3926440616_
                                                   _hd3926340619_
                                                   _tl3926240621_))))
                                          (___match4470244703_
                                           _e3924340560_
                                           _hd3924240563_
                                           _tl3924140565_
                                           _e3924640568_
                                           _hd3924540571_
                                           _tl3924440573_
                                           _e3924940576_
                                           _hd3924840579_
                                           _tl3924740581_
                                           _e3925240584_
                                           _hd3925140587_
                                           _tl3925040589_
                                           _e3925540592_
                                           _hd3925440595_
                                           _tl3925340597_
                                           _e3925840600_
                                           _hd3925740603_
                                           _tl3925640605_
                                           _e3926140608_
                                           _hd3926040611_
                                           _tl3925940613_
                                           _e3926440616_
                                           _hd3926340619_
                                           _tl3926240621_))
                                      (___match4437844379_
                                       _e3924340560_
                                       _hd3924240563_
                                       _tl3924140565_
                                       _e3924640568_
                                       _hd3924540571_
                                       _tl3924440573_
                                       _e3924940576_
                                       _hd3924840579_
                                       _tl3924740581_
                                       _e3925240584_
                                       _hd3925140587_
                                       _tl3925040589_
                                       _e3925540592_
                                       _hd3925440595_
                                       _tl3925340597_
                                       _e3925840600_
                                       _hd3925740603_
                                       _tl3925640605_
                                       _e3926140608_
                                       _hd3926040611_
                                       _tl3925940613_
                                       _e3926440616_
                                       _hd3926340619_
                                       _tl3926240621_
                                       _e3926740624_
                                       _hd3926640627_
                                       _tl3926540629_))
                                  (___match4470244703_
                                   _e3924340560_
                                   _hd3924240563_
                                   _tl3924140565_
                                   _e3924640568_
                                   _hd3924540571_
                                   _tl3924440573_
                                   _e3924940576_
                                   _hd3924840579_
                                   _tl3924740581_
                                   _e3925240584_
                                   _hd3925140587_
                                   _tl3925040589_
                                   _e3925540592_
                                   _hd3925440595_
                                   _tl3925340597_
                                   _e3925840600_
                                   _hd3925740603_
                                   _tl3925640605_
                                   _e3926140608_
                                   _hd3926040611_
                                   _tl3925940613_
                                   _e3926440616_
                                   _hd3926340619_
                                   _tl3926240621_))))
                          (___match4470244703_
                           _e3924340560_
                           _hd3924240563_
                           _tl3924140565_
                           _e3924640568_
                           _hd3924540571_
                           _tl3924440573_
                           _e3924940576_
                           _hd3924840579_
                           _tl3924740581_
                           _e3925240584_
                           _hd3925140587_
                           _tl3925040589_
                           _e3925540592_
                           _hd3925440595_
                           _tl3925340597_
                           _e3925840600_
                           _hd3925740603_
                           _tl3925640605_
                           _e3926140608_
                           _hd3926040611_
                           _tl3925940613_
                           _e3926440616_
                           _hd3926340619_
                           _tl3926240621_))))
                  (___match4464044641_
                   _e3924340560_
                   _hd3924240563_
                   _tl3924140565_
                   _e3924640568_
                   _hd3924540571_
                   _tl3924440573_
                   _e3924940576_
                   _hd3924840579_
                   _tl3924740581_
                   _e3925240584_
                   _hd3925140587_
                   _tl3925040589_
                   _e3925540592_
                   _hd3925440595_
                   _tl3925340597_
                   _e3925840600_
                   _hd3925740603_
                   _tl3925640605_
                   _e3926140608_
                   _hd3926040611_
                   _tl3925940613_))
              (___kont4422344224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont4422344224_))
                                          (___kont4422344224_))
                                      (___kont4422344224_))))
                              (___kont4422344224_))))
                      (___kont4422344224_))
                  (___kont4422344224_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4422344224_))
                                              (___kont4422344224_))
                                          (___kont4422344224_))))
                                  (___kont4422344224_))))
                          (___kont4422344224_))))
                  (___kont4422344224_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx37644_
               _self37645_
               _$t37646_
               _methods37647_
               _slots37648_
               _class-check37649_
               _struct-check37650_
               _struct-assert37651_)
        (letrec ((_force-e37653_
                  (lambda (_what39215_)
                    (let ((__tmp46034
                           (let ((__tmp46038
                                  (let ((__tmp46039
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp46039)))
                                 (__tmp46035
                                  (let ((__tmp46036
                                         (let ((__tmp46037
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what39215_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp46037))))
                                    (declare (not safe))
                                    (cons __tmp46036 '()))))
                             (declare (not safe))
                             (cons __tmp46038 __tmp46035))))
                      (declare (not safe))
                      (cons '%#call __tmp46034)))))
          (let* ((___stx4493744938_ _stx37644_)
                 (_g3766537983_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx4493744938_)))))
            (let ((___kont4493944940_
                   (lambda (_L39161_ _L39162_ _L39163_ _L39164_)
                     (let ((_$method39209_
                            (let ((__tmp46040
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L39162_))))
                              (declare (not safe))
                              (table-ref _methods37647_ __tmp46040)))
                           (_args39210_
                            (map (lambda (_g3919739199_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e
                                      _g3919739199_
                                      _self37645_
                                      _$t37646_
                                      _methods37647_
                                      _slots37648_
                                      _class-check37649_
                                      _struct-check37650_
                                      _struct-assert37651_)))
                                 (let ((__tmp46041
                                        (lambda (_g3920139204_ _g3920239206_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3920139204_
                                                  _g3920239206_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp46041 '() _L39161_)))))
                       (let ((__tmp46042
                              (let ((__tmp46043
                                     (let ((__tmp46047
                                            (let ()
                                              (declare (not safe))
                                              (_force-e37653_ _$method39209_)))
                                           (__tmp46044
                                            (let ((__tmp46045
                                                   (let ((__tmp46046
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp46046))))
                                              (declare (not safe))
                                              (cons __tmp46045 _args39210_))))
                                       (declare (not safe))
                                       (cons __tmp46047 __tmp46044))))
                                (declare (not safe))
                                (cons '%#call __tmp46043))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46042 _stx37644_)))))
                  (___kont4494344944_
                   (lambda (_L38993_ _L38994_ _L38995_ _L38996_ _L38997_)
                     (let ((_$method39049_
                            (let ((__tmp46048
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L38994_))))
                              (declare (not safe))
                              (table-ref _methods37647_ __tmp46048)))
                           (_args39050_
                            (map (lambda (_g3903739039_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e
                                      _g3903739039_
                                      _self37645_
                                      _$t37646_
                                      _methods37647_
                                      _slots37648_
                                      _class-check37649_
                                      _struct-check37650_
                                      _struct-assert37651_)))
                                 (let ((__tmp46049
                                        (lambda (_g3904139044_ _g3904239046_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3904139044_
                                                  _g3904239046_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp46049 '() _L38993_)))))
                       (let ((__tmp46050
                              (let ((__tmp46051
                                     (let ((__tmp46057
                                            (let ((__tmp46058
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46058)))
                                           (__tmp46052
                                            (let ((__tmp46056
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e37653_
                                                      _$method39049_)))
                                                  (__tmp46053
                                                   (let ((__tmp46054
                                                          (let ((__tmp46055
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37645_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46055))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46054
                                                           _args39050_))))
                                              (declare (not safe))
                                              (cons __tmp46056 __tmp46053))))
                                       (declare (not safe))
                                       (cons __tmp46057 __tmp46052))))
                                (declare (not safe))
                                (cons '%#call __tmp46051))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46050 _stx37644_)))))
                  (___kont4494744948_
                   (lambda (_L38824_ _L38825_ _L38826_)
                     (let* ((_$field38858_
                             (let ((__tmp46059
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L38824_))))
                               (declare (not safe))
                               (table-ref _slots37648_ __tmp46059)))
                            (__tmp46060
                             (let ((__tmp46061
                                    (let ((__tmp46068
                                           (let ((__tmp46069
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t37646_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp46069)))
                                          (__tmp46062
                                           (let ((__tmp46066
                                                  (let ((__tmp46067
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field38858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp46067)))
                                                 (__tmp46063
                                                  (let ((__tmp46064
                                                         (let ((__tmp46065
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self37645_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp46065))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp46064 '()))))
                                             (declare (not safe))
                                             (cons __tmp46066 __tmp46063))))
                                      (declare (not safe))
                                      (cons __tmp46068 __tmp46062))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp46061))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp46060 _stx37644_))))
                  (___kont4494944950_
                   (lambda (_L38698_ _L38699_ _L38700_ _L38701_)
                     (let ((_$field38736_
                            (let ((__tmp46070
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L38699_))))
                              (declare (not safe))
                              (table-ref _slots37648_ __tmp46070)))
                           (_expr38737_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e
                               _L38698_
                               _self37645_
                               _$t37646_
                               _methods37647_
                               _slots37648_
                               _class-check37649_
                               _struct-check37650_
                               _struct-assert37651_))))
                       (let ((__tmp46071
                              (let ((__tmp46072
                                     (let ((__tmp46080
                                            (let ((__tmp46081
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37646_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46081)))
                                           (__tmp46073
                                            (let ((__tmp46078
                                                   (let ((__tmp46079
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38736_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46079)))
                                                  (__tmp46074
                                                   (let ((__tmp46076
                                                          (let ((__tmp46077
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37645_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46077)))
                 (__tmp46075
                  (let () (declare (not safe)) (cons _expr38737_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46076
                                                           __tmp46075))))
                                              (declare (not safe))
                                              (cons __tmp46078 __tmp46074))))
                                       (declare (not safe))
                                       (cons __tmp46080 __tmp46073))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp46072))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46071 _stx37644_)))))
                  (___kont4495144952_
                   (lambda (_L38577_ _L38578_)
                     (let* ((_slot38600_
                             (##structure-ref
                              (let ((__tmp46082
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L38578_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp46082))
                              '2
                              gxc#!class-getf::t
                              '#f))
                            (_$field38602_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots37648_ _slot38600_))))
                       (let ((__tmp46083
                              (let ((__tmp46084
                                     (let ((__tmp46091
                                            (let ((__tmp46092
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37646_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46092)))
                                           (__tmp46085
                                            (let ((__tmp46089
                                                   (let ((__tmp46090
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46090)))
                                                  (__tmp46086
                                                   (let ((__tmp46087
                                                          (let ((__tmp46088
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37645_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46088))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46087 '()))))
                                              (declare (not safe))
                                              (cons __tmp46089 __tmp46086))))
                                       (declare (not safe))
                                       (cons __tmp46091 __tmp46085))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp46084))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46083 _stx37644_)))))
                  (___kont4495344954_
                   (lambda (_L38482_ _L38483_ _L38484_)
                     (let* ((_slot38509_
                             (##structure-ref
                              (let ((__tmp46093
                                     (let ((__tmp46094
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'getf))))
                                       (declare (not safe))
                                       (gxc#identifier-symbol __tmp46094))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp46093))
                              '2
                              gxc#!class-setf::t
                              '#f))
                            (_$field38511_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots37648_ _slot38509_)))
                            (_expr38513_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e
                                _L38482_
                                _self37645_
                                _$t37646_
                                _methods37647_
                                _slots37648_
                                _class-check37649_
                                _struct-check37650_
                                _struct-assert37651_))))
                       (let ((__tmp46095
                              (let ((__tmp46096
                                     (let ((__tmp46104
                                            (let ((__tmp46105
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37646_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46105)))
                                           (__tmp46097
                                            (let ((__tmp46102
                                                   (let ((__tmp46103
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38511_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46103)))
                                                  (__tmp46098
                                                   (let ((__tmp46100
                                                          (let ((__tmp46101
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37645_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46101)))
                 (__tmp46099
                  (let () (declare (not safe)) (cons _expr38513_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46100
                                                           __tmp46099))))
                                              (declare (not safe))
                                              (cons __tmp46102 __tmp46098))))
                                       (declare (not safe))
                                       (cons __tmp46104 __tmp46097))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp46096))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46095 _stx37644_)))))
                  (___kont4495544956_
                   (lambda (_L38390_ _L38391_)
                     (let ((__tmp46106
                            (let ((__tmp46107
                                   (let ((__tmp46108
                                          (##structure-ref
                                           (let ((__tmp46109
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L38391_))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-type
                                              __tmp46109))
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (table-ref
                                      _class-check37649_
                                      __tmp46108))))
                              (declare (not safe))
                              (cons __tmp46107 '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46106))))
                  (___kont4495744958_
                   (lambda (_L38299_ _L38300_)
                     (let ((_t38322_
                            (##structure-ref
                             (let ((__tmp46110
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L38300_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp46110))
                             '1
                             gxc#!type::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (table-ref _struct-assert37651_ _t38322_ '#f))
                           '(%#quote #t)
                           (let ((_$e38324_
                                  (let ()
                                    (declare (not safe))
                                    (table-ref
                                     _struct-check37650_
                                     _t38322_
                                     '#f))))
                             (if _$e38324_
                                 ((lambda (_checkq38327_)
                                    (let ((__tmp46111
                                           (let ()
                                             (declare (not safe))
                                             (cons _checkq38327_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp46111)))
                                  _$e38324_)
                                 _stx37644_))))))
                  (___kont4495944960_
                   (lambda (_L38184_ _L38185_)
                     (let* ((_getf38218_
                             (let ((__tmp46112
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L38185_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp46112)))
                            (_t38220_
                             (##structure-ref
                              _getf38218_
                              '1
                              gxc#!type::t
                              '#f)))
                       (if (##structure-ref
                            _getf38218_
                            '3
                            gxc#!struct-getf::t
                            '#f)
                           _stx37644_
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert37651_ _t38220_ '#f))
                               (let* ((_struct-t38223_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t38220_)))
                                      (_off38225_
                                       (fx+ (##structure-ref
                                             _getf38218_
                                             '2
                                             gxc#!struct-getf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t38223_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp46141
                                        (let ((__tmp46148
                                               (let ((__tmp46149
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t38220_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp46149)))
                                              (__tmp46142
                                               (let ((__tmp46146
                                                      (let ((__tmp46147
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off38225_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp46147)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp46143
                                                      (let ((__tmp46144
                                                             (let ((__tmp46145
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self37645_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46145))))
                (declare (not safe))
                (cons __tmp46144 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46146
                                                       __tmp46143))))
                                          (declare (not safe))
                                          (cons __tmp46148 __tmp46142))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-ref __tmp46141)))
                               (let ((_$e38228_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check37650_
                                         _t38220_
                                         '#f))))
                                 (if _$e38228_
                                     ((lambda (_checkq38231_)
                                        (let* ((_struct-t38233_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t38220_)))
                                               (_off38235_
                                                (fx+ (##structure-ref
                                                      _getf38218_
                                                      '2
                                                      gxc#!struct-getf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t38233_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp46113
                                                 (let ((__tmp46139
                                                        (let ((__tmp46140
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq38231_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp46140)))
               (__tmp46114
                (let ((__tmp46129
                       (let ((__tmp46130
                              (let ((__tmp46137
                                     (let ((__tmp46138
                                            (let ()
                                              (declare (not safe))
                                              (cons _t38220_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp46138)))
                                    (__tmp46131
                                     (let ((__tmp46135
                                            (let ((__tmp46136
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off38235_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp46136)))
                                           (__tmp46132
                                            (let ((__tmp46133
                                                   (let ((__tmp46134
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp46134))))
                                              (declare (not safe))
                                              (cons __tmp46133 '()))))
                                       (declare (not safe))
                                       (cons __tmp46135 __tmp46132))))
                                (declare (not safe))
                                (cons __tmp46137 __tmp46131))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp46130)))
                      (__tmp46115
                       (let ((__tmp46116
                              (let ((__tmp46117
                                     (let ((__tmp46127
                                            (let ((__tmp46128
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46128)))
                                           (__tmp46118
                                            (let ((__tmp46125
                                                   (let ((__tmp46126
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp46126)))
                                                  (__tmp46119
                                                   (let ((__tmp46123
                                                          (let ((__tmp46124
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t38220_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46124)))
                 (__tmp46120
                  (let ((__tmp46121
                         (let ((__tmp46122
                                (let ()
                                  (declare (not safe))
                                  (cons _self37645_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp46122))))
                    (declare (not safe))
                    (cons __tmp46121 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46123
                                                           __tmp46120))))
                                              (declare (not safe))
                                              (cons __tmp46125 __tmp46119))))
                                       (declare (not safe))
                                       (cons __tmp46127 __tmp46118))))
                                (declare (not safe))
                                (cons '%#call __tmp46117))))
                         (declare (not safe))
                         (cons __tmp46116 '()))))
                  (declare (not safe))
                  (cons __tmp46129 __tmp46115))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp46139
                                                         __tmp46114))))
                                            (declare (not safe))
                                            (cons '%#if __tmp46113))))
                                      _$e38228_)
                                     _stx37644_)))))))
                  (___kont4496144962_
                   (lambda (_L38059_ _L38060_ _L38061_)
                     (let* ((_setf38101_
                             (let ((__tmp46150
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L38061_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp46150)))
                            (_t38103_
                             (##structure-ref _setf38101_ '1 gxc#!type::t '#f))
                            (_expr38105_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e
                                _L38059_
                                _self37645_
                                _$t37646_
                                _methods37647_
                                _slots37648_
                                _class-check37649_
                                _struct-check37650_
                                _struct-assert37651_))))
                       (if (##structure-ref
                            _setf38101_
                            '3
                            gxc#!struct-setf::t
                            '#f)
                           (let ((__tmp46200
                                  (let ((__tmp46206
                                         (let ((__tmp46209
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#ref)))
                                               (__tmp46207
                                                (let ((__tmp46208
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'setf))))
                                                  (declare (not safe))
                                                  (cons __tmp46208 '()))))
                                           (declare (not safe))
                                           (cons __tmp46209 __tmp46207)))
                                        (__tmp46201
                                         (let ((__tmp46203
                                                (let ((__tmp46205
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp46204
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L38060_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp46205
                                                        __tmp46204)))
                                               (__tmp46202
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _expr38105_ '()))))
                                           (declare (not safe))
                                           (cons __tmp46203 __tmp46202))))
                                    (declare (not safe))
                                    (cons __tmp46206 __tmp46201))))
                             (declare (not safe))
                             (cons '%#call __tmp46200))
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert37651_ _t38103_ '#f))
                               (let* ((_struct-t38108_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t38103_)))
                                      (_off38110_
                                       (fx+ (##structure-ref
                                             _setf38101_
                                             '2
                                             gxc#!struct-setf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t38108_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp46190
                                        (let ((__tmp46198
                                               (let ((__tmp46199
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t38103_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp46199)))
                                              (__tmp46191
                                               (let ((__tmp46196
                                                      (let ((__tmp46197
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off38110_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp46197)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp46192
                                                      (let ((__tmp46194
                                                             (let ((__tmp46195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self37645_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46195)))
                    (__tmp46193
                     (let () (declare (not safe)) (cons _expr38105_ '()))))
                (declare (not safe))
                (cons __tmp46194 __tmp46193))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46196
                                                       __tmp46192))))
                                          (declare (not safe))
                                          (cons __tmp46198 __tmp46191))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-set! __tmp46190)))
                               (let ((_$e38113_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check37650_
                                         _t38103_
                                         '#f))))
                                 (if _$e38113_
                                     ((lambda (_checkq38116_)
                                        (let* ((_struct-t38118_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t38103_)))
                                               (_off38120_
                                                (fx+ (##structure-ref
                                                      _setf38101_
                                                      '2
                                                      gxc#!struct-setf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t38118_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp46161
                                                 (let ((__tmp46188
                                                        (let ((__tmp46189
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq38116_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp46189)))
               (__tmp46162
                (let ((__tmp46177
                       (let ((__tmp46178
                              (let ((__tmp46186
                                     (let ((__tmp46187
                                            (let ()
                                              (declare (not safe))
                                              (cons _t38103_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp46187)))
                                    (__tmp46179
                                     (let ((__tmp46184
                                            (let ((__tmp46185
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off38120_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp46185)))
                                           (__tmp46180
                                            (let ((__tmp46182
                                                   (let ((__tmp46183
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37645_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46183)))
                                                  (__tmp46181
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr38105_ '()))))
                                              (declare (not safe))
                                              (cons __tmp46182 __tmp46181))))
                                       (declare (not safe))
                                       (cons __tmp46184 __tmp46180))))
                                (declare (not safe))
                                (cons __tmp46186 __tmp46179))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp46178)))
                      (__tmp46163
                       (let ((__tmp46164
                              (let ((__tmp46165
                                     (let ((__tmp46175
                                            (let ((__tmp46176
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46176)))
                                           (__tmp46166
                                            (let ((__tmp46173
                                                   (let ((__tmp46174
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp46174)))
                                                  (__tmp46167
                                                   (let ((__tmp46171
                                                          (let ((__tmp46172
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t38103_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46172)))
                 (__tmp46168
                  (let ((__tmp46169
                         (let ((__tmp46170
                                (let ()
                                  (declare (not safe))
                                  (cons _self37645_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp46170))))
                    (declare (not safe))
                    (cons __tmp46169 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46171
                                                           __tmp46168))))
                                              (declare (not safe))
                                              (cons __tmp46173 __tmp46167))))
                                       (declare (not safe))
                                       (cons __tmp46175 __tmp46166))))
                                (declare (not safe))
                                (cons '%#call __tmp46165))))
                         (declare (not safe))
                         (cons __tmp46164 '()))))
                  (declare (not safe))
                  (cons __tmp46177 __tmp46163))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp46188
                                                         __tmp46162))))
                                            (declare (not safe))
                                            (cons '%#if __tmp46161))))
                                      _$e38113_)
                                     (let ((__tmp46151
                                            (let ((__tmp46157
                                                   (let ((__tmp46160
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)))
                                                         (__tmp46158
                                                          (let ((__tmp46159
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'setf))))
                    (declare (not safe))
                    (cons __tmp46159 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46160
                                                           __tmp46158)))
                                                  (__tmp46152
                                                   (let ((__tmp46154
                                                          (let ((__tmp46156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref)))
                        (__tmp46155
                         (let () (declare (not safe)) (cons _L38060_ '()))))
                    (declare (not safe))
                    (cons __tmp46156 __tmp46155)))
                 (__tmp46153
                  (let () (declare (not safe)) (cons _expr38105_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46154
                                                           __tmp46153))))
                                              (declare (not safe))
                                              (cons __tmp46157 __tmp46152))))
                                       (declare (not safe))
                                       (cons '%#call __tmp46151)))))))))
                  (___kont4496344964_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx37644_
                        _self37645_
                        _$t37646_
                        _methods37647_
                        _slots37648_
                        _class-check37649_
                        _struct-check37650_
                        _struct-assert37651_)))))
              (let* ((___match4567445675_
                      (lambda (_e3795737995_
                               _hd3795637998_
                               _tl3795538000_
                               _e3796038003_
                               _hd3795938006_
                               _tl3795838008_
                               _e3796338011_
                               _hd3796238014_
                               _tl3796138016_
                               _e3796638019_
                               _hd3796538022_
                               _tl3796438024_
                               _e3796938027_
                               _hd3796838030_
                               _tl3796738032_
                               _e3797238035_
                               _hd3797138038_
                               _tl3797038040_
                               _e3797538043_
                               _hd3797438046_
                               _tl3797338048_
                               _e3797838051_
                               _hd3797738054_
                               _tl3797638056_)
                        (let ((_L38059_ _hd3797738054_)
                              (_L38060_ _hd3797438046_)
                              (_L38061_ _hd3796538022_))
                          (if (if (let ((__tmp46212
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L38060_
                                            _self37645_))))
                                    (declare (not safe))
                                    (not __tmp46212))
                                  '#f
                                  (let ((_$e38090_
                                         (let ((__tmp46210
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L38061_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp46210))))
                                    (and _$e38090_
                                         ((lambda (_t38093_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t38093_
                                                    'gxc#!struct-setf::t))
                                                 (let ((_struct-t3809438096_
                                                        (let ((__tmp46211
                                                               (##structure-ref
                                                                _t38093_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp46211))))
                                                   (and _struct-t3809438096_
                                                        (let ((_struct-t38099_
                                                               _struct-t3809438096_))
                                                          (##structure-ref
                                                           _struct-t38099_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e38090_))))
                              (___kont4496144962_ _L38059_ _L38060_ _L38061_)
                              (___kont4496344964_)))))
                     (___match4566645667_
                      (lambda (_e3795737995_
                               _hd3795637998_
                               _tl3795538000_
                               _e3796038003_
                               _hd3795938006_
                               _tl3795838008_
                               _e3796338011_
                               _hd3796238014_
                               _tl3796138016_
                               _e3796638019_
                               _hd3796538022_
                               _tl3796438024_
                               _e3796938027_
                               _hd3796838030_
                               _tl3796738032_
                               _e3797238035_
                               _hd3797138038_
                               _tl3797038040_
                               _e3797538043_
                               _hd3797438046_
                               _tl3797338048_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3796738032_))
                            (let ((_e3797838051_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3796738032_))))
                              (let ((_tl3797638056_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3797838051_)))
                                    (_hd3797738054_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3797838051_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3797638056_))
                                    (___match4567445675_
                                     _e3795737995_
                                     _hd3795637998_
                                     _tl3795538000_
                                     _e3796038003_
                                     _hd3795938006_
                                     _tl3795838008_
                                     _e3796338011_
                                     _hd3796238014_
                                     _tl3796138016_
                                     _e3796638019_
                                     _hd3796538022_
                                     _tl3796438024_
                                     _e3796938027_
                                     _hd3796838030_
                                     _tl3796738032_
                                     _e3797238035_
                                     _hd3797138038_
                                     _tl3797038040_
                                     _e3797538043_
                                     _hd3797438046_
                                     _tl3797338048_
                                     _e3797838051_
                                     _hd3797738054_
                                     _tl3797638056_)
                                    (___kont4496344964_))))
                            (___kont4496344964_))))
                     (___match4561245613_
                      (lambda (_e3793338128_
                               _hd3793238131_
                               _tl3793138133_
                               _e3793638136_
                               _hd3793538139_
                               _tl3793438141_
                               _e3793938144_
                               _hd3793838147_
                               _tl3793738149_
                               _e3794238152_
                               _hd3794138155_
                               _tl3794038157_
                               _e3794538160_
                               _hd3794438163_
                               _tl3794338165_
                               _e3794838168_
                               _hd3794738171_
                               _tl3794638173_
                               _e3795138176_
                               _hd3795038179_
                               _tl3794938181_)
                        (let ((_L38184_ _hd3795038179_)
                              (_L38185_ _hd3794138155_))
                          (if (if (let ((__tmp46215
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L38184_
                                            _self37645_))))
                                    (declare (not safe))
                                    (not __tmp46215))
                                  '#f
                                  (let ((_$e38207_
                                         (let ((__tmp46213
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L38185_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp46213))))
                                    (and _$e38207_
                                         ((lambda (_t38210_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t38210_
                                                    'gxc#!struct-getf::t))
                                                 (let ((_struct-t3821138213_
                                                        (let ((__tmp46214
                                                               (##structure-ref
                                                                _t38210_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp46214))))
                                                   (and _struct-t3821138213_
                                                        (let ((_struct-t38216_
                                                               _struct-t3821138213_))
                                                          (##structure-ref
                                                           _struct-t38216_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e38207_))))
                              (___kont4495944960_ _L38184_ _L38185_)
                              (___kont4496344964_)))))
                     (___match4555645557_
                      (lambda (_e3791038243_
                               _hd3790938246_
                               _tl3790838248_
                               _e3791338251_
                               _hd3791238254_
                               _tl3791138256_
                               _e3791638259_
                               _hd3791538262_
                               _tl3791438264_
                               _e3791938267_
                               _hd3791838270_
                               _tl3791738272_
                               _e3792238275_
                               _hd3792138278_
                               _tl3792038280_
                               _e3792538283_
                               _hd3792438286_
                               _tl3792338288_
                               _e3792838291_
                               _hd3792738294_
                               _tl3792638296_)
                        (let ((_L38299_ _hd3792738294_)
                              (_L38300_ _hd3791838270_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38299_
                                      _self37645_))
                                   (let ((__tmp46216
                                          (let ((__tmp46217
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38300_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46217))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46216
                                      'gxc#!struct-pred::t)))
                              (___kont4495744958_ _L38299_ _L38300_)
                              (___match4561245613_
                               _e3791038243_
                               _hd3790938246_
                               _tl3790838248_
                               _e3791338251_
                               _hd3791238254_
                               _tl3791138256_
                               _e3791638259_
                               _hd3791538262_
                               _tl3791438264_
                               _e3791938267_
                               _hd3791838270_
                               _tl3791738272_
                               _e3792238275_
                               _hd3792138278_
                               _tl3792038280_
                               _e3792538283_
                               _hd3792438286_
                               _tl3792338288_
                               _e3792838291_
                               _hd3792738294_
                               _tl3792638296_)))))
                     (___match4550045501_
                      (lambda (_e3788738334_
                               _hd3788638337_
                               _tl3788538339_
                               _e3789038342_
                               _hd3788938345_
                               _tl3788838347_
                               _e3789338350_
                               _hd3789238353_
                               _tl3789138355_
                               _e3789638358_
                               _hd3789538361_
                               _tl3789438363_
                               _e3789938366_
                               _hd3789838369_
                               _tl3789738371_
                               _e3790238374_
                               _hd3790138377_
                               _tl3790038379_
                               _e3790538382_
                               _hd3790438385_
                               _tl3790338387_)
                        (let ((_L38390_ _hd3790438385_)
                              (_L38391_ _hd3789538361_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38390_
                                      _self37645_))
                                   (let ((__tmp46218
                                          (let ((__tmp46219
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38391_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46219))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46218
                                      'gxc#!class-pred::t)))
                              (___kont4495544956_ _L38390_ _L38391_)
                              (___match4555645557_
                               _e3788738334_
                               _hd3788638337_
                               _tl3788538339_
                               _e3789038342_
                               _hd3788938345_
                               _tl3788838347_
                               _e3789338350_
                               _hd3789238353_
                               _tl3789138355_
                               _e3789638358_
                               _hd3789538361_
                               _tl3789438363_
                               _e3789938366_
                               _hd3789838369_
                               _tl3789738371_
                               _e3790238374_
                               _hd3790138377_
                               _tl3790038379_
                               _e3790538382_
                               _hd3790438385_
                               _tl3790338387_)))))
                     (___match4549845499_
                      (lambda (_e3788738334_
                               _hd3788638337_
                               _tl3788538339_
                               _e3789038342_
                               _hd3788938345_
                               _tl3788838347_
                               _e3789338350_
                               _hd3789238353_
                               _tl3789138355_
                               _e3789638358_
                               _hd3789538361_
                               _tl3789438363_
                               _e3789938366_
                               _hd3789838369_
                               _tl3789738371_
                               _e3790238374_
                               _hd3790138377_
                               _tl3790038379_
                               _e3790538382_
                               _hd3790438385_
                               _tl3790338387_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3789738371_))
                            (___match4550045501_
                             _e3788738334_
                             _hd3788638337_
                             _tl3788538339_
                             _e3789038342_
                             _hd3788938345_
                             _tl3788838347_
                             _e3789338350_
                             _hd3789238353_
                             _tl3789138355_
                             _e3789638358_
                             _hd3789538361_
                             _tl3789438363_
                             _e3789938366_
                             _hd3789838369_
                             _tl3789738371_
                             _e3790238374_
                             _hd3790138377_
                             _tl3790038379_
                             _e3790538382_
                             _hd3790438385_
                             _tl3790338387_)
                            (___match4566645667_
                             _e3788738334_
                             _hd3788638337_
                             _tl3788538339_
                             _e3789038342_
                             _hd3788938345_
                             _tl3788838347_
                             _e3789338350_
                             _hd3789238353_
                             _tl3789138355_
                             _e3789638358_
                             _hd3789538361_
                             _tl3789438363_
                             _e3789938366_
                             _hd3789838369_
                             _tl3789738371_
                             _e3790238374_
                             _hd3790138377_
                             _tl3790038379_
                             _e3790538382_
                             _hd3790438385_
                             _tl3790338387_))))
                     (___match4544445445_
                      (lambda (_e3786138418_
                               _hd3786038421_
                               _tl3785938423_
                               _e3786438426_
                               _hd3786338429_
                               _tl3786238431_
                               _e3786738434_
                               _hd3786638437_
                               _tl3786538439_
                               _e3787038442_
                               _hd3786938445_
                               _tl3786838447_
                               _e3787338450_
                               _hd3787238453_
                               _tl3787138455_
                               _e3787638458_
                               _hd3787538461_
                               _tl3787438463_
                               _e3787938466_
                               _hd3787838469_
                               _tl3787738471_
                               _e3788238474_
                               _hd3788138477_
                               _tl3788038479_)
                        (let ((_L38482_ _hd3788138477_)
                              (_L38483_ _hd3787838469_)
                              (_L38484_ _hd3786938445_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38483_
                                      _self37645_))
                                   (let ((__tmp46220
                                          (let ((__tmp46221
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38484_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46221))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46220
                                      'gxc#!class-setf::t)))
                              (___kont4495344954_ _L38482_ _L38483_ _L38484_)
                              (___match4567445675_
                               _e3786138418_
                               _hd3786038421_
                               _tl3785938423_
                               _e3786438426_
                               _hd3786338429_
                               _tl3786238431_
                               _e3786738434_
                               _hd3786638437_
                               _tl3786538439_
                               _e3787038442_
                               _hd3786938445_
                               _tl3786838447_
                               _e3787338450_
                               _hd3787238453_
                               _tl3787138455_
                               _e3787638458_
                               _hd3787538461_
                               _tl3787438463_
                               _e3787938466_
                               _hd3787838469_
                               _tl3787738471_
                               _e3788238474_
                               _hd3788138477_
                               _tl3788038479_)))))
                     (___match4544245443_
                      (lambda (_e3786138418_
                               _hd3786038421_
                               _tl3785938423_
                               _e3786438426_
                               _hd3786338429_
                               _tl3786238431_
                               _e3786738434_
                               _hd3786638437_
                               _tl3786538439_
                               _e3787038442_
                               _hd3786938445_
                               _tl3786838447_
                               _e3787338450_
                               _hd3787238453_
                               _tl3787138455_
                               _e3787638458_
                               _hd3787538461_
                               _tl3787438463_
                               _e3787938466_
                               _hd3787838469_
                               _tl3787738471_
                               _e3788238474_
                               _hd3788138477_
                               _tl3788038479_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3788038479_))
                            (___match4544445445_
                             _e3786138418_
                             _hd3786038421_
                             _tl3785938423_
                             _e3786438426_
                             _hd3786338429_
                             _tl3786238431_
                             _e3786738434_
                             _hd3786638437_
                             _tl3786538439_
                             _e3787038442_
                             _hd3786938445_
                             _tl3786838447_
                             _e3787338450_
                             _hd3787238453_
                             _tl3787138455_
                             _e3787638458_
                             _hd3787538461_
                             _tl3787438463_
                             _e3787938466_
                             _hd3787838469_
                             _tl3787738471_
                             _e3788238474_
                             _hd3788138477_
                             _tl3788038479_)
                            (___kont4496344964_))))
                     (___match4543645437_
                      (lambda (_e3786138418_
                               _hd3786038421_
                               _tl3785938423_
                               _e3786438426_
                               _hd3786338429_
                               _tl3786238431_
                               _e3786738434_
                               _hd3786638437_
                               _tl3786538439_
                               _e3787038442_
                               _hd3786938445_
                               _tl3786838447_
                               _e3787338450_
                               _hd3787238453_
                               _tl3787138455_
                               _e3787638458_
                               _hd3787538461_
                               _tl3787438463_
                               _e3787938466_
                               _hd3787838469_
                               _tl3787738471_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3787138455_))
                            (let ((_e3788238474_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3787138455_))))
                              (let ((_tl3788038479_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3788238474_)))
                                    (_hd3788138477_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3788238474_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3788038479_))
                                    (___match4544445445_
                                     _e3786138418_
                                     _hd3786038421_
                                     _tl3785938423_
                                     _e3786438426_
                                     _hd3786338429_
                                     _tl3786238431_
                                     _e3786738434_
                                     _hd3786638437_
                                     _tl3786538439_
                                     _e3787038442_
                                     _hd3786938445_
                                     _tl3786838447_
                                     _e3787338450_
                                     _hd3787238453_
                                     _tl3787138455_
                                     _e3787638458_
                                     _hd3787538461_
                                     _tl3787438463_
                                     _e3787938466_
                                     _hd3787838469_
                                     _tl3787738471_
                                     _e3788238474_
                                     _hd3788138477_
                                     _tl3788038479_)
                                    (___kont4496344964_))))
                            (___match4549845499_
                             _e3786138418_
                             _hd3786038421_
                             _tl3785938423_
                             _e3786438426_
                             _hd3786338429_
                             _tl3786238431_
                             _e3786738434_
                             _hd3786638437_
                             _tl3786538439_
                             _e3787038442_
                             _hd3786938445_
                             _tl3786838447_
                             _e3787338450_
                             _hd3787238453_
                             _tl3787138455_
                             _e3787638458_
                             _hd3787538461_
                             _tl3787438463_
                             _e3787938466_
                             _hd3787838469_
                             _tl3787738471_))))
                     (___match4538245383_
                      (lambda (_e3783738521_
                               _hd3783638524_
                               _tl3783538526_
                               _e3784038529_
                               _hd3783938532_
                               _tl3783838534_
                               _e3784338537_
                               _hd3784238540_
                               _tl3784138542_
                               _e3784638545_
                               _hd3784538548_
                               _tl3784438550_
                               _e3784938553_
                               _hd3784838556_
                               _tl3784738558_
                               _e3785238561_
                               _hd3785138564_
                               _tl3785038566_
                               _e3785538569_
                               _hd3785438572_
                               _tl3785338574_)
                        (let ((_L38577_ _hd3785438572_)
                              (_L38578_ _hd3784538548_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38577_
                                      _self37645_))
                                   (let ((__tmp46222
                                          (let ((__tmp46223
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38578_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46223))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46222
                                      'gxc#!class-getf::t)))
                              (___kont4495144952_ _L38577_ _L38578_)
                              (___match4550045501_
                               _e3783738521_
                               _hd3783638524_
                               _tl3783538526_
                               _e3784038529_
                               _hd3783938532_
                               _tl3783838534_
                               _e3784338537_
                               _hd3784238540_
                               _tl3784138542_
                               _e3784638545_
                               _hd3784538548_
                               _tl3784438550_
                               _e3784938553_
                               _hd3784838556_
                               _tl3784738558_
                               _e3785238561_
                               _hd3785138564_
                               _tl3785038566_
                               _e3785538569_
                               _hd3785438572_
                               _tl3785338574_)))))
                     (___match4538045381_
                      (lambda (_e3783738521_
                               _hd3783638524_
                               _tl3783538526_
                               _e3784038529_
                               _hd3783938532_
                               _tl3783838534_
                               _e3784338537_
                               _hd3784238540_
                               _tl3784138542_
                               _e3784638545_
                               _hd3784538548_
                               _tl3784438550_
                               _e3784938553_
                               _hd3784838556_
                               _tl3784738558_
                               _e3785238561_
                               _hd3785138564_
                               _tl3785038566_
                               _e3785538569_
                               _hd3785438572_
                               _tl3785338574_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3784738558_))
                            (___match4538245383_
                             _e3783738521_
                             _hd3783638524_
                             _tl3783538526_
                             _e3784038529_
                             _hd3783938532_
                             _tl3783838534_
                             _e3784338537_
                             _hd3784238540_
                             _tl3784138542_
                             _e3784638545_
                             _hd3784538548_
                             _tl3784438550_
                             _e3784938553_
                             _hd3784838556_
                             _tl3784738558_
                             _e3785238561_
                             _hd3785138564_
                             _tl3785038566_
                             _e3785538569_
                             _hd3785438572_
                             _tl3785338574_)
                            (___match4543645437_
                             _e3783738521_
                             _hd3783638524_
                             _tl3783538526_
                             _e3784038529_
                             _hd3783938532_
                             _tl3783838534_
                             _e3784338537_
                             _hd3784238540_
                             _tl3784138542_
                             _e3784638545_
                             _hd3784538548_
                             _tl3784438550_
                             _e3784938553_
                             _hd3784838556_
                             _tl3784738558_
                             _e3785238561_
                             _hd3785138564_
                             _tl3785038566_
                             _e3785538569_
                             _hd3785438572_
                             _tl3785338574_))))
                     (___match4532645327_
                      (lambda (_e3780238610_
                               _hd3780138613_
                               _tl3780038615_
                               _e3780538618_
                               _hd3780438621_
                               _tl3780338623_
                               _e3780838626_
                               _hd3780738629_
                               _tl3780638631_
                               _e3781138634_
                               _hd3781038637_
                               _tl3780938639_
                               _e3781438642_
                               _hd3781338645_
                               _tl3781238647_
                               _e3781738650_
                               _hd3781638653_
                               _tl3781538655_
                               _e3782038658_
                               _hd3781938661_
                               _tl3781838663_
                               _e3782338666_
                               _hd3782238669_
                               _tl3782138671_
                               _e3782638674_
                               _hd3782538677_
                               _tl3782438679_
                               _e3782938682_
                               _hd3782838685_
                               _tl3782738687_
                               _e3783238690_
                               _hd3783138693_
                               _tl3783038695_)
                        (let ((_L38698_ _hd3783138693_)
                              (_L38699_ _hd3782838685_)
                              (_L38700_ _hd3781938661_)
                              (_L38701_ _hd3781038637_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38701_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38701_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38700_
                                      _self37645_)))
                              (___kont4494944950_
                               _L38698_
                               _L38699_
                               _L38700_
                               _L38701_)
                              (___kont4496344964_)))))
                     (___match4531845319_
                      (lambda (_e3780238610_
                               _hd3780138613_
                               _tl3780038615_
                               _e3780538618_
                               _hd3780438621_
                               _tl3780338623_
                               _e3780838626_
                               _hd3780738629_
                               _tl3780638631_
                               _e3781138634_
                               _hd3781038637_
                               _tl3780938639_
                               _e3781438642_
                               _hd3781338645_
                               _tl3781238647_
                               _e3781738650_
                               _hd3781638653_
                               _tl3781538655_
                               _e3782038658_
                               _hd3781938661_
                               _tl3781838663_
                               _e3782338666_
                               _hd3782238669_
                               _tl3782138671_
                               _e3782638674_
                               _hd3782538677_
                               _tl3782438679_
                               _e3782938682_
                               _hd3782838685_
                               _tl3782738687_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3782138671_))
                            (let ((_e3783238690_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3782138671_))))
                              (let ((_tl3783038695_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3783238690_)))
                                    (_hd3783138693_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3783238690_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3783038695_))
                                    (___match4532645327_
                                     _e3780238610_
                                     _hd3780138613_
                                     _tl3780038615_
                                     _e3780538618_
                                     _hd3780438621_
                                     _tl3780338623_
                                     _e3780838626_
                                     _hd3780738629_
                                     _tl3780638631_
                                     _e3781138634_
                                     _hd3781038637_
                                     _tl3780938639_
                                     _e3781438642_
                                     _hd3781338645_
                                     _tl3781238647_
                                     _e3781738650_
                                     _hd3781638653_
                                     _tl3781538655_
                                     _e3782038658_
                                     _hd3781938661_
                                     _tl3781838663_
                                     _e3782338666_
                                     _hd3782238669_
                                     _tl3782138671_
                                     _e3782638674_
                                     _hd3782538677_
                                     _tl3782438679_
                                     _e3782938682_
                                     _hd3782838685_
                                     _tl3782738687_
                                     _e3783238690_
                                     _hd3783138693_
                                     _tl3783038695_)
                                    (___kont4496344964_))))
                            (___match4544245443_
                             _e3780238610_
                             _hd3780138613_
                             _tl3780038615_
                             _e3780538618_
                             _hd3780438621_
                             _tl3780338623_
                             _e3780838626_
                             _hd3780738629_
                             _tl3780638631_
                             _e3781138634_
                             _hd3781038637_
                             _tl3780938639_
                             _e3781438642_
                             _hd3781338645_
                             _tl3781238647_
                             _e3781738650_
                             _hd3781638653_
                             _tl3781538655_
                             _e3782038658_
                             _hd3781938661_
                             _tl3781838663_
                             _e3782338666_
                             _hd3782238669_
                             _tl3782138671_))))
                     (___match4524045241_
                      (lambda (_e3776838744_
                               _hd3776738747_
                               _tl3776638749_
                               _e3777138752_
                               _hd3777038755_
                               _tl3776938757_
                               _e3777438760_
                               _hd3777338763_
                               _tl3777238765_
                               _e3777738768_
                               _hd3777638771_
                               _tl3777538773_
                               _e3778038776_
                               _hd3777938779_
                               _tl3777838781_
                               _e3778338784_
                               _hd3778238787_
                               _tl3778138789_
                               _e3778638792_
                               _hd3778538795_
                               _tl3778438797_
                               _e3778938800_
                               _hd3778838803_
                               _tl3778738805_
                               _e3779238808_
                               _hd3779138811_
                               _tl3779038813_
                               _e3779538816_
                               _hd3779438819_
                               _tl3779338821_)
                        (let ((_L38824_ _hd3779438819_)
                              (_L38825_ _hd3778538795_)
                              (_L38826_ _hd3777638771_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38826_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38826_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38825_
                                      _self37645_)))
                              (___kont4494744948_ _L38824_ _L38825_ _L38826_)
                              (___match4544445445_
                               _e3776838744_
                               _hd3776738747_
                               _tl3776638749_
                               _e3777138752_
                               _hd3777038755_
                               _tl3776938757_
                               _e3777438760_
                               _hd3777338763_
                               _tl3777238765_
                               _e3777738768_
                               _hd3777638771_
                               _tl3777538773_
                               _e3778038776_
                               _hd3777938779_
                               _tl3777838781_
                               _e3778338784_
                               _hd3778238787_
                               _tl3778138789_
                               _e3778638792_
                               _hd3778538795_
                               _tl3778438797_
                               _e3778938800_
                               _hd3778838803_
                               _tl3778738805_)))))
                     (___match4523845239_
                      (lambda (_e3776838744_
                               _hd3776738747_
                               _tl3776638749_
                               _e3777138752_
                               _hd3777038755_
                               _tl3776938757_
                               _e3777438760_
                               _hd3777338763_
                               _tl3777238765_
                               _e3777738768_
                               _hd3777638771_
                               _tl3777538773_
                               _e3778038776_
                               _hd3777938779_
                               _tl3777838781_
                               _e3778338784_
                               _hd3778238787_
                               _tl3778138789_
                               _e3778638792_
                               _hd3778538795_
                               _tl3778438797_
                               _e3778938800_
                               _hd3778838803_
                               _tl3778738805_
                               _e3779238808_
                               _hd3779138811_
                               _tl3779038813_
                               _e3779538816_
                               _hd3779438819_
                               _tl3779338821_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3778738805_))
                            (___match4524045241_
                             _e3776838744_
                             _hd3776738747_
                             _tl3776638749_
                             _e3777138752_
                             _hd3777038755_
                             _tl3776938757_
                             _e3777438760_
                             _hd3777338763_
                             _tl3777238765_
                             _e3777738768_
                             _hd3777638771_
                             _tl3777538773_
                             _e3778038776_
                             _hd3777938779_
                             _tl3777838781_
                             _e3778338784_
                             _hd3778238787_
                             _tl3778138789_
                             _e3778638792_
                             _hd3778538795_
                             _tl3778438797_
                             _e3778938800_
                             _hd3778838803_
                             _tl3778738805_
                             _e3779238808_
                             _hd3779138811_
                             _tl3779038813_
                             _e3779538816_
                             _hd3779438819_
                             _tl3779338821_)
                            (___match4531845319_
                             _e3776838744_
                             _hd3776738747_
                             _tl3776638749_
                             _e3777138752_
                             _hd3777038755_
                             _tl3776938757_
                             _e3777438760_
                             _hd3777338763_
                             _tl3777238765_
                             _e3777738768_
                             _hd3777638771_
                             _tl3777538773_
                             _e3778038776_
                             _hd3777938779_
                             _tl3777838781_
                             _e3778338784_
                             _hd3778238787_
                             _tl3778138789_
                             _e3778638792_
                             _hd3778538795_
                             _tl3778438797_
                             _e3778938800_
                             _hd3778838803_
                             _tl3778738805_
                             _e3779238808_
                             _hd3779138811_
                             _tl3779038813_
                             _e3779538816_
                             _hd3779438819_
                             _tl3779338821_))))
                     (___match4522845229_
                      (lambda (_e3776838744_
                               _hd3776738747_
                               _tl3776638749_
                               _e3777138752_
                               _hd3777038755_
                               _tl3776938757_
                               _e3777438760_
                               _hd3777338763_
                               _tl3777238765_
                               _e3777738768_
                               _hd3777638771_
                               _tl3777538773_
                               _e3778038776_
                               _hd3777938779_
                               _tl3777838781_
                               _e3778338784_
                               _hd3778238787_
                               _tl3778138789_
                               _e3778638792_
                               _hd3778538795_
                               _tl3778438797_
                               _e3778938800_
                               _hd3778838803_
                               _tl3778738805_
                               _e3779238808_
                               _hd3779138811_
                               _tl3779038813_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd3779138811_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3779038813_))
                                (let ((_e3779538816_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3779038813_))))
                                  (let ((_tl3779338821_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3779538816_)))
                                        (_hd3779438819_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3779538816_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3779338821_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl3778738805_))
                                            (___match4524045241_
                                             _e3776838744_
                                             _hd3776738747_
                                             _tl3776638749_
                                             _e3777138752_
                                             _hd3777038755_
                                             _tl3776938757_
                                             _e3777438760_
                                             _hd3777338763_
                                             _tl3777238765_
                                             _e3777738768_
                                             _hd3777638771_
                                             _tl3777538773_
                                             _e3778038776_
                                             _hd3777938779_
                                             _tl3777838781_
                                             _e3778338784_
                                             _hd3778238787_
                                             _tl3778138789_
                                             _e3778638792_
                                             _hd3778538795_
                                             _tl3778438797_
                                             _e3778938800_
                                             _hd3778838803_
                                             _tl3778738805_
                                             _e3779238808_
                                             _hd3779138811_
                                             _tl3779038813_
                                             _e3779538816_
                                             _hd3779438819_
                                             _tl3779338821_)
                                            (___match4531845319_
                                             _e3776838744_
                                             _hd3776738747_
                                             _tl3776638749_
                                             _e3777138752_
                                             _hd3777038755_
                                             _tl3776938757_
                                             _e3777438760_
                                             _hd3777338763_
                                             _tl3777238765_
                                             _e3777738768_
                                             _hd3777638771_
                                             _tl3777538773_
                                             _e3778038776_
                                             _hd3777938779_
                                             _tl3777838781_
                                             _e3778338784_
                                             _hd3778238787_
                                             _tl3778138789_
                                             _e3778638792_
                                             _hd3778538795_
                                             _tl3778438797_
                                             _e3778938800_
                                             _hd3778838803_
                                             _tl3778738805_
                                             _e3779238808_
                                             _hd3779138811_
                                             _tl3779038813_
                                             _e3779538816_
                                             _hd3779438819_
                                             _tl3779338821_))
                                        (___match4544245443_
                                         _e3776838744_
                                         _hd3776738747_
                                         _tl3776638749_
                                         _e3777138752_
                                         _hd3777038755_
                                         _tl3776938757_
                                         _e3777438760_
                                         _hd3777338763_
                                         _tl3777238765_
                                         _e3777738768_
                                         _hd3777638771_
                                         _tl3777538773_
                                         _e3778038776_
                                         _hd3777938779_
                                         _tl3777838781_
                                         _e3778338784_
                                         _hd3778238787_
                                         _tl3778138789_
                                         _e3778638792_
                                         _hd3778538795_
                                         _tl3778438797_
                                         _e3778938800_
                                         _hd3778838803_
                                         _tl3778738805_))))
                                (___match4544245443_
                                 _e3776838744_
                                 _hd3776738747_
                                 _tl3776638749_
                                 _e3777138752_
                                 _hd3777038755_
                                 _tl3776938757_
                                 _e3777438760_
                                 _hd3777338763_
                                 _tl3777238765_
                                 _e3777738768_
                                 _hd3777638771_
                                 _tl3777538773_
                                 _e3778038776_
                                 _hd3777938779_
                                 _tl3777838781_
                                 _e3778338784_
                                 _hd3778238787_
                                 _tl3778138789_
                                 _e3778638792_
                                 _hd3778538795_
                                 _tl3778438797_
                                 _e3778938800_
                                 _hd3778838803_
                                 _tl3778738805_))
                            (___match4544245443_
                             _e3776838744_
                             _hd3776738747_
                             _tl3776638749_
                             _e3777138752_
                             _hd3777038755_
                             _tl3776938757_
                             _e3777438760_
                             _hd3777338763_
                             _tl3777238765_
                             _e3777738768_
                             _hd3777638771_
                             _tl3777538773_
                             _e3778038776_
                             _hd3777938779_
                             _tl3777838781_
                             _e3778338784_
                             _hd3778238787_
                             _tl3778138789_
                             _e3778638792_
                             _hd3778538795_
                             _tl3778438797_
                             _e3778938800_
                             _hd3778838803_
                             _tl3778738805_))))
                     (___match4516045161_
                      (lambda (_e3771738865_
                               _hd3771638868_
                               _tl3771538870_
                               _e3772038873_
                               _hd3771938876_
                               _tl3771838878_
                               _e3772338881_
                               _hd3772238884_
                               _tl3772138886_
                               _e3772638889_
                               _hd3772538892_
                               _tl3772438894_
                               _e3772938897_
                               _hd3772838900_
                               _tl3772738902_
                               _e3773238905_
                               _hd3773138908_
                               _tl3773038910_
                               _e3773538913_
                               _hd3773438916_
                               _tl3773338918_
                               _e3773838921_
                               _hd3773738924_
                               _tl3773638926_
                               _e3774138929_
                               _hd3774038932_
                               _tl3773938934_
                               _e3774438937_
                               _hd3774338940_
                               _tl3774238942_
                               _e3774738945_
                               _hd3774638948_
                               _tl3774538950_
                               _e3775038953_
                               _hd3774938956_
                               _tl3774838958_
                               _e3775338961_
                               _hd3775238964_
                               _tl3775138966_
                               ___splice4494544946_
                               _target3775438969_
                               _tl3775638971_)
                        (letrec ((_loop3775738974_
                                  (lambda (_hd3775538977_ _args3776138979_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3775538977_))
                                        (let ((_e3775838982_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3775538977_))))
                                          (let ((_lp-tl3776038987_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3775838982_)))
                                                (_lp-hd3775938985_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3775838982_))))
                                            (let ((__tmp46224
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3775938985_
                                                           _args3776138979_))))
                                              (declare (not safe))
                                              (_loop3775738974_
                                               _lp-tl3776038987_
                                               __tmp46224))))
                                        (let ((_args3776238990_
                                               (reverse _args3776138979_)))
                                          (let ((_L38993_ _args3776238990_)
                                                (_L38994_ _hd3775238964_)
                                                (_L38995_ _hd3774338940_)
                                                (_L38996_ _hd3773438916_)
                                                (_L38997_ _hd3772538892_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L38997_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L38996_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L38995_
                                                        _self37645_)))
                                                (___kont4494344944_
                                                 _L38993_
                                                 _L38994_
                                                 _L38995_
                                                 _L38996_
                                                 _L38997_)
                                                (___kont4496344964_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3775738974_ _target3775438969_ '())))))
                     (___match4511845119_
                      (lambda (_e3771738865_
                               _hd3771638868_
                               _tl3771538870_
                               _e3772038873_
                               _hd3771938876_
                               _tl3771838878_
                               _e3772338881_
                               _hd3772238884_
                               _tl3772138886_
                               _e3772638889_
                               _hd3772538892_
                               _tl3772438894_
                               _e3772938897_
                               _hd3772838900_
                               _tl3772738902_
                               _e3773238905_
                               _hd3773138908_
                               _tl3773038910_
                               _e3773538913_
                               _hd3773438916_
                               _tl3773338918_
                               _e3773838921_
                               _hd3773738924_
                               _tl3773638926_
                               _e3774138929_
                               _hd3774038932_
                               _tl3773938934_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd3774038932_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3773938934_))
                                (let ((_e3774438937_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3773938934_))))
                                  (let ((_tl3774238942_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3774438937_)))
                                        (_hd3774338940_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3774438937_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3774238942_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3773638926_))
                                            (let ((_e3774738945_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3773638926_))))
                                              (let ((_tl3774538950_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3774738945_)))
                                                    (_hd3774638948_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3774738945_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd3774638948_))
                                                    (let ((_e3775038953_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd3774638948_))))
                                                      (let ((_tl3774838958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3775038953_)))
                    (_hd3774938956_
                     (let () (declare (not safe)) (##car _e3775038953_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd3774938956_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd3774938956_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3774838958_))
                            (let ((_e3775338961_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3774838958_))))
                              (let ((_tl3775138966_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3775338961_)))
                                    (_hd3775238964_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3775338961_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3775138966_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl3774538950_))
                                        (let ((___splice4494544946_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl3774538950_
                                                  '0))))
                                          (let ((_tl3775638971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4494544946_
                                                    '1)))
                                                (_target3775438969_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4494544946_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl3775638971_))
                                                (___match4516045161_
                                                 _e3771738865_
                                                 _hd3771638868_
                                                 _tl3771538870_
                                                 _e3772038873_
                                                 _hd3771938876_
                                                 _tl3771838878_
                                                 _e3772338881_
                                                 _hd3772238884_
                                                 _tl3772138886_
                                                 _e3772638889_
                                                 _hd3772538892_
                                                 _tl3772438894_
                                                 _e3772938897_
                                                 _hd3772838900_
                                                 _tl3772738902_
                                                 _e3773238905_
                                                 _hd3773138908_
                                                 _tl3773038910_
                                                 _e3773538913_
                                                 _hd3773438916_
                                                 _tl3773338918_
                                                 _e3773838921_
                                                 _hd3773738924_
                                                 _tl3773638926_
                                                 _e3774138929_
                                                 _hd3774038932_
                                                 _tl3773938934_
                                                 _e3774438937_
                                                 _hd3774338940_
                                                 _tl3774238942_
                                                 _e3774738945_
                                                 _hd3774638948_
                                                 _tl3774538950_
                                                 _e3775038953_
                                                 _hd3774938956_
                                                 _tl3774838958_
                                                 _e3775338961_
                                                 _hd3775238964_
                                                 _tl3775138966_
                                                 ___splice4494544946_
                                                 _target3775438969_
                                                 _tl3775638971_)
                                                (___kont4496344964_))))
                                        (___kont4496344964_))
                                    (___kont4496344964_))))
                            (___kont4496344964_))
                        (___kont4496344964_))
                    (___kont4496344964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4496344964_))))
                                            (___match4544245443_
                                             _e3771738865_
                                             _hd3771638868_
                                             _tl3771538870_
                                             _e3772038873_
                                             _hd3771938876_
                                             _tl3771838878_
                                             _e3772338881_
                                             _hd3772238884_
                                             _tl3772138886_
                                             _e3772638889_
                                             _hd3772538892_
                                             _tl3772438894_
                                             _e3772938897_
                                             _hd3772838900_
                                             _tl3772738902_
                                             _e3773238905_
                                             _hd3773138908_
                                             _tl3773038910_
                                             _e3773538913_
                                             _hd3773438916_
                                             _tl3773338918_
                                             _e3773838921_
                                             _hd3773738924_
                                             _tl3773638926_))
                                        (___match4544245443_
                                         _e3771738865_
                                         _hd3771638868_
                                         _tl3771538870_
                                         _e3772038873_
                                         _hd3771938876_
                                         _tl3771838878_
                                         _e3772338881_
                                         _hd3772238884_
                                         _tl3772138886_
                                         _e3772638889_
                                         _hd3772538892_
                                         _tl3772438894_
                                         _e3772938897_
                                         _hd3772838900_
                                         _tl3772738902_
                                         _e3773238905_
                                         _hd3773138908_
                                         _tl3773038910_
                                         _e3773538913_
                                         _hd3773438916_
                                         _tl3773338918_
                                         _e3773838921_
                                         _hd3773738924_
                                         _tl3773638926_))))
                                (___match4544245443_
                                 _e3771738865_
                                 _hd3771638868_
                                 _tl3771538870_
                                 _e3772038873_
                                 _hd3771938876_
                                 _tl3771838878_
                                 _e3772338881_
                                 _hd3772238884_
                                 _tl3772138886_
                                 _e3772638889_
                                 _hd3772538892_
                                 _tl3772438894_
                                 _e3772938897_
                                 _hd3772838900_
                                 _tl3772738902_
                                 _e3773238905_
                                 _hd3773138908_
                                 _tl3773038910_
                                 _e3773538913_
                                 _hd3773438916_
                                 _tl3773338918_
                                 _e3773838921_
                                 _hd3773738924_
                                 _tl3773638926_))
                            (___match4522845229_
                             _e3771738865_
                             _hd3771638868_
                             _tl3771538870_
                             _e3772038873_
                             _hd3771938876_
                             _tl3771838878_
                             _e3772338881_
                             _hd3772238884_
                             _tl3772138886_
                             _e3772638889_
                             _hd3772538892_
                             _tl3772438894_
                             _e3772938897_
                             _hd3772838900_
                             _tl3772738902_
                             _e3773238905_
                             _hd3773138908_
                             _tl3773038910_
                             _e3773538913_
                             _hd3773438916_
                             _tl3773338918_
                             _e3773838921_
                             _hd3773738924_
                             _tl3773638926_
                             _e3774138929_
                             _hd3774038932_
                             _tl3773938934_))))
                     (___match4505045051_
                      (lambda (_e3767339057_
                               _hd3767239060_
                               _tl3767139062_
                               _e3767639065_
                               _hd3767539068_
                               _tl3767439070_
                               _e3767939073_
                               _hd3767839076_
                               _tl3767739078_
                               _e3768239081_
                               _hd3768139084_
                               _tl3768039086_
                               _e3768539089_
                               _hd3768439092_
                               _tl3768339094_
                               _e3768839097_
                               _hd3768739100_
                               _tl3768639102_
                               _e3769139105_
                               _hd3769039108_
                               _tl3768939110_
                               _e3769439113_
                               _hd3769339116_
                               _tl3769239118_
                               _e3769739121_
                               _hd3769639124_
                               _tl3769539126_
                               _e3770039129_
                               _hd3769939132_
                               _tl3769839134_
                               ___splice4494144942_
                               _target3770139137_
                               _tl3770339139_)
                        (letrec ((_loop3770439142_
                                  (lambda (_hd3770239145_ _args3770839147_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3770239145_))
                                        (let ((_e3770539150_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3770239145_))))
                                          (let ((_lp-tl3770739155_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3770539150_)))
                                                (_lp-hd3770639153_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3770539150_))))
                                            (let ((__tmp46225
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3770639153_
                                                           _args3770839147_))))
                                              (declare (not safe))
                                              (_loop3770439142_
                                               _lp-tl3770739155_
                                               __tmp46225))))
                                        (let ((_args3770939158_
                                               (reverse _args3770839147_)))
                                          (let ((_L39161_ _args3770939158_)
                                                (_L39162_ _hd3769939132_)
                                                (_L39163_ _hd3769039108_)
                                                (_L39164_ _hd3768139084_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L39164_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L39163_
                                                        _self37645_)))
                                                (___kont4493944940_
                                                 _L39161_
                                                 _L39162_
                                                 _L39163_
                                                 _L39164_)
                                                (___match4523845239_
                                                 _e3767339057_
                                                 _hd3767239060_
                                                 _tl3767139062_
                                                 _e3767639065_
                                                 _hd3767539068_
                                                 _tl3767439070_
                                                 _e3767939073_
                                                 _hd3767839076_
                                                 _tl3767739078_
                                                 _e3768239081_
                                                 _hd3768139084_
                                                 _tl3768039086_
                                                 _e3768539089_
                                                 _hd3768439092_
                                                 _tl3768339094_
                                                 _e3768839097_
                                                 _hd3768739100_
                                                 _tl3768639102_
                                                 _e3769139105_
                                                 _hd3769039108_
                                                 _tl3768939110_
                                                 _e3769439113_
                                                 _hd3769339116_
                                                 _tl3769239118_
                                                 _e3769739121_
                                                 _hd3769639124_
                                                 _tl3769539126_
                                                 _e3770039129_
                                                 _hd3769939132_
                                                 _tl3769839134_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3770439142_ _target3770139137_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4493744938_))
                    (let ((_e3767339057_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4493744938_))))
                      (let ((_tl3767139062_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3767339057_)))
                            (_hd3767239060_
                             (let ()
                               (declare (not safe))
                               (##car _e3767339057_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3767139062_))
                            (let ((_e3767639065_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3767139062_))))
                              (let ((_tl3767439070_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3767639065_)))
                                    (_hd3767539068_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3767639065_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd3767539068_))
                                    (let ((_e3767939073_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd3767539068_))))
                                      (let ((_tl3767739078_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3767939073_)))
                                            (_hd3767839076_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3767939073_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd3767839076_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd3767839076_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl3767739078_))
                                                    (let ((_e3768239081_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl3767739078_))))
                                                      (let ((_tl3768039086_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3768239081_)))
                    (_hd3768139084_
                     (let () (declare (not safe)) (##car _e3768239081_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl3768039086_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl3767439070_))
                        (let ((_e3768539089_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl3767439070_))))
                          (let ((_tl3768339094_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3768539089_)))
                                (_hd3768439092_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3768539089_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd3768439092_))
                                (let ((_e3768839097_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd3768439092_))))
                                  (let ((_tl3768639102_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3768839097_)))
                                        (_hd3768739100_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3768839097_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd3768739100_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd3768739100_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl3768639102_))
                                                (let ((_e3769139105_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl3768639102_))))
                                                  (let ((_tl3768939110_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3769139105_)))
                                                        (_hd3769039108_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3769139105_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl3768939110_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl3768339094_))
                                                            (let ((_e3769439113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl3768339094_))))
                      (let ((_tl3769239118_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3769439113_)))
                            (_hd3769339116_
                             (let ()
                               (declare (not safe))
                               (##car _e3769439113_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd3769339116_))
                            (let ((_e3769739121_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd3769339116_))))
                              (let ((_tl3769539126_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3769739121_)))
                                    (_hd3769639124_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3769739121_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd3769639124_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd3769639124_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3769539126_))
                                            (let ((_e3770039129_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3769539126_))))
                                              (let ((_tl3769839134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3770039129_)))
                                                    (_hd3769939132_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3770039129_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl3769839134_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl3769239118_))
                                                        (let ((___splice4494144942_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl3769239118_ '0))))
                  (let ((_tl3770339139_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4494144942_ '1)))
                        (_target3770139137_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4494144942_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl3770339139_))
                        (___match4505045051_
                         _e3767339057_
                         _hd3767239060_
                         _tl3767139062_
                         _e3767639065_
                         _hd3767539068_
                         _tl3767439070_
                         _e3767939073_
                         _hd3767839076_
                         _tl3767739078_
                         _e3768239081_
                         _hd3768139084_
                         _tl3768039086_
                         _e3768539089_
                         _hd3768439092_
                         _tl3768339094_
                         _e3768839097_
                         _hd3768739100_
                         _tl3768639102_
                         _e3769139105_
                         _hd3769039108_
                         _tl3768939110_
                         _e3769439113_
                         _hd3769339116_
                         _tl3769239118_
                         _e3769739121_
                         _hd3769639124_
                         _tl3769539126_
                         _e3770039129_
                         _hd3769939132_
                         _tl3769839134_
                         ___splice4494144942_
                         _target3770139137_
                         _tl3770339139_)
                        (___match4523845239_
                         _e3767339057_
                         _hd3767239060_
                         _tl3767139062_
                         _e3767639065_
                         _hd3767539068_
                         _tl3767439070_
                         _e3767939073_
                         _hd3767839076_
                         _tl3767739078_
                         _e3768239081_
                         _hd3768139084_
                         _tl3768039086_
                         _e3768539089_
                         _hd3768439092_
                         _tl3768339094_
                         _e3768839097_
                         _hd3768739100_
                         _tl3768639102_
                         _e3769139105_
                         _hd3769039108_
                         _tl3768939110_
                         _e3769439113_
                         _hd3769339116_
                         _tl3769239118_
                         _e3769739121_
                         _hd3769639124_
                         _tl3769539126_
                         _e3770039129_
                         _hd3769939132_
                         _tl3769839134_))))
                (___match4523845239_
                 _e3767339057_
                 _hd3767239060_
                 _tl3767139062_
                 _e3767639065_
                 _hd3767539068_
                 _tl3767439070_
                 _e3767939073_
                 _hd3767839076_
                 _tl3767739078_
                 _e3768239081_
                 _hd3768139084_
                 _tl3768039086_
                 _e3768539089_
                 _hd3768439092_
                 _tl3768339094_
                 _e3768839097_
                 _hd3768739100_
                 _tl3768639102_
                 _e3769139105_
                 _hd3769039108_
                 _tl3768939110_
                 _e3769439113_
                 _hd3769339116_
                 _tl3769239118_
                 _e3769739121_
                 _hd3769639124_
                 _tl3769539126_
                 _e3770039129_
                 _hd3769939132_
                 _tl3769839134_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4544245443_
                                                     _e3767339057_
                                                     _hd3767239060_
                                                     _tl3767139062_
                                                     _e3767639065_
                                                     _hd3767539068_
                                                     _tl3767439070_
                                                     _e3767939073_
                                                     _hd3767839076_
                                                     _tl3767739078_
                                                     _e3768239081_
                                                     _hd3768139084_
                                                     _tl3768039086_
                                                     _e3768539089_
                                                     _hd3768439092_
                                                     _tl3768339094_
                                                     _e3768839097_
                                                     _hd3768739100_
                                                     _tl3768639102_
                                                     _e3769139105_
                                                     _hd3769039108_
                                                     _tl3768939110_
                                                     _e3769439113_
                                                     _hd3769339116_
                                                     _tl3769239118_))))
                                            (___match4544245443_
                                             _e3767339057_
                                             _hd3767239060_
                                             _tl3767139062_
                                             _e3767639065_
                                             _hd3767539068_
                                             _tl3767439070_
                                             _e3767939073_
                                             _hd3767839076_
                                             _tl3767739078_
                                             _e3768239081_
                                             _hd3768139084_
                                             _tl3768039086_
                                             _e3768539089_
                                             _hd3768439092_
                                             _tl3768339094_
                                             _e3768839097_
                                             _hd3768739100_
                                             _tl3768639102_
                                             _e3769139105_
                                             _hd3769039108_
                                             _tl3768939110_
                                             _e3769439113_
                                             _hd3769339116_
                                             _tl3769239118_))
                                        (___match4511845119_
                                         _e3767339057_
                                         _hd3767239060_
                                         _tl3767139062_
                                         _e3767639065_
                                         _hd3767539068_
                                         _tl3767439070_
                                         _e3767939073_
                                         _hd3767839076_
                                         _tl3767739078_
                                         _e3768239081_
                                         _hd3768139084_
                                         _tl3768039086_
                                         _e3768539089_
                                         _hd3768439092_
                                         _tl3768339094_
                                         _e3768839097_
                                         _hd3768739100_
                                         _tl3768639102_
                                         _e3769139105_
                                         _hd3769039108_
                                         _tl3768939110_
                                         _e3769439113_
                                         _hd3769339116_
                                         _tl3769239118_
                                         _e3769739121_
                                         _hd3769639124_
                                         _tl3769539126_))
                                    (___match4544245443_
                                     _e3767339057_
                                     _hd3767239060_
                                     _tl3767139062_
                                     _e3767639065_
                                     _hd3767539068_
                                     _tl3767439070_
                                     _e3767939073_
                                     _hd3767839076_
                                     _tl3767739078_
                                     _e3768239081_
                                     _hd3768139084_
                                     _tl3768039086_
                                     _e3768539089_
                                     _hd3768439092_
                                     _tl3768339094_
                                     _e3768839097_
                                     _hd3768739100_
                                     _tl3768639102_
                                     _e3769139105_
                                     _hd3769039108_
                                     _tl3768939110_
                                     _e3769439113_
                                     _hd3769339116_
                                     _tl3769239118_))))
                            (___match4544245443_
                             _e3767339057_
                             _hd3767239060_
                             _tl3767139062_
                             _e3767639065_
                             _hd3767539068_
                             _tl3767439070_
                             _e3767939073_
                             _hd3767839076_
                             _tl3767739078_
                             _e3768239081_
                             _hd3768139084_
                             _tl3768039086_
                             _e3768539089_
                             _hd3768439092_
                             _tl3768339094_
                             _e3768839097_
                             _hd3768739100_
                             _tl3768639102_
                             _e3769139105_
                             _hd3769039108_
                             _tl3768939110_
                             _e3769439113_
                             _hd3769339116_
                             _tl3769239118_))))
                    (___match4538045381_
                     _e3767339057_
                     _hd3767239060_
                     _tl3767139062_
                     _e3767639065_
                     _hd3767539068_
                     _tl3767439070_
                     _e3767939073_
                     _hd3767839076_
                     _tl3767739078_
                     _e3768239081_
                     _hd3768139084_
                     _tl3768039086_
                     _e3768539089_
                     _hd3768439092_
                     _tl3768339094_
                     _e3768839097_
                     _hd3768739100_
                     _tl3768639102_
                     _e3769139105_
                     _hd3769039108_
                     _tl3768939110_))
                (___kont4496344964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4496344964_))
                                            (___kont4496344964_))
                                        (___kont4496344964_))))
                                (___kont4496344964_))))
                        (___kont4496344964_))
                    (___kont4496344964_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4496344964_))
                                                (___kont4496344964_))
                                            (___kont4496344964_))))
                                    (___kont4496344964_))))
                            (___kont4496344964_))))
                    (___kont4496344964_))))))))))

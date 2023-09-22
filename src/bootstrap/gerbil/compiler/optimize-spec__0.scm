(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1695337521)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl44071_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp45675 (force gxc#&identity)))
             (declare (not safe))
             (hash-copy! _tbl44071_ __tmp45675))
           (let ()
             (declare (not safe))
             (table-set! _tbl44071_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44071_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44071_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44071_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl44071_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx44064_ . _args44066_)
        (let ((__tmp45677
               (lambda () (apply gxc#compile-e _stx44064_ _args44066_)))
              (__tmp45676 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp45677
           gxc#current-compile-methods
           __tmp45676))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl44061_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp45678 (force gxc#&void)))
             (declare (not safe))
             (hash-copy! _tbl44061_ __tmp45678))
           (let ()
             (declare (not safe))
             (table-set! _tbl44061_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44061_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44061_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44061_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44061_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44061_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44061_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44061_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44061_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl44061_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44061_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl44061_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set! _tbl44061_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44061_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44061_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (table-set!
              _tbl44061_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl44061_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx44054_ . _args44056_)
        (let ((__tmp45680
               (lambda () (apply gxc#compile-e _stx44054_ _args44056_)))
              (__tmp45679 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp45680
           gxc#current-compile-methods
           __tmp45679))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl44051_
                (let () (declare (not safe)) (make-table 'test: eq?))))
           (let ((__tmp45681 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-copy! _tbl44051_ __tmp45681))
           (let ()
             (declare (not safe))
             (table-set! _tbl44051_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (table-set! _tbl44051_ '%#call gxc#subst-object-refs-call%))
           _tbl44051_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx44044_ . _args44046_)
        (let ((__tmp45683
               (lambda () (apply gxc#compile-e _stx44044_ _args44046_)))
              (__tmp45682 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp45683
           gxc#current-compile-methods
           __tmp45682))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx40714_)
        (letrec ((_generate-method-bind40716_
                  (lambda (_$t44038_ _id44039_ _$id44040_)
                    (let ((_$tmp44042_ (make-symbol (gensym '__tmp))))
                      (let ((__tmp45728
                             (let ()
                               (declare (not safe))
                               (cons _$id44040_ '())))
                            (__tmp45684
                             (let ((__tmp45685
                                    (let ((__tmp45686
                                           (let ((__tmp45726
                                                  (let ((__tmp45727
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp45727)))
                                                 (__tmp45687
                                                  (let ((__tmp45688
                                                         (let ((__tmp45689
                                                                (let ((__tmp45690
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45691
                                      (let ((__tmp45692
                                             (let ((__tmp45712
                                                    (let ((__tmp45713
                                                           (let ((__tmp45725
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _$tmp44042_ '())))
                         (__tmp45714
                          (let ((__tmp45715
                                 (let ((__tmp45716
                                        (let ((__tmp45723
                                               (let ((__tmp45724
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'direct-method-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp45724)))
                                              (__tmp45717
                                               (let ((__tmp45721
                                                      (let ((__tmp45722
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$t44038_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp45722)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45718
                                                      (let ((__tmp45719
                                                             (let ((__tmp45720
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id44039_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp45720))))
                (declare (not safe))
                (cons __tmp45719 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp45721
                                                       __tmp45718))))
                                          (declare (not safe))
                                          (cons __tmp45723 __tmp45717))))
                                   (declare (not safe))
                                   (cons '%#call __tmp45716))))
                            (declare (not safe))
                            (cons __tmp45715 '()))))
                     (declare (not safe))
                     (cons __tmp45725 __tmp45714))))
              (declare (not safe))
              (cons __tmp45713 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45693
                                                    (let ((__tmp45694
                                                           (let ((__tmp45695
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45710
                                 (let ((__tmp45711
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp44042_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp45711)))
                                (__tmp45696
                                 (let ((__tmp45708
                                        (let ((__tmp45709
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp44042_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp45709)))
                                       (__tmp45697
                                        (let ((__tmp45698
                                               (let ((__tmp45699
                                                      (let ((__tmp45706
                                                             (let ((__tmp45707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp45707)))
                    (__tmp45700
                     (let ((__tmp45704
                            (let ((__tmp45705
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp45705)))
                           (__tmp45701
                            (let ((__tmp45702
                                   (let ((__tmp45703
                                          (let ()
                                            (declare (not safe))
                                            (cons _id44039_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp45703))))
                              (declare (not safe))
                              (cons __tmp45702 '()))))
                       (declare (not safe))
                       (cons __tmp45704 __tmp45701))))
                (declare (not safe))
                (cons __tmp45706 __tmp45700))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp45699))))
                                          (declare (not safe))
                                          (cons __tmp45698 '()))))
                                   (declare (not safe))
                                   (cons __tmp45708 __tmp45697))))
                            (declare (not safe))
                            (cons __tmp45710 __tmp45696))))
                     (declare (not safe))
                     (cons '%#if __tmp45695))))
              (declare (not safe))
              (cons __tmp45694 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45712 __tmp45693))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp45692))))
                                 (declare (not safe))
                                 (cons __tmp45691 '()))))
                          (declare (not safe))
                          (cons '() __tmp45690))))
                   (declare (not safe))
                   (cons '%#lambda __tmp45689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45688 '()))))
                                             (declare (not safe))
                                             (cons __tmp45726 __tmp45687))))
                                      (declare (not safe))
                                      (cons '%#call __tmp45686))))
                               (declare (not safe))
                               (cons __tmp45685 '()))))
                        (declare (not safe))
                        (cons __tmp45728 __tmp45684)))))
                 (_generate-slot-bind40717_
                  (lambda (_$t44032_ _id44033_ _$id44034_)
                    (let ((_$tmp44036_ (make-symbol (gensym '__tmp))))
                      (let ((__tmp45773
                             (let ()
                               (declare (not safe))
                               (cons _$id44034_ '())))
                            (__tmp45729
                             (let ((__tmp45730
                                    (let ((__tmp45731
                                           (let ((__tmp45759
                                                  (let ((__tmp45760
                                                         (let ((__tmp45772
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp44036_ '())))
                       (__tmp45761
                        (let ((__tmp45762
                               (let ((__tmp45763
                                      (let ((__tmp45770
                                             (let ((__tmp45771
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp45771)))
                                            (__tmp45764
                                             (let ((__tmp45768
                                                    (let ((__tmp45769
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$t44032_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp45769)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45765
                                                    (let ((__tmp45766
                                                           (let ((__tmp45767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id44033_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp45767))))
              (declare (not safe))
              (cons __tmp45766 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45768 __tmp45765))))
                                        (declare (not safe))
                                        (cons __tmp45770 __tmp45764))))
                                 (declare (not safe))
                                 (cons '%#call __tmp45763))))
                          (declare (not safe))
                          (cons __tmp45762 '()))))
                   (declare (not safe))
                   (cons __tmp45772 __tmp45761))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45760 '())))
                                                 (__tmp45732
                                                  (let ((__tmp45733
                                                         (let ((__tmp45734
                                                                (let ((__tmp45757
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45758
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp44036_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp45758)))
                              (__tmp45735
                               (let ((__tmp45747
                                      (let ((__tmp45748
                                             (let ((__tmp45755
                                                    (let ((__tmp45756
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons '##fx+
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp45756)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp45749
                                                    (let ((__tmp45753
                                                           (let ((__tmp45754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp44036_ '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp45754)))
                  (__tmp45750
                   (let ((__tmp45751
                          (let ((__tmp45752
                                 (let () (declare (not safe)) (cons '1 '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp45752))))
                     (declare (not safe))
                     (cons __tmp45751 '()))))
              (declare (not safe))
              (cons __tmp45753 __tmp45750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp45755 __tmp45749))))
                                        (declare (not safe))
                                        (cons '%#call __tmp45748)))
                                     (__tmp45736
                                      (let ((__tmp45737
                                             (let ((__tmp45738
                                                    (let ((__tmp45745
                                                           (let ((__tmp45746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp45746)))
                  (__tmp45739
                   (let ((__tmp45743
                          (let ((__tmp45744
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp45744)))
                         (__tmp45740
                          (let ((__tmp45741
                                 (let ((__tmp45742
                                        (let ()
                                          (declare (not safe))
                                          (cons _id44033_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp45742))))
                            (declare (not safe))
                            (cons __tmp45741 '()))))
                     (declare (not safe))
                     (cons __tmp45743 __tmp45740))))
              (declare (not safe))
              (cons __tmp45745 __tmp45739))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp45738))))
                                        (declare (not safe))
                                        (cons __tmp45737 '()))))
                                 (declare (not safe))
                                 (cons __tmp45747 __tmp45736))))
                          (declare (not safe))
                          (cons __tmp45757 __tmp45735))))
                   (declare (not safe))
                   (cons '%#if __tmp45734))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45733 '()))))
                                             (declare (not safe))
                                             (cons __tmp45759 __tmp45732))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp45731))))
                               (declare (not safe))
                               (cons __tmp45730 '()))))
                        (declare (not safe))
                        (cons __tmp45773 __tmp45729)))))
                 (_generate-class-check-bind40718_
                  (lambda (_$t44028_ _class-type44029_ _$class-type44030_)
                    (let ((__tmp45785
                           (let ()
                             (declare (not safe))
                             (cons _$class-type44030_ '())))
                          (__tmp45774
                           (let ((__tmp45775
                                  (let ((__tmp45776
                                         (let ((__tmp45783
                                                (let ((__tmp45784
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'class-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp45784)))
                                               (__tmp45777
                                                (let ((__tmp45781
                                                       (let ((__tmp45782
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type44029_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45782)))
              (__tmp45778
               (let ((__tmp45779
                      (let ((__tmp45780
                             (let ()
                               (declare (not safe))
                               (cons _$t44028_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp45780))))
                 (declare (not safe))
                 (cons __tmp45779 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45781
                                                        __tmp45778))))
                                           (declare (not safe))
                                           (cons __tmp45783 __tmp45777))))
                                    (declare (not safe))
                                    (cons '%#call __tmp45776))))
                             (declare (not safe))
                             (cons __tmp45775 '()))))
                      (declare (not safe))
                      (cons __tmp45785 __tmp45774))))
                 (_generate-struct-check-bind40719_
                  (lambda (_$t44024_ _class-type44025_ _$class-type44026_)
                    (let ((__tmp45797
                           (let ()
                             (declare (not safe))
                             (cons _$class-type44026_ '())))
                          (__tmp45786
                           (let ((__tmp45787
                                  (let ((__tmp45788
                                         (let ((__tmp45795
                                                (let ((__tmp45796
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons 'struct-subtype?
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '%#ref __tmp45796)))
                                               (__tmp45789
                                                (let ((__tmp45793
                                                       (let ((__tmp45794
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _class-type44025_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45794)))
              (__tmp45790
               (let ((__tmp45791
                      (let ((__tmp45792
                             (let ()
                               (declare (not safe))
                               (cons _$t44024_ '()))))
                        (declare (not safe))
                        (cons '%#ref __tmp45792))))
                 (declare (not safe))
                 (cons __tmp45791 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45793
                                                        __tmp45790))))
                                           (declare (not safe))
                                           (cons __tmp45795 __tmp45789))))
                                    (declare (not safe))
                                    (cons '%#call __tmp45788))))
                             (declare (not safe))
                             (cons __tmp45787 '()))))
                      (declare (not safe))
                      (cons __tmp45797 __tmp45786))))
                 (_generate-specializer-impl40720_
                  (lambda (_$t43973_
                           _methods-bind43974_
                           _slots-bind43975_
                           _class-check-bind43976_
                           _struct-check-bind43977_
                           _specializer-impl43978_
                           _lifted-specializer-id43979_
                           _unchecked-specializer-impl43980_)
                    (let ((__tmp45798
                           (let ((__tmp45799
                                  (let ((__tmp45824
                                         (let ()
                                           (declare (not safe))
                                           (cons _$t43973_ '())))
                                        (__tmp45800
                                         (let ((__tmp45801
                                                (let ((__tmp45802
                                                       (let ((__tmp45821
                                                              (let ((__tmp45822
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45823
                                    (let ()
                                      (declare (not safe))
                                      (foldr1 cons
                                              _struct-check-bind43977_
                                              _class-check-bind43976_))))
                               (declare (not safe))
                               (foldr1 cons __tmp45823 _slots-bind43975_))))
                        (declare (not safe))
                        (foldr1 cons __tmp45822 _methods-bind43974_)))
                     (__tmp45803
                      (let ((__tmp45804
                             (if (or _lifted-specializer-id43979_
                                     _unchecked-specializer-impl43980_)
                                 (let* ((_$specializer43985_
                                         (make-symbol (gensym '__specializer)))
                                        (__tmp45805
                                         (let ((__tmp45817
                                                (let ((__tmp45818
                                                       (let ((__tmp45820
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer43985_ '())))
                     (__tmp45819
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl43978_ '()))))
                 (declare (not safe))
                 (cons __tmp45820 __tmp45819))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45818 '())))
                                               (__tmp45806
                                                (let ((__tmp45807
                                                       (let _recur43987_ ((_rest43989_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   (map caar _struct-check-bind43977_)))
                 (let* ((_rest4399043998_ _rest43989_)
                        (_else4399244006_
                         (lambda ()
                           (if _lifted-specializer-id43979_
                               (let ((__tmp45808
                                      (let ()
                                        (declare (not safe))
                                        (cons _lifted-specializer-id43979_
                                              '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp45808))
                               _unchecked-specializer-impl43980_)))
                        (_K4399444012_
                         (lambda (_rest44009_ _checkq44010_)
                           (let ((__tmp45809
                                  (let ((__tmp45815
                                         (let ((__tmp45816
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _checkq44010_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp45816)))
                                        (__tmp45810
                                         (let ((__tmp45814
                                                (let ()
                                                  (declare (not safe))
                                                  (_recur43987_ _rest44009_)))
                                               (__tmp45811
                                                (let ((__tmp45812
                                                       (let ((__tmp45813
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _$specializer43985_ '()))))
                 (declare (not safe))
                 (cons '%#ref __tmp45813))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45812 '()))))
                                           (declare (not safe))
                                           (cons __tmp45814 __tmp45811))))
                                    (declare (not safe))
                                    (cons __tmp45815 __tmp45810))))
                             (declare (not safe))
                             (cons '%#if __tmp45809)))))
                   (if (let () (declare (not safe)) (##pair? _rest4399043998_))
                       (let ((_hd4399544015_
                              (let ()
                                (declare (not safe))
                                (##car _rest4399043998_)))
                             (_tl4399644017_
                              (let ()
                                (declare (not safe))
                                (##cdr _rest4399043998_))))
                         (let* ((_checkq44020_ _hd4399544015_)
                                (_rest44022_ _tl4399644017_))
                           (declare (not safe))
                           (_K4399444012_ _rest44022_ _checkq44020_)))
                       (let () (declare (not safe)) (_else4399244006_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45807 '()))))
                                           (declare (not safe))
                                           (cons __tmp45817 __tmp45806))))
                                   (declare (not safe))
                                   (cons '%#let-values __tmp45805))
                                 _specializer-impl43978_)))
                        (declare (not safe))
                        (cons __tmp45804 '()))))
                 (declare (not safe))
                 (cons __tmp45821 __tmp45803))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp45802))))
                                           (declare (not safe))
                                           (cons __tmp45801 '()))))
                                    (declare (not safe))
                                    (cons __tmp45824 __tmp45800))))
                             (declare (not safe))
                             (cons '%#lambda __tmp45799))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45798 _stx40714_))))
                 (_generate-specializer-def40721_
                  (lambda (_id43967_
                           _specializer-id43968_
                           _specializer-impl43969_
                           _lifted-specializer-id43970_
                           _unchecked-specializer-impl43971_)
                    (let ((__tmp45825
                           (let ((__tmp45826
                                  (let ((__tmp45827
                                         (let ((__tmp45847
                                                (let ((__tmp45848
                                                       (let ((__tmp45849
                                                              (let ((__tmp45851
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id43968_ '())))
                            (__tmp45850
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl43969_ '()))))
                        (declare (not safe))
                        (cons __tmp45851 __tmp45850))))
                 (declare (not safe))
                 (cons '%#define-values __tmp45849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp45848
                                                   _stx40714_)))
                                               (__tmp45828
                                                (let ((__tmp45835
                                                       (let ((__tmp45836
                                                              (let ((__tmp45837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45838
                                    (let ((__tmp45845
                                           (let ((__tmp45846
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons 'bind-specializer!
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp45846)))
                                          (__tmp45839
                                           (let ((__tmp45843
                                                  (let ((__tmp45844
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _id43967_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp45844)))
                                                 (__tmp45840
                                                  (let ((__tmp45841
                                                         (let ((__tmp45842
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _specializer-id43968_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp45842))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45841 '()))))
                                             (declare (not safe))
                                             (cons __tmp45843 __tmp45840))))
                                      (declare (not safe))
                                      (cons __tmp45845 __tmp45839))))
                               (declare (not safe))
                               (cons '%#call __tmp45838))))
                        (declare (not safe))
                        (gxc#xform-wrap-source __tmp45837 _stx40714_))))
                 (declare (not safe))
                 (cons __tmp45836 '())))
              (__tmp45829
               (if _lifted-specializer-id43970_
                   (let ((__tmp45830
                          (let ((__tmp45831
                                 (let ((__tmp45832
                                        (let ((__tmp45834
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _lifted-specializer-id43970_
                                                       '())))
                                              (__tmp45833
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _unchecked-specializer-impl43971_
                                                       '()))))
                                          (declare (not safe))
                                          (cons __tmp45834 __tmp45833))))
                                   (declare (not safe))
                                   (cons '%#define-values __tmp45832))))
                            (declare (not safe))
                            (gxc#xform-wrap-source __tmp45831 _stx40714_))))
                     (declare (not safe))
                     (cons __tmp45830 '()))
                   '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldr1 cons
                                                          __tmp45835
                                                          __tmp45829))))
                                           (declare (not safe))
                                           (cons __tmp45847 __tmp45828))))
                                    (declare (not safe))
                                    (cons _stx40714_ __tmp45827))))
                             (declare (not safe))
                             (cons '%#begin __tmp45826))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45825 _stx40714_)))))
          (let* ((___stx4416044161_ _stx40714_)
                 (_g4072440744_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx4416044161_)))))
            (let ((___kont4416244163_
                   (lambda (_L40788_ _L40789_)
                     (let ((_method-calls40808_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_slot-refs40809_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_class-type-check40810_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-check40811_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_struct-type-assert40812_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?)))
                           (_empty40813_
                            (let ()
                              (declare (not safe))
                              (make-table 'test: eq?))))
                       (letrec ((_no-specializer?40815_
                                 (lambda ()
                                   (if (let ((__tmp45856
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls40808_))))
                                         (declare (not safe))
                                         (fxzero? __tmp45856))
                                       (if (let ((__tmp45855
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs40809_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45855))
                                           (if (let ((__tmp45854
                                                      (let ()
                                                        (declare (not safe))
                                                        (table-length
                                                         _class-type-check40810_))))
                                                 (declare (not safe))
                                                 (fxzero? __tmp45854))
                                               (if (let ((__tmp45853
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-check40811_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp45853))
                                                   (let ((__tmp45852
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (table-length
                                                             _struct-type-assert40812_))))
                                                     (declare (not safe))
                                                     (fxzero? __tmp45852))
                                                   '#f)
                                               '#f)
                                           '#f)
                                       '#f)))
                                (_unchecked-specializer?40816_
                                 (lambda ()
                                   (let ((_$e43960_
                                          (let ((__tmp45857
                                                 (let ((__tmp45858
                                                        (let ()
                                                          (declare (not safe))
                                                          (table-length
                                                           _struct-type-check40811_))))
                                                   (declare (not safe))
                                                   (fxzero? __tmp45858))))
                                            (declare (not safe))
                                            (not __tmp45857))))
                                     (if _$e43960_
                                         _$e43960_
                                         (let ((__tmp45859
                                                (let ((__tmp45860
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-length
                                                          _struct-type-assert40812_))))
                                                  (declare (not safe))
                                                  (fxzero? __tmp45860))))
                                           (declare (not safe))
                                           (not __tmp45859))))))
                                (_lift-unchecked-specializer?40817_
                                 (lambda ()
                                   (if (let ((__tmp45863
                                              (let ()
                                                (declare (not safe))
                                                (table-length
                                                 _method-calls40808_))))
                                         (declare (not safe))
                                         (fxzero? __tmp45863))
                                       (if (let ((__tmp45862
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _slot-refs40809_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45862))
                                           (let ((__tmp45861
                                                  (let ()
                                                    (declare (not safe))
                                                    (table-length
                                                     _class-type-check40810_))))
                                             (declare (not safe))
                                             (fxzero? __tmp45861))
                                           '#f)
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L40788_))
                             (let* ((___stx4407444075_ _L40788_)
                                    (_g4133041348_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          ___stx4407444075_)))))
                               (let ((___kont4407644077_
                                      (lambda (_L41384_ _L41385_ _L41386_)
                                        (for-each
                                         (lambda (_g4140141403_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g4140141403_
                                              _L41386_
                                              _method-calls40808_
                                              _slot-refs40809_
                                              _class-type-check40810_
                                              _struct-type-check40811_
                                              _struct-type-assert40812_)))
                                         _L41384_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?40815_))
                                            _stx40714_
                                            (let* ((_specializer-id41412_
                                                    (let* ((_id41406_
                                                            (make-symbol
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _L40789_))
                     '"::specialize"))
                   (_specializer-id41409_
                    (let ((__tmp45985
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx40714_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id41406_ __tmp45985))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id41409_))
              _specializer-id41409_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_lifted-specializer-id41419_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_lift-unchecked-specializer?40817_))
                                                        (let* ((_id41414_
                                                                (make-symbol
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (gx#stx-e _L40789_))
                         '"::specialize::unchecked"))
                       (_lifted-specializer-id41416_
                        (let ((__tmp45986
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-source _stx40714_))))
                          (declare (not safe))
                          (gx#core-quote-syntax__1 _id41414_ __tmp45986))))
                  (let ()
                    (declare (not safe))
                    (gx#core-bind-runtime!__0 _lifted-specializer-id41416_))
                  _lifted-specializer-id41416_)
                '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$t41421_
                                                    (make-symbol
                                                     (gensym '__t)))
                                                   (_methods41423_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls40808_)))
                                                   (_$methods41427_
                                                    (map (lambda (_id41425_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id41425_)))
                                                         _methods41423_))
                                                   (_g45987_
                                                    (for-each
                                                     (lambda (_g4142841431_
                                                              _g4142941433_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _method-calls40808_
                                                          _g4142841431_
                                                          _g4142941433_)))
                                                     _methods41423_
                                                     _$methods41427_))
                                                   (_methods-bind41444_
                                                    (map (lambda (_g4143641439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4143741441_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind40716_
                      _$t41421_
                      _g4143641439_
                      _g4143741441_)))
                 _methods41423_
                 _$methods41427_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots41446_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs40809_)))
                                                   (_$slots41450_
                                                    (map (lambda (_id41448_)
                                                           (make-symbol
                                                            '"__"
                                                            (gensym _id41448_)))
                                                         _slots41446_))
                                                   (_g45988_
                                                    (for-each
                                                     (lambda (_g4145141454_
                                                              _g4145241456_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _slot-refs40809_
                                                          _g4145141454_
                                                          _g4145241456_)))
                                                     _slots41446_
                                                     _$slots41450_))
                                                   (_slots-bind41467_
                                                    (map (lambda (_g4145941462_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4146041464_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind40717_
                      _$t41421_
                      _g4145941462_
                      _g4146041464_)))
                 _slots41446_
                 _$slots41450_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_class-check41469_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _class-type-check40810_)))
                                                   (_$class-check41472_
                                                    (map (lambda (_g45989_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _class-check41469_))
                                                   (_g45990_
                                                    (for-each
                                                     (lambda (_g4147341476_
                                                              _g4147441478_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _class-type-check40810_
                                                          _g4147341476_
                                                          _g4147441478_)))
                                                     _class-check41469_
                                                     _$class-check41472_))
                                                   (_class-check-bind41489_
                                                    (map (lambda (_g4148141484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4148241486_)
                   (let ()
                     (declare (not safe))
                     (_generate-class-check-bind40718_
                      _$t41421_
                      _g4148141484_
                      _g4148241486_)))
                 _class-check41469_
                 _$class-check41472_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_struct-check-all41491_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-merge
                                                       _struct-type-check40811_
                                                       _struct-type-assert40812_)))
                                                   (_struct-check41493_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _struct-check-all41491_)))
                                                   (_$struct-check41496_
                                                    (map (lambda (_g45991_)
                                                           (make-symbol
                                                            (gensym '__class)))
                                                         _struct-check41493_))
                                                   (_g45992_
                                                    (for-each
                                                     (lambda (_g4149741500_
                                                              _g4149841502_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (table-set!
                                                          _struct-check-all41491_
                                                          _g4149741500_
                                                          _g4149841502_)))
                                                     _struct-check41493_
                                                     _$struct-check41496_))
                                                   (_struct-check-bind41513_
                                                    (map (lambda (_g4150541508_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g4150641510_)
                   (let ()
                     (declare (not safe))
                     (_generate-struct-check-bind40719_
                      _$t41421_
                      _g4150541508_
                      _g4150641510_)))
                 _struct-check41493_
                 _$struct-check41496_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_make-specializer-impl41524_
                                                    (lambda (_struct-type-check141515_
                                                             _struct-type-check241516_)
                                                      (let* ((_specializer-body41522_
                                                              (map (lambda (_g4151741519_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gxc#apply-subst-object-refs
                                _g4151741519_
                                _L41386_
                                _$t41421_
                                _method-calls40808_
                                _slot-refs40809_
                                _class-type-check40810_
                                _struct-type-check141515_
                                _struct-type-check241516_)))
                           _L41384_))
                     (__tmp45993
                      (let ((__tmp45994
                             (let ((__tmp45995
                                    (let ()
                                      (declare (not safe))
                                      (cons _L41386_ _L41385_))))
                               (declare (not safe))
                               (cons __tmp45995 _specializer-body41522_))))
                        (declare (not safe))
                        (cons '%#lambda __tmp45994))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp45993 _stx40714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl41526_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_make-specializer-impl41524_
                                                       _struct-check-all41491_
                                                       _empty40813_)))
                                                   (_unchecked-specializer-impl41528_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (_unchecked-specializer?40816_))
                                                        (let ()
                                                          (declare (not safe))
                                                          (_make-specializer-impl41524_
                                                           _empty40813_
                                                           _struct-check-all41491_))
                                                        '#f))
                                                   (_specializer-impl41530_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl40720_
                                                       _$t41421_
                                                       _methods-bind41444_
                                                       _slots-bind41467_
                                                       _class-check-bind41489_
                                                       _struct-check-bind41513_
                                                       _specializer-impl41526_
                                                       _lifted-specializer-id41419_
                                                       _unchecked-specializer-impl41528_))))
                                              (let ((__tmp45997
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L40789_)))
                                                    (__tmp45996
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id41412_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp45997
                                                 '" => "
                                                 __tmp45996))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def40721_
                                                 _L40789_
                                                 _specializer-id41412_
                                                 _specializer-impl41530_
                                                 _lifted-specializer-id41419_
                                                 _unchecked-specializer-impl41528_))))))
                                     (___kont4407844079_
                                      (lambda () _stx40714_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx4407444075_))
                                     (let ((_e4133741360_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx4407444075_))))
                                       (let ((_tl4133541365_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e4133741360_)))
                                             (_hd4133641363_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e4133741360_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl4133541365_))
                                             (let ((_e4134041368_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl4133541365_))))
                                               (let ((_tl4133841373_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e4134041368_)))
                                                     (_hd4133941371_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e4134041368_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd4133941371_))
                                                     (let ((_e4134341376_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd4133941371_))))
                                                       (let ((_tl4134141381_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e4134341376_)))
                     (_hd4134241379_
                      (let () (declare (not safe)) (##car _e4134341376_))))
                 (___kont4407644077_
                  _tl4133841373_
                  _tl4134141381_
                  _hd4134241379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont4407844079_))))
                                             (___kont4407844079_))))
                                     (___kont4407844079_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L40788_))
                                 (let* ((_g4153641555_
                                         (lambda (_g4153741552_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              _g4153741552_))))
                                        (_g4153541906_
                                         (lambda (_g4153741558_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _g4153741558_))
                                               (let ((_e4154141560_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g4153741558_))))
                                                 (let ((_hd4154041563_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4154141560_)))
                                                       (_tl4153941565_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4154141560_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl4153941565_))
                                                       (let ((_g45968_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl4153941565_ '0))))
                 (begin
                   (let ((_g45969_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g45968_)
                                (##vector-length _g45968_)
                                1))))
                     (if (not (let () (declare (not safe)) (##fx= _g45969_ 2)))
                         (error "Context expects 2 values" _g45969_)))
                   (let ((_target4154241568_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g45968_ 0)))
                         (_tl4154441570_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g45968_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl4154441570_))
                         (letrec ((_loop4154541573_
                                   (lambda (_hd4154341576_ _clause4154941578_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd4154341576_))
                                         (let ((_e4154641581_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e _hd4154341576_))))
                                           (let ((_lp-hd4154741584_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e4154641581_)))
                                                 (_lp-tl4154841586_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e4154641581_))))
                                             (let ((__tmp45984
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd4154741584_
                                                            _clause4154941578_))))
                                               (declare (not safe))
                                               (_loop4154541573_
                                                _lp-tl4154841586_
                                                __tmp45984))))
                                         (let ((_clause4155041589_
                                                (reverse _clause4154941578_)))
                                           ((lambda (_L41592_)
                                              (for-each
                                               (lambda (_clause41605_)
                                                 (let* ((___stx4410044101_
                                                         _clause41605_)
                                                        (_g4160841623_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              ___stx4410044101_)))))
                                                   (let ((___kont4410244103_
                                                          (lambda (_L41651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L41652_
                           _L41653_)
                    (for-each
                     (lambda (_g4166841670_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g4166841670_
                          _L41653_
                          _method-calls40808_
                          _slot-refs40809_
                          _class-type-check40810_
                          _struct-type-check40811_
                          _struct-type-assert40812_)))
                     _L41651_)))
                 (___kont4410444105_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx4410044101_))
                                                         (let ((_e4161541635_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx4410044101_))))
                   (let ((_tl4161341640_
                          (let () (declare (not safe)) (##cdr _e4161541635_)))
                         (_hd4161441638_
                          (let () (declare (not safe)) (##car _e4161541635_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd4161441638_))
                         (let ((_e4161841643_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd4161441638_))))
                           (let ((_tl4161641648_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e4161841643_)))
                                 (_hd4161741646_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e4161841643_))))
                             (___kont4410244103_
                              _tl4161341640_
                              _tl4161641648_
                              _hd4161741646_)))
                         (___kont4410444105_))))
                 (___kont4410444105_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp45970
                                                      (lambda (_g4167541678_
                                                               _g4167641680_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4167541678_
                                                                _g4167641680_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp45970
                                                         '()
                                                         _L41592_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?40815_))
                                                  _stx40714_
                                                  (let* ((_specializer-id41689_
                                                          (let* ((_id41683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40789_))
                           '"::specialize"))
                         (_specializer-id41686_
                          (let ((__tmp45971
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40714_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id41683_ __tmp45971))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id41686_))
                    _specializer-id41686_))
                 (_lifted-specializer-id41696_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?40817_))
                      (let* ((_id41691_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L40789_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id41693_
                              (let ((__tmp45972
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx40714_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id41691_
                                 __tmp45972))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id41693_))
                        _lifted-specializer-id41693_)
                      '#f))
                 (_$t41698_ (make-symbol (gensym '__t)))
                 (_methods41700_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls40808_)))
                 (_$methods41704_
                  (map (lambda (_id41702_)
                         (make-symbol '"__" (gensym _id41702_)))
                       _methods41700_))
                 (_g45973_
                  (for-each
                   (lambda (_g4170541708_ _g4170641710_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls40808_
                        _g4170541708_
                        _g4170641710_)))
                   _methods41700_
                   _$methods41704_))
                 (_methods-bind41721_
                  (map (lambda (_g4171341716_ _g4171441718_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind40716_
                            _$t41698_
                            _g4171341716_
                            _g4171441718_)))
                       _methods41700_
                       _$methods41704_))
                 (_slots41723_
                  (let () (declare (not safe)) (hash-keys _slot-refs40809_)))
                 (_$slots41727_
                  (map (lambda (_id41725_)
                         (make-symbol '"__" (gensym _id41725_)))
                       _slots41723_))
                 (_g45974_
                  (for-each
                   (lambda (_g4172841731_ _g4172941733_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs40809_
                        _g4172841731_
                        _g4172941733_)))
                   _slots41723_
                   _$slots41727_))
                 (_slots-bind41744_
                  (map (lambda (_g4173641739_ _g4173741741_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind40717_
                            _$t41698_
                            _g4173641739_
                            _g4173741741_)))
                       _slots41723_
                       _$slots41727_))
                 (_class-check41746_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check40810_)))
                 (_$class-check41749_
                  (map (lambda (_g45975_) (make-symbol (gensym '__class)))
                       _class-check41746_))
                 (_g45976_
                  (for-each
                   (lambda (_g4175041753_ _g4175141755_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check40810_
                        _g4175041753_
                        _g4175141755_)))
                   _class-check41746_
                   _$class-check41749_))
                 (_class-check-bind41766_
                  (map (lambda (_g4175841761_ _g4175941763_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind40718_
                            _$t41698_
                            _g4175841761_
                            _g4175941763_)))
                       _class-check41746_
                       _$class-check41749_))
                 (_struct-check-all41768_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check40811_
                     _struct-type-assert40812_)))
                 (_struct-check41770_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all41768_)))
                 (_$struct-check41773_
                  (map (lambda (_g45977_) (make-symbol (gensym '__class)))
                       _struct-check41770_))
                 (_g45978_
                  (for-each
                   (lambda (_g4177441777_ _g4177541779_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all41768_
                        _g4177441777_
                        _g4177541779_)))
                   _struct-check41770_
                   _$struct-check41773_))
                 (_struct-check-bind41790_
                  (map (lambda (_g4178241785_ _g4178341787_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind40719_
                            _$t41698_
                            _g4178241785_
                            _g4178341787_)))
                       _struct-check41770_
                       _$struct-check41773_))
                 (_make-specializer-impl41897_
                  (lambda (_struct-type-check141792_ _struct-type-check241793_)
                    (let* ((_specializer-clauses41895_
                            (map (lambda (_clause41795_)
                                   (let* ((___stx4412044121_ _clause41795_)
                                          (_g4179841813_
                                           (lambda ()
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                ___stx4412044121_)))))
                                     (let ((___kont4412244123_
                                            (lambda (_L41841_
                                                     _L41842_
                                                     _L41843_)
                                              (let* ((_body41883_
                                                      (map (lambda (_g4187841880_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gxc#apply-subst-object-refs
                        _g4187841880_
                        _L41843_
                        _$t41698_
                        _method-calls40808_
                        _slot-refs40809_
                        _class-type-check40810_
                        _struct-type-check141792_
                        _struct-type-check241793_)))
                   _L41841_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp45979
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L41843_
                                                              _L41842_))))
                                                (declare (not safe))
                                                (cons __tmp45979
                                                      _body41883_))))
                                           (___kont4412444125_
                                            (lambda () _clause41795_)))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? ___stx4412044121_))
                                           (let ((_e4180541825_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     ___stx4412044121_))))
                                             (let ((_tl4180341830_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4180541825_)))
                                                   (_hd4180441828_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4180541825_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _hd4180441828_))
                                                   (let ((_e4180841833_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _hd4180441828_))))
                                                     (let ((_tl4180641838_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4180841833_)))
                                                           (_hd4180741836_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4180841833_))))
                                                       (___kont4412244123_
                                                        _tl4180341830_
                                                        _tl4180641838_
                                                        _hd4180741836_)))
                                                   (___kont4412444125_))))
                                           (___kont4412444125_)))))
                                 (let ((__tmp45980
                                        (lambda (_g4188741890_ _g4188841892_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g4188741890_
                                                  _g4188841892_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp45980 '() _L41592_))))
                           (__tmp45981
                            (let ()
                              (declare (not safe))
                              (cons '%#case-lambda
                                    _specializer-clauses41895_))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45981 _stx40714_))))
                 (_specializer-impl41899_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl41897_
                     _struct-check-all41768_
                     _empty40813_)))
                 (_unchecked-specializer-impl41901_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40816_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl41897_
                         _empty40813_
                         _struct-check-all41768_))
                      '#f))
                 (_specializer-impl41903_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl40720_
                     _$t41698_
                     _methods-bind41721_
                     _slots-bind41744_
                     _class-check-bind41766_
                     _struct-check-bind41790_
                     _specializer-impl41899_
                     _lifted-specializer-id41696_
                     _unchecked-specializer-impl41901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp45983
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L40789_)))
                                                          (__tmp45982
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id41689_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp45983
                                                       '" => "
                                                       __tmp45982))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def40721_
                                                       _L40789_
                                                       _specializer-id41689_
                                                       _specializer-impl41903_
                                                       _lifted-specializer-id41696_
                                                       _unchecked-specializer-impl41901_)))))
                                            _clause4155041589_))))))
                           (let ()
                             (declare (not safe))
                             (_loop4154541573_ _target4154241568_ '())))
                         (let ()
                           (declare (not safe))
                           (_g4153641555_ _g4153741558_))))))
               (let () (declare (not safe)) (_g4153641555_ _g4153741558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4153641555_
                                                  _g4153741558_))))))
                                   (declare (not safe))
                                   (_g4153541906_ _L40788_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L40788_))
                                     (let* ((_g4190941939_
                                             (lambda (_g4191041936_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g4191041936_))))
                                            (_g4190842627_
                                             (lambda (_g4191041942_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4191041942_))
                                                   (let ((_e4191641944_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4191041942_))))
                                                     (let ((_hd4191541947_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4191641944_)))
                                                           (_tl4191441949_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4191641944_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4191441949_))
                                                           (let ((_e4191941952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4191441949_))))
                     (let ((_hd4191841955_
                            (let ()
                              (declare (not safe))
                              (##car _e4191941952_)))
                           (_tl4191741957_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4191941952_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4191841955_))
                           (let ((_e4192241960_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4191841955_))))
                             (let ((_hd4192141963_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4192241960_)))
                                   (_tl4192041965_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4192241960_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4192141963_))
                                   (let ((_e4192541968_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4192141963_))))
                                     (let ((_hd4192441971_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4192541968_)))
                                           (_tl4192341973_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4192541968_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd4192441971_))
                                           (let ((_e4192841976_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd4192441971_))))
                                             (let ((_hd4192741979_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4192841976_)))
                                                   (_tl4192641981_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4192841976_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4192641981_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl4192341973_))
                                                       (let ((_e4193141984_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl4192341973_))))
                 (let ((_hd4193041987_
                        (let () (declare (not safe)) (##car _e4193141984_)))
                       (_tl4192941989_
                        (let () (declare (not safe)) (##cdr _e4193141984_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4192941989_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4192041965_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4191741957_))
                               (let ((_e4193441992_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4191741957_))))
                                 (let ((_hd4193341995_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4193441992_)))
                                       (_tl4193241997_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4193441992_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4193241997_))
                                       ((lambda (_L42000_ _L42001_ _L42002_)
                                          (let* ((_g4202542043_
                                                  (lambda (_g4202642040_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g4202642040_))))
                                                 (_g4202442094_
                                                  (lambda (_g4202642046_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4202642046_))
                                                        (let ((_e4203242048_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4202642046_))))
                  (let ((_hd4203142051_
                         (let () (declare (not safe)) (##car _e4203242048_)))
                        (_tl4203042053_
                         (let () (declare (not safe)) (##cdr _e4203242048_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl4203042053_))
                        (let ((_e4203542056_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl4203042053_))))
                          (let ((_hd4203442059_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4203542056_)))
                                (_tl4203342061_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4203542056_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd4203442059_))
                                (let ((_e4203842064_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd4203442059_))))
                                  (let ((_hd4203742067_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4203842064_)))
                                        (_tl4203642069_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4203842064_))))
                                    ((lambda (_L42072_ _L42073_ _L42074_)
                                       (for-each
                                        (lambda (_g4208942091_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g4208942091_
                                             _L42074_
                                             _method-calls40808_
                                             _slot-refs40809_
                                             _class-type-check40810_
                                             _struct-type-check40811_
                                             _struct-type-assert40812_)))
                                        _L42072_))
                                     _tl4203342061_
                                     _tl4203642069_
                                     _hd4203742067_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4202542043_ _g4202642046_)))))
                        (let ()
                          (declare (not safe))
                          (_g4202542043_ _g4202642046_)))))
                (let () (declare (not safe)) (_g4202542043_ _g4202642046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4202442094_ _L42001_))
                                          (let* ((_g4209742116_
                                                  (lambda (_g4209842113_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax"
                                                       _g4209842113_))))
                                                 (_g4209642235_
                                                  (lambda (_g4209842119_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g4209842119_))
                                                        (let ((_e4210242121_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g4209842119_))))
                  (let ((_hd4210142124_
                         (let () (declare (not safe)) (##car _e4210242121_)))
                        (_tl4210042126_
                         (let () (declare (not safe)) (##cdr _e4210242121_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4210042126_))
                        (let ((_g45938_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice _tl4210042126_ '0))))
                          (begin
                            (let ((_g45939_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g45938_)
                                         (##vector-length _g45938_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g45939_ 2)))
                                  (error "Context expects 2 values" _g45939_)))
                            (let ((_target4210342129_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g45938_ 0)))
                                  (_tl4210542131_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g45938_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl4210542131_))
                                  (letrec ((_loop4210642134_
                                            (lambda (_hd4210442137_
                                                     _clause4211042139_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd4210442137_))
                                                  (let ((_e4210742142_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd4210442137_))))
                                                    (let ((_lp-hd4210842145_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e4210742142_)))
                                                          (_lp-tl4210942147_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e4210742142_))))
                                                      (let ((__tmp45941
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd4210842145_ _clause4211042139_))))
                (declare (not safe))
                (_loop4210642134_ _lp-tl4210942147_ __tmp45941))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause4211142150_
                                                         (reverse _clause4211042139_)))
                                                    ((lambda (_L42153_)
                                                       (for-each
                                                        (lambda (_clause42166_)
                                                          (let* ((_g4216842183_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g4216942180_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g4216942180_))))
                         (_g4216742225_
                          (lambda (_g4216942186_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g4216942186_))
                                (let ((_e4217542188_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g4216942186_))))
                                  (let ((_hd4217442191_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4217542188_)))
                                        (_tl4217342193_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4217542188_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd4217442191_))
                                        (let ((_e4217842196_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd4217442191_))))
                                          (let ((_hd4217742199_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4217842196_)))
                                                (_tl4217642201_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4217842196_))))
                                            ((lambda (_L42204_
                                                      _L42205_
                                                      _L42206_)
                                               (for-each
                                                (lambda (_g4222042222_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g4222042222_
                                                     _L42206_
                                                     _method-calls40808_
                                                     _slot-refs40809_
                                                     _class-type-check40810_
                                                     _struct-type-check40811_
                                                     _struct-type-assert40812_)))
                                                _L42204_))
                                             _tl4217342193_
                                             _tl4217642201_
                                             _hd4217742199_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4216842183_ _g4216942186_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4216842183_ _g4216942186_))))))
                    (declare (not safe))
                    (_g4216742225_ _clause42166_)))
                (let ((__tmp45940
                       (lambda (_g4222742230_ _g4222842232_)
                         (let ()
                           (declare (not safe))
                           (cons _g4222742230_ _g4222842232_)))))
                  (declare (not safe))
                  (foldr1 __tmp45940 '() _L42153_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause4211142150_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop4210642134_
                                       _target4210342129_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g4209742116_ _g4209842119_))))))
                        (let ()
                          (declare (not safe))
                          (_g4209742116_ _g4209842119_)))))
                (let () (declare (not safe)) (_g4209742116_ _g4209842119_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g4209642235_ _L42000_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?40815_))
                                              _stx40714_
                                              (let* ((_specializer-id42244_
                                                      (let* ((_id42238_
                                                              (make-symbol
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _L40789_))
                       '"::specialize"))
                     (_specializer-id42241_
                      (let ((__tmp45942
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx40714_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id42238_ __tmp45942))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id42241_))
                _specializer-id42241_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_lifted-specializer-id42251_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_lift-unchecked-specializer?40817_))
                                                          (let* ((_id42246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40789_))
                           '"::specialize::unchecked"))
                         (_lifted-specializer-id42248_
                          (let ((__tmp45943
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40714_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id42246_ __tmp45943))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _lifted-specializer-id42248_))
                    _lifted-specializer-id42248_)
                  '#f))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$t42253_
                                                      (make-symbol
                                                       (gensym '__t)))
                                                     (_methods42255_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls40808_)))
                                                     (_$methods42259_
                                                      (map (lambda (_id42257_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id42257_)))
                                                           _methods42255_))
                                                     (_g45944_
                                                      (for-each
                                                       (lambda (_g4226042263_
                                                                _g4226142265_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _method-calls40808_
                                                            _g4226042263_
                                                            _g4226142265_)))
                                                       _methods42255_
                                                       _$methods42259_))
                                                     (_methods-bind42276_
                                                      (map (lambda (_g4226842271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4226942273_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind40716_
                        _$t42253_
                        _g4226842271_
                        _g4226942273_)))
                   _methods42255_
                   _$methods42259_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots42278_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs40809_)))
                                                     (_$slots42282_
                                                      (map (lambda (_id42280_)
                                                             (make-symbol
                                                              '"__"
                                                              (gensym _id42280_)))
                                                           _slots42278_))
                                                     (_g45945_
                                                      (for-each
                                                       (lambda (_g4228342286_
                                                                _g4228442288_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _slot-refs40809_
                                                            _g4228342286_
                                                            _g4228442288_)))
                                                       _slots42278_
                                                       _$slots42282_))
                                                     (_slots-bind42299_
                                                      (map (lambda (_g4229142294_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4229242296_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind40717_
                        _$t42253_
                        _g4229142294_
                        _g4229242296_)))
                   _slots42278_
                   _$slots42282_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_class-check42301_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _class-type-check40810_)))
                                                     (_$class-check42304_
                                                      (map (lambda (_g45946_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _class-check42301_))
                                                     (_g45947_
                                                      (for-each
                                                       (lambda (_g4230542308_
                                                                _g4230642310_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _class-type-check40810_
                                                            _g4230542308_
                                                            _g4230642310_)))
                                                       _class-check42301_
                                                       _$class-check42304_))
                                                     (_class-check-bind42321_
                                                      (map (lambda (_g4231342316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4231442318_)
                     (let ()
                       (declare (not safe))
                       (_generate-class-check-bind40718_
                        _$t42253_
                        _g4231342316_
                        _g4231442318_)))
                   _class-check42301_
                   _$class-check42304_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_struct-check-all42323_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-merge
                                                         _struct-type-check40811_
                                                         _struct-type-assert40812_)))
                                                     (_struct-check42325_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _struct-check-all42323_)))
                                                     (_$struct-check42328_
                                                      (map (lambda (_g45948_)
                                                             (make-symbol
                                                              (gensym '__class)))
                                                           _struct-check42325_))
                                                     (_g45949_
                                                      (for-each
                                                       (lambda (_g4232942332_
                                                                _g4233042334_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (table-set!
                                                            _struct-check-all42323_
                                                            _g4232942332_
                                                            _g4233042334_)))
                                                       _struct-check42325_
                                                       _$struct-check42328_))
                                                     (_struct-check-bind42345_
                                                      (map (lambda (_g4233742340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g4233842342_)
                     (let ()
                       (declare (not safe))
                       (_generate-struct-check-bind40719_
                        _$t42253_
                        _g4233742340_
                        _g4233842342_)))
                   _struct-check42325_
                   _$struct-check42328_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-lambda-expr42444_
                                                      (lambda (_struct-type-check142347_
                                                               _struct-type-check242348_)
                                                        (let* ((_g4235042368_
                                                                (lambda (_g4235142365_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4235142365_))))
                       (_g4234942441_
                        (lambda (_g4235142371_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4235142371_))
                              (let ((_e4235742373_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4235142371_))))
                                (let ((_hd4235642376_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4235742373_)))
                                      (_tl4235542378_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4235742373_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4235542378_))
                                      (let ((_e4236042381_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4235542378_))))
                                        (let ((_hd4235942384_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4236042381_)))
                                              (_tl4235842386_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4236042381_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _hd4235942384_))
                                              (let ((_e4236342389_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _hd4235942384_))))
                                                (let ((_hd4236242392_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e4236342389_)))
                                                      (_tl4236142394_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e4236342389_))))
                                                  ((lambda (_L42397_
                                                            _L42398_
                                                            _L42399_)
                                                     (let* ((_body42439_
                                                             (map (lambda (_g4243442436_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g4243442436_
                               _L42399_
                               _$t42253_
                               _method-calls40808_
                               _slot-refs40809_
                               _class-type-check40810_
                               _struct-type-check142347_
                               _struct-type-check242348_)))
                          _L42397_))
                    (__tmp45950
                     (let ((__tmp45951
                            (let ((__tmp45952
                                   (let ()
                                     (declare (not safe))
                                     (cons _L42399_ _L42398_))))
                              (declare (not safe))
                              (cons __tmp45952 _body42439_))))
                       (declare (not safe))
                       (cons '%#lambda __tmp45951))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp45950 _L42001_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _tl4235842386_
                                                   _tl4236142394_
                                                   _hd4236242392_)))
                                              (let ()
                                                (declare (not safe))
                                                (_g4235042368_
                                                 _g4235142371_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4235042368_ _g4235142371_)))))
                              (let ()
                                (declare (not safe))
                                (_g4235042368_ _g4235142371_))))))
                  (declare (not safe))
                  (_g4234942441_ _L42001_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-case-lambda-expr42605_
                                                      (lambda (_struct-type-check142446_
                                                               _struct-type-check242447_)
                                                        (let* ((_g4244942468_
                                                                (lambda (_g4245042465_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _g4245042465_))))
                       (_g4244842602_
                        (lambda (_g4245042471_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _g4245042471_))
                              (let ((_e4245442473_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _g4245042471_))))
                                (let ((_hd4245342476_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e4245442473_)))
                                      (_tl4245242478_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e4245442473_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl4245242478_))
                                      (let ((_g45953_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl4245242478_
                                                '0))))
                                        (begin
                                          (let ((_g45954_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g45953_)
                                                       (##vector-length
                                                        _g45953_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g45954_ 2)))
                                                (error "Context expects 2 values"
                                                       _g45954_)))
                                          (let ((_target4245542481_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45953_ 0)))
                                                (_tl4245742483_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g45953_ 1))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl4245742483_))
                                                (letrec ((_loop4245842486_
                                                          (lambda (_hd4245642489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause4246242491_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _hd4245642489_))
                        (let ((_e4245942494_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _hd4245642489_))))
                          (let ((_lp-hd4246042497_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e4245942494_)))
                                (_lp-tl4246142499_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e4245942494_))))
                            (let ((__tmp45958
                                   (let ()
                                     (declare (not safe))
                                     (cons _lp-hd4246042497_
                                           _clause4246242491_))))
                              (declare (not safe))
                              (_loop4245842486_
                               _lp-tl4246142499_
                               __tmp45958))))
                        (let ((_clause4246342502_
                               (reverse _clause4246242491_)))
                          ((lambda (_L42505_)
                             (let* ((_clauses42600_
                                     (map (lambda (_clause42520_)
                                            (let* ((___stx4414044141_
                                                    _clause42520_)
                                                   (_g4252342538_
                                                    (lambda ()
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         ___stx4414044141_)))))
                                              (let ((___kont4414244143_
                                                     (lambda (_L42566_
                                                              _L42567_
                                                              _L42568_)
                                                       (let* ((_body42588_
                                                               (map (lambda (_g4258342585_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gxc#apply-subst-object-refs
                                 _g4258342585_
                                 _L42568_
                                 _$t42253_
                                 _method-calls40808_
                                 _slot-refs40809_
                                 _class-type-check40810_
                                 _struct-type-check142446_
                                 _struct-type-check242447_)))
                            _L42566_))
                      (__tmp45955
                       (let () (declare (not safe)) (cons _L42568_ _L42567_))))
                 (declare (not safe))
                 (cons __tmp45955 _body42588_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4414444145_
                                                     (lambda ()
                                                       _clause42520_)))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       ___stx4414044141_))
                                                    (let ((_e4253042550_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              ___stx4414044141_))))
                                                      (let ((_tl4252842555_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e4253042550_)))
                    (_hd4252942553_
                     (let () (declare (not safe)) (##car _e4253042550_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _hd4252942553_))
                    (let ((_e4253342558_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd4252942553_))))
                      (let ((_tl4253142563_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4253342558_)))
                            (_hd4253242561_
                             (let ()
                               (declare (not safe))
                               (##car _e4253342558_))))
                        (___kont4414244143_
                         _tl4252842555_
                         _tl4253142563_
                         _hd4253242561_)))
                    (___kont4414444145_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4414444145_)))))
                                          (let ((__tmp45956
                                                 (lambda (_g4259242595_
                                                          _g4259342597_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g4259242595_
                                                           _g4259342597_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp45956 '() _L42505_))))
                                    (__tmp45957
                                     (let ()
                                       (declare (not safe))
                                       (cons '%#case-lambda _clauses42600_))))
                               (declare (not safe))
                               (gxc#xform-wrap-source __tmp45957 _L42000_)))
                           _clause4246342502_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_loop4245842486_
                                                     _target4245542481_
                                                     '())))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4244942468_
                                                   _g4245042471_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4244942468_ _g4245042471_)))))
                              (let ()
                                (declare (not safe))
                                (_g4244942468_ _g4245042471_))))))
                  (declare (not safe))
                  (_g4244842602_ _L42000_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_make-specializer-impl42610_
                                                      (lambda (_specializer-lambda-expr42607_
                                                               _specializer-case-lambda-expr42608_)
                                                        (let ((__tmp45959
                                                               (let ((__tmp45960
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp45962
                                     (let ((__tmp45963
                                            (let ((__tmp45965
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _L42002_ '())))
                                                  (__tmp45964
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _specializer-lambda-expr42607_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp45965 __tmp45964))))
                                       (declare (not safe))
                                       (cons __tmp45963 '())))
                                    (__tmp45961
                                     (let ()
                                       (declare (not safe))
                                       (cons _specializer-case-lambda-expr42608_
                                             '()))))
                                (declare (not safe))
                                (cons __tmp45962 __tmp45961))))
                         (declare (not safe))
                         (cons '%#let-values __tmp45960))))
                  (declare (not safe))
                  (gxc#xform-wrap-source __tmp45959 _stx40714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr42612_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-lambda-expr42444_
                                                         _struct-check-all42323_
                                                         _empty40813_)))
                                                     (_specializer-case-lambda-expr42614_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-case-lambda-expr42605_
                                                         _struct-check-all42323_
                                                         _empty40813_)))
                                                     (_specializer-impl42616_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_make-specializer-impl42610_
                                                         _specializer-lambda-expr42612_
                                                         _specializer-case-lambda-expr42614_)))
                                                     (_unchecked-specializer-lambda-expr42618_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40816_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-lambda-expr42444_
                                                             _empty40813_
                                                             _struct-check-all42323_))
                                                          '#f))
                                                     (_unchecked-specializer-case-lambda-expr42620_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40816_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-case-lambda-expr42605_
                                                             _empty40813_
                                                             _struct-check-all42323_))
                                                          '#f))
                                                     (_unchecked-specializer-impl42622_
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (_unchecked-specializer?40816_))
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_make-specializer-impl42610_
                                                             _unchecked-specializer-lambda-expr42618_
                                                             _unchecked-specializer-case-lambda-expr42620_))
                                                          '#f))
                                                     (_specializer-impl42624_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl40720_
                                                         _$t42253_
                                                         _methods-bind42276_
                                                         _slots-bind42299_
                                                         _class-check-bind42321_
                                                         _struct-check-bind42345_
                                                         _specializer-impl42616_
                                                         _lifted-specializer-id42251_
                                                         _unchecked-specializer-impl42622_))))
                                                (let ((__tmp45967
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L40789_)))
                                                      (__tmp45966
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id42244_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp45967
                                                   '" => "
                                                   __tmp45966))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def40721_
                                                   _L40789_
                                                   _specializer-id42244_
                                                   _specializer-impl42624_
                                                   _lifted-specializer-id42251_
                                                   _unchecked-specializer-impl42622_)))))
                                        _hd4193341995_
                                        _hd4193041987_
                                        _hd4192741979_)
                                       (let ()
                                         (declare (not safe))
                                         (_g4190941939_ _g4191041942_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4190941939_ _g4191041942_)))
                           (let ()
                             (declare (not safe))
                             (_g4190941939_ _g4191041942_)))
                       (let ()
                         (declare (not safe))
                         (_g4190941939_ _g4191041942_)))))
               (let () (declare (not safe)) (_g4190941939_ _g4191041942_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4190941939_
                                                      _g4191041942_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4190941939_ _g4191041942_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4190941939_ _g4191041942_)))))
                           (let ()
                             (declare (not safe))
                             (_g4190941939_ _g4191041942_)))))
                   (let ()
                     (declare (not safe))
                     (_g4190941939_ _g4191041942_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4190941939_
                                                      _g4191041942_))))))
                                       (declare (not safe))
                                       (_g4190842627_ _L40788_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L40788_))
                                         (let* ((_g4263042683_
                                                 (lambda (_g4263142680_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4263142680_))))
                                                (_g4262943955_
                                                 (lambda (_g4263142686_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4263142686_))
                                                       (let ((_e4263942688_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4263142686_))))
                 (let ((_hd4263842691_
                        (let () (declare (not safe)) (##car _e4263942688_)))
                       (_tl4263742693_
                        (let () (declare (not safe)) (##cdr _e4263942688_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd4263842691_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd4263842691_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl4263742693_))
                               (let ((_e4264242696_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl4263742693_))))
                                 (let ((_hd4264142699_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4264242696_)))
                                       (_tl4264042701_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4264242696_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4264142699_))
                                       (let ((_e4264542704_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4264142699_))))
                                         (let ((_hd4264442707_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4264542704_)))
                                               (_tl4264342709_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4264542704_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4264442707_))
                                               (let ((_e4264842712_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4264442707_))))
                                                 (let ((_hd4264742715_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4264842712_)))
                                                       (_tl4264642717_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4264842712_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd4264742715_))
                                                       (let ((_e4265142720_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd4264742715_))))
                 (let ((_hd4265042723_
                        (let () (declare (not safe)) (##car _e4265142720_)))
                       (_tl4264942725_
                        (let () (declare (not safe)) (##cdr _e4265142720_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl4264942725_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl4264642717_))
                           (let ((_e4265442728_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl4264642717_))))
                             (let ((_hd4265342731_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4265442728_)))
                                   (_tl4265242733_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4265442728_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4265342731_))
                                   (let ((_e4265742736_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4265342731_))))
                                     (let ((_hd4265642739_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4265742736_)))
                                           (_tl4265542741_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4265742736_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd4265642739_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd4265642739_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl4265542741_))
                                                   (let ((_e4266042744_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl4265542741_))))
                                                     (let ((_hd4265942747_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4266042744_)))
                                                           (_tl4265842749_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4266042744_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd4265942747_))
                                                           (let ((_e4266342752_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd4265942747_))))
                     (let ((_hd4266242755_
                            (let ()
                              (declare (not safe))
                              (##car _e4266342752_)))
                           (_tl4266142757_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4266342752_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd4266242755_))
                           (let ((_e4266642760_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd4266242755_))))
                             (let ((_hd4266542763_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e4266642760_)))
                                   (_tl4266442765_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e4266642760_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd4266542763_))
                                   (let ((_e4266942768_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd4266542763_))))
                                     (let ((_hd4266842771_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4266942768_)))
                                           (_tl4266742773_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4266942768_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4266742773_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _tl4266442765_))
                                               (let ((_e4267242776_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl4266442765_))))
                                                 (let ((_hd4267142779_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4267242776_)))
                                                       (_tl4267042781_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4267242776_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4267042781_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl4266142757_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl4265842749_))
                       (let ((_e4267542784_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4265842749_))))
                         (let ((_hd4267442787_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4267542784_)))
                               (_tl4267342789_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4267542784_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4267342789_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl4265242733_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl4264342709_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl4264042701_))
                                           (let ((_e4267842792_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl4264042701_))))
                                             (let ((_hd4267742795_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e4267842792_)))
                                                   (_tl4267642797_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e4267842792_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl4267642797_))
                                                   ((lambda (_L42800_
                                                             _L42801_
                                                             _L42802_
                                                             _L42803_
                                                             _L42804_)
                                                      (let* ((_g4284342905_
                                                              (lambda (_g4284442902_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _g4284442902_))))
                     (_g4284243952_
                      (lambda (_g4284442908_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g4284442908_))
                            (let ((_e4285242910_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g4284442908_))))
                              (let ((_hd4285142913_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4285242910_)))
                                    (_tl4285042915_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4285242910_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd4285142913_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd4285142913_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl4285042915_))
                                            (let ((_e4285542918_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl4285042915_))))
                                              (let ((_hd4285442921_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4285542918_)))
                                                    (_tl4285342923_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4285542918_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4285342923_))
                                                    (let ((_e4285842926_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4285342923_))))
                                                      (let ((_hd4285742929_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4285842926_)))
                    (_tl4285642931_
                     (let () (declare (not safe)) (##cdr _e4285842926_))))
                (if (let () (declare (not safe)) (gx#stx-pair? _hd4285742929_))
                    (let ((_e4286142934_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd4285742929_))))
                      (let ((_hd4286042937_
                             (let ()
                               (declare (not safe))
                               (##car _e4286142934_)))
                            (_tl4285942939_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4286142934_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd4286042937_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd4286042937_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl4285942939_))
                                    (let ((_e4286442942_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl4285942939_))))
                                      (let ((_hd4286342945_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4286442942_)))
                                            (_tl4286242947_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4286442942_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd4286342945_))
                                            (let ((_e4286742950_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd4286342945_))))
                                              (let ((_hd4286642953_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e4286742950_)))
                                                    (_tl4286542955_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e4286742950_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd4286642953_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd4286642953_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl4286542955_))
                                                            (let ((_e4287042958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl4286542955_))))
                      (let ((_hd4286942961_
                             (let ()
                               (declare (not safe))
                               (##car _e4287042958_)))
                            (_tl4286842963_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4287042958_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4286842963_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl4286242947_))
                                (let ((_e4287342966_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl4286242947_))))
                                  (let ((_hd4287242969_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e4287342966_)))
                                        (_tl4287142971_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e4287342966_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd4287242969_))
                                        (let ((_e4287642974_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd4287242969_))))
                                          (let ((_hd4287542977_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e4287642974_)))
                                                (_tl4287442979_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e4287642974_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd4287542977_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd4287542977_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl4287442979_))
                                                        (let ((_e4287942982_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl4287442979_))))
                  (let ((_hd4287842985_
                         (let () (declare (not safe)) (##car _e4287942982_)))
                        (_tl4287742987_
                         (let () (declare (not safe)) (##cdr _e4287942982_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl4287742987_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4287142971_))
                            (let ((_e4288242990_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4287142971_))))
                              (let ((_hd4288142993_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4288242990_)))
                                    (_tl4288042995_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4288242990_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4288142993_))
                                    (let ((_e4288542998_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4288142993_))))
                                      (let ((_hd4288443001_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4288542998_)))
                                            (_tl4288343003_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4288542998_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd4288443001_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd4288443001_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl4288343003_))
                                                    (let ((_e4288843006_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl4288343003_))))
                                                      (let ((_hd4288743009_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e4288843006_)))
                    (_tl4288643011_
                     (let () (declare (not safe)) (##cdr _e4288843006_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl4288643011_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl4288042995_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl4288042995_))
                                  '1)
                            (let ((_g45864_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4288042995_
                                      '1))))
                              (begin
                                (let ((_g45865_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g45864_)
                                             (##vector-length _g45864_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g45865_ 2)))
                                      (error "Context expects 2 values"
                                             _g45865_)))
                                (let ((_target4288943014_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45864_ 0)))
                                      (_tl4289143016_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45864_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl4289143016_))
                                      (let ((_e4290043019_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl4289143016_))))
                                        (let ((_hd4289943022_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e4290043019_)))
                                              (_tl4289843024_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e4290043019_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl4289843024_))
                                              (letrec ((_loop4289243027_
                                                        (lambda (_hd4289043030_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref4289643032_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd4289043030_))
                      (let ((_e4289343035_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd4289043030_))))
                        (let ((_lp-hd4289443038_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4289343035_)))
                              (_lp-tl4289543040_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4289343035_))))
                          (let ((__tmp45937
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd4289443038_
                                         _kw-ref4289643032_))))
                            (declare (not safe))
                            (_loop4289243027_ _lp-tl4289543040_ __tmp45937))))
                      (let ((_kw-ref4289743043_ (reverse _kw-ref4289643032_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl4285642931_))
                            ((lambda (_L43046_
                                      _L43047_
                                      _L43048_
                                      _L43049_
                                      _L43050_)
                               (let* ((_kw-count43101_
                                       (length (let ((__tmp45866
                                                      (lambda (_g4309343096_
                                                               _g4309443098_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g4309343096_
                                                                _g4309443098_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp45866
                                                         '()
                                                         _L43047_))))
                                      (_self-index43103_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count43101_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L42802_))
                                     (let* ((_g4310643120_
                                             (lambda (_g4310743117_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g4310743117_))))
                                            (_g4310543291_
                                             (lambda (_g4310743123_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g4310743123_))
                                                   (let ((_e4311243125_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g4310743123_))))
                                                     (let ((_hd4311143128_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e4311243125_)))
                                                           (_tl4311043130_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e4311243125_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4311043130_))
                                                           (let ((_e4311543133_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4311043130_))))
                     (let ((_hd4311443136_
                            (let ()
                              (declare (not safe))
                              (##car _e4311543133_)))
                           (_tl4311343138_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4311543133_))))
                       ((lambda (_L43141_ _L43142_)
                          (let ((_self43158_
                                 (list-ref _L43142_ _self-index43103_)))
                            (for-each
                             (lambda (_g4315943161_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g4315943161_
                                  _self43158_
                                  _method-calls40808_
                                  _slot-refs40809_
                                  _class-type-check40810_
                                  _struct-type-check40811_
                                  _struct-type-assert40812_)))
                             _L43141_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?40815_))
                                _stx40714_
                                (let* ((_specializer-id43170_
                                        (let* ((_id43164_
                                                (make-symbol
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _L40789_))
                                                 '"::specialize"))
                                               (_specializer-id43167_
                                                (let ((__tmp45910
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx40714_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id43164_
                                                   __tmp45910))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id43167_))
                                          _specializer-id43167_))
                                       (_lifted-specializer-id43177_
                                        (if (let ()
                                              (declare (not safe))
                                              (_lift-unchecked-specializer?40817_))
                                            (let* ((_id43172_
                                                    (make-symbol
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L40789_))
                                                     '"::specialize::unchecked"))
                                                   (_lifted-specializer-id43174_
                                                    (let ((__tmp45911
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-source
                                                              _stx40714_))))
                                                      (declare (not safe))
                                                      (gx#core-quote-syntax__1
                                                       _id43172_
                                                       __tmp45911))))
                                              (let ()
                                                (declare (not safe))
                                                (gx#core-bind-runtime!__0
                                                 _lifted-specializer-id43174_))
                                              _lifted-specializer-id43174_)
                                            '#f))
                                       (_$t43179_ (make-symbol (gensym '__t)))
                                       (_methods43181_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls40808_)))
                                       (_$methods43185_
                                        (map (lambda (_id43183_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id43183_)))
                                             _methods43181_))
                                       (_g45912_
                                        (for-each
                                         (lambda (_g4318643189_ _g4318743191_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _method-calls40808_
                                              _g4318643189_
                                              _g4318743191_)))
                                         _methods43181_
                                         _$methods43185_))
                                       (_methods-bind43202_
                                        (map (lambda (_g4319443197_
                                                      _g4319543199_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind40716_
                                                  _$t43179_
                                                  _g4319443197_
                                                  _g4319543199_)))
                                             _methods43181_
                                             _$methods43185_))
                                       (_slots43204_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs40809_)))
                                       (_$slots43208_
                                        (map (lambda (_id43206_)
                                               (make-symbol
                                                '"__"
                                                (gensym _id43206_)))
                                             _slots43204_))
                                       (_g45913_
                                        (for-each
                                         (lambda (_g4320943212_ _g4321043214_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _slot-refs40809_
                                              _g4320943212_
                                              _g4321043214_)))
                                         _slots43204_
                                         _$slots43208_))
                                       (_slots-bind43225_
                                        (map (lambda (_g4321743220_
                                                      _g4321843222_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind40717_
                                                  _$t43179_
                                                  _g4321743220_
                                                  _g4321843222_)))
                                             _slots43204_
                                             _$slots43208_))
                                       (_class-check43227_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _class-type-check40810_)))
                                       (_$class-check43230_
                                        (map (lambda (_g45914_)
                                               (make-symbol (gensym '__class)))
                                             _class-check43227_))
                                       (_g45915_
                                        (for-each
                                         (lambda (_g4323143234_ _g4323243236_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _class-type-check40810_
                                              _g4323143234_
                                              _g4323243236_)))
                                         _class-check43227_
                                         _$class-check43230_))
                                       (_class-check-bind43247_
                                        (map (lambda (_g4323943242_
                                                      _g4324043244_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-class-check-bind40718_
                                                  _$t43179_
                                                  _g4323943242_
                                                  _g4324043244_)))
                                             _class-check43227_
                                             _$class-check43230_))
                                       (_struct-check-all43249_
                                        (let ()
                                          (declare (not safe))
                                          (hash-merge
                                           _struct-type-check40811_
                                           _struct-type-assert40812_)))
                                       (_struct-check43251_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _struct-check-all43249_)))
                                       (_$struct-check43254_
                                        (map (lambda (_g45916_)
                                               (make-symbol (gensym '__class)))
                                             _struct-check43251_))
                                       (_g45917_
                                        (for-each
                                         (lambda (_g4325543258_ _g4325643260_)
                                           (let ()
                                             (declare (not safe))
                                             (table-set!
                                              _struct-check-all43249_
                                              _g4325543258_
                                              _g4325643260_)))
                                         _struct-check43251_
                                         _$struct-check43254_))
                                       (_struct-check-bind43271_
                                        (map (lambda (_g4326343266_
                                                      _g4326443268_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-struct-check-bind40719_
                                                  _$t43179_
                                                  _g4326343266_
                                                  _g4326443268_)))
                                             _struct-check43251_
                                             _$struct-check43254_))
                                       (_make-specializer-impl43282_
                                        (lambda (_struct-type-check143273_
                                                 _struct-type-check243274_)
                                          (let* ((_specializer-body43280_
                                                  (map (lambda (_g4327543277_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (gxc#apply-subst-object-refs
                                                            _g4327543277_
                                                            _self43158_
                                                            _$t43179_
                                                            _method-calls40808_
                                                            _slot-refs40809_
                                                            _class-type-check40810_
                                                            _struct-type-check143273_
                                                            _struct-type-check243274_)))
                                                       _L43141_))
                                                 (__tmp45918
                                                  (let ((__tmp45919
                                                         (let ((__tmp45921
                                                                (let ((__tmp45922
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45934
                                      (let ()
                                        (declare (not safe))
                                        (cons _L42804_ '())))
                                     (__tmp45923
                                      (let ((__tmp45924
                                             (let ((__tmp45925
                                                    (let ((__tmp45927
                                                           (let ((__tmp45928
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp45933
                                 (let ()
                                   (declare (not safe))
                                   (cons _L42803_ '())))
                                (__tmp45929
                                 (let ((__tmp45930
                                        (let ((__tmp45931
                                               (let ((__tmp45932
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L43142_
                                                              _specializer-body43280_))))
                                                 (declare (not safe))
                                                 (cons '%#lambda __tmp45932))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp45931
                                           _L42802_))))
                                   (declare (not safe))
                                   (cons __tmp45930 '()))))
                            (declare (not safe))
                            (cons __tmp45933 __tmp45929))))
                     (declare (not safe))
                     (cons __tmp45928 '())))
                  (__tmp45926
                   (let () (declare (not safe)) (cons _L42801_ '()))))
              (declare (not safe))
              (cons __tmp45927 __tmp45926))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#let-values
                                                     __tmp45925))))
                                        (declare (not safe))
                                        (cons __tmp45924 '()))))
                                 (declare (not safe))
                                 (cons __tmp45934 __tmp45923))))
                          (declare (not safe))
                          (cons __tmp45922 '())))
                       (__tmp45920
                        (let () (declare (not safe)) (cons _L42800_ '()))))
                   (declare (not safe))
                   (cons __tmp45921 __tmp45920))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#let-values
                                                          __tmp45919))))
                                            (declare (not safe))
                                            (gxc#xform-wrap-source
                                             __tmp45918
                                             _stx40714_))))
                                       (_specializer-impl43284_
                                        (let ()
                                          (declare (not safe))
                                          (_make-specializer-impl43282_
                                           _struct-check-all43249_
                                           _empty40813_)))
                                       (_unchecked-specializer-impl43286_
                                        (if (let ()
                                              (declare (not safe))
                                              (_unchecked-specializer?40816_))
                                            (let ()
                                              (declare (not safe))
                                              (_make-specializer-impl43282_
                                               _empty40813_
                                               _struct-check-all43249_))
                                            '#f))
                                       (_specializer-impl43288_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl40720_
                                           _$t43179_
                                           _methods-bind43202_
                                           _slots-bind43225_
                                           _class-check-bind43247_
                                           _struct-check-bind43271_
                                           _specializer-impl43284_
                                           _lifted-specializer-id43177_
                                           _unchecked-specializer-impl43286_))))
                                  (let ((__tmp45936
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L40789_)))
                                        (__tmp45935
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id43170_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp45936
                                     '" => "
                                     __tmp45935))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def40721_
                                     _L40789_
                                     _specializer-id43170_
                                     _specializer-impl43288_
                                     _lifted-specializer-id43177_
                                     _unchecked-specializer-impl43286_))))))
                        _tl4311343138_
                        _hd4311443136_)))
                   (let ()
                     (declare (not safe))
                     (_g4310643120_ _g4310743123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4310643120_
                                                      _g4310743123_))))))
                                       (declare (not safe))
                                       (_g4310543291_ _L42802_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L42802_))
                                         (let* ((_g4329443324_
                                                 (lambda (_g4329543321_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _g4329543321_))))
                                                (_g4329343949_
                                                 (lambda (_g4329543327_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g4329543327_))
                                                       (let ((_e4330143329_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g4329543327_))))
                 (let ((_hd4330043332_
                        (let () (declare (not safe)) (##car _e4330143329_)))
                       (_tl4329943334_
                        (let () (declare (not safe)) (##cdr _e4330143329_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl4329943334_))
                       (let ((_e4330443337_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl4329943334_))))
                         (let ((_hd4330343340_
                                (let ()
                                  (declare (not safe))
                                  (##car _e4330443337_)))
                               (_tl4330243342_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e4330443337_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd4330343340_))
                               (let ((_e4330743345_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd4330343340_))))
                                 (let ((_hd4330643348_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e4330743345_)))
                                       (_tl4330543350_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e4330743345_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd4330643348_))
                                       (let ((_e4331043353_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd4330643348_))))
                                         (let ((_hd4330943356_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e4331043353_)))
                                               (_tl4330843358_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e4331043353_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair? _hd4330943356_))
                                               (let ((_e4331343361_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd4330943356_))))
                                                 (let ((_hd4331243364_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e4331343361_)))
                                                       (_tl4331143366_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e4331343361_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl4331143366_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl4330843358_))
                                                           (let ((_e4331643369_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl4330843358_))))
                     (let ((_hd4331543372_
                            (let ()
                              (declare (not safe))
                              (##car _e4331643369_)))
                           (_tl4331443374_
                            (let ()
                              (declare (not safe))
                              (##cdr _e4331643369_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl4331443374_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl4330543350_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl4330243342_))
                                   (let ((_e4331943377_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl4330243342_))))
                                     (let ((_hd4331843380_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e4331943377_)))
                                           (_tl4331743382_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e4331943377_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl4331743382_))
                                           ((lambda (_L43385_
                                                     _L43386_
                                                     _L43387_)
                                              (let* ((_g4341043424_
                                                      (lambda (_g4341143421_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g4341143421_))))
                                                     (_g4340943465_
                                                      (lambda (_g4341143427_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4341143427_))
                                                            (let ((_e4341643429_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4341143427_))))
                      (let ((_hd4341543432_
                             (let ()
                               (declare (not safe))
                               (##car _e4341643429_)))
                            (_tl4341443434_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4341643429_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4341443434_))
                            (let ((_e4341943437_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4341443434_))))
                              (let ((_hd4341843440_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4341943437_)))
                                    (_tl4341743442_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4341943437_))))
                                ((lambda (_L43445_ _L43446_)
                                   (let ((_self43459_
                                          (list-ref
                                           _L43446_
                                           _self-index43103_)))
                                     (for-each
                                      (lambda (_g4346043462_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g4346043462_
                                           _self43459_
                                           _method-calls40808_
                                           _slot-refs40809_
                                           _class-type-check40810_
                                           _struct-type-check40811_
                                           _struct-type-assert40812_)))
                                      _L43445_)))
                                 _tl4341743442_
                                 _hd4341843440_)))
                            (let ()
                              (declare (not safe))
                              (_g4341043424_ _g4341143427_)))))
                    (let ()
                      (declare (not safe))
                      (_g4341043424_ _g4341143427_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4340943465_ _L43386_))
                                              (let* ((_g4346843487_
                                                      (lambda (_g4346943484_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g4346943484_))))
                                                     (_g4346743592_
                                                      (lambda (_g4346943490_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g4346943490_))
                                                            (let ((_e4347343492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g4346943490_))))
                      (let ((_hd4347243495_
                             (let ()
                               (declare (not safe))
                               (##car _e4347343492_)))
                            (_tl4347143497_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4347343492_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl4347143497_))
                            (let ((_g45867_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl4347143497_
                                      '0))))
                              (begin
                                (let ((_g45868_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g45867_)
                                             (##vector-length _g45867_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g45868_ 2)))
                                      (error "Context expects 2 values"
                                             _g45868_)))
                                (let ((_target4347443500_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45867_ 0)))
                                      (_tl4347643502_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g45867_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl4347643502_))
                                      (letrec ((_loop4347743505_
                                                (lambda (_hd4347543508_
                                                         _clause4348143510_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd4347543508_))
                                                      (let ((_e4347843513_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd4347543508_))))
                (let ((_lp-hd4347943516_
                       (let () (declare (not safe)) (##car _e4347843513_)))
                      (_lp-tl4348043518_
                       (let () (declare (not safe)) (##cdr _e4347843513_))))
                  (let ((__tmp45870
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd4347943516_ _clause4348143510_))))
                    (declare (not safe))
                    (_loop4347743505_ _lp-tl4348043518_ __tmp45870))))
              (let ((_clause4348243521_ (reverse _clause4348143510_)))
                ((lambda (_L43524_)
                   (for-each
                    (lambda (_clause43537_)
                      (let* ((_g4353943550_
                              (lambda (_g4354043547_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _g4354043547_))))
                             (_g4353843582_
                              (lambda (_g4354043553_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g4354043553_))
                                    (let ((_e4354543555_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g4354043553_))))
                                      (let ((_hd4354443558_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4354543555_)))
                                            (_tl4354343560_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4354543555_))))
                                        ((lambda (_L43563_ _L43564_)
                                           (let ((_self43576_
                                                  (list-ref
                                                   _L43564_
                                                   _self-index43103_)))
                                             (for-each
                                              (lambda (_g4357743579_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g4357743579_
                                                   _self43576_
                                                   _method-calls40808_
                                                   _slot-refs40809_
                                                   _class-type-check40810_
                                                   _struct-type-check40811_
                                                   _struct-type-assert40812_)))
                                              _L43563_)))
                                         _tl4354343560_
                                         _hd4354443558_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4353943550_ _g4354043553_))))))
                        (declare (not safe))
                        (_g4353843582_ _clause43537_)))
                    (let ((__tmp45869
                           (lambda (_g4358443587_ _g4358543589_)
                             (let ()
                               (declare (not safe))
                               (cons _g4358443587_ _g4358543589_)))))
                      (declare (not safe))
                      (foldr1 __tmp45869 '() _L43524_))))
                 _clause4348243521_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop4347743505_
                                           _target4347443500_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g4346843487_ _g4346943490_))))))
                            (let ()
                              (declare (not safe))
                              (_g4346843487_ _g4346943490_)))))
                    (let ()
                      (declare (not safe))
                      (_g4346843487_ _g4346943490_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g4346743592_ _L43385_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?40815_))
                                                  _stx40714_
                                                  (let* ((_specializer-id43601_
                                                          (let* ((_id43595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (make-symbol
                           (let () (declare (not safe)) (gx#stx-e _L40789_))
                           '"::specialize"))
                         (_specializer-id43598_
                          (let ((__tmp45871
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx40714_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id43595_ __tmp45871))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id43598_))
                    _specializer-id43598_))
                 (_lifted-specializer-id43608_
                  (if (let ()
                        (declare (not safe))
                        (_lift-unchecked-specializer?40817_))
                      (let* ((_id43603_
                              (make-symbol
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _L40789_))
                               '"::specialize::unchecked"))
                             (_lifted-specializer-id43605_
                              (let ((__tmp45872
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-source _stx40714_))))
                                (declare (not safe))
                                (gx#core-quote-syntax__1
                                 _id43603_
                                 __tmp45872))))
                        (let ()
                          (declare (not safe))
                          (gx#core-bind-runtime!__0
                           _lifted-specializer-id43605_))
                        _lifted-specializer-id43605_)
                      '#f))
                 (_$t43610_ (make-symbol (gensym '__t)))
                 (_methods43612_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls40808_)))
                 (_$methods43616_
                  (map (lambda (_id43614_)
                         (make-symbol '"__" (gensym _id43614_)))
                       _methods43612_))
                 (_g45873_
                  (for-each
                   (lambda (_g4361743620_ _g4361843622_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _method-calls40808_
                        _g4361743620_
                        _g4361843622_)))
                   _methods43612_
                   _$methods43616_))
                 (_methods-bind43633_
                  (map (lambda (_g4362543628_ _g4362643630_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind40716_
                            _$t43610_
                            _g4362543628_
                            _g4362643630_)))
                       _methods43612_
                       _$methods43616_))
                 (_slots43635_
                  (let () (declare (not safe)) (hash-keys _slot-refs40809_)))
                 (_$slots43639_
                  (map (lambda (_id43637_)
                         (make-symbol '"__" (gensym _id43637_)))
                       _slots43635_))
                 (_g45874_
                  (for-each
                   (lambda (_g4364043643_ _g4364143645_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _slot-refs40809_
                        _g4364043643_
                        _g4364143645_)))
                   _slots43635_
                   _$slots43639_))
                 (_slots-bind43656_
                  (map (lambda (_g4364843651_ _g4364943653_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind40717_
                            _$t43610_
                            _g4364843651_
                            _g4364943653_)))
                       _slots43635_
                       _$slots43639_))
                 (_class-check43658_
                  (let ()
                    (declare (not safe))
                    (hash-keys _class-type-check40810_)))
                 (_$class-check43661_
                  (map (lambda (_g45875_) (make-symbol (gensym '__class)))
                       _class-check43658_))
                 (_g45876_
                  (for-each
                   (lambda (_g4366243665_ _g4366343667_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _class-type-check40810_
                        _g4366243665_
                        _g4366343667_)))
                   _class-check43658_
                   _$class-check43661_))
                 (_class-check-bind43678_
                  (map (lambda (_g4367043673_ _g4367143675_)
                         (let ()
                           (declare (not safe))
                           (_generate-class-check-bind40718_
                            _$t43610_
                            _g4367043673_
                            _g4367143675_)))
                       _class-check43658_
                       _$class-check43661_))
                 (_struct-check-all43680_
                  (let ()
                    (declare (not safe))
                    (hash-merge
                     _struct-type-check40811_
                     _struct-type-assert40812_)))
                 (_struct-check43682_
                  (let ()
                    (declare (not safe))
                    (hash-keys _struct-check-all43680_)))
                 (_$struct-check43685_
                  (map (lambda (_g45877_) (make-symbol (gensym '__class)))
                       _struct-check43682_))
                 (_g45878_
                  (for-each
                   (lambda (_g4368643689_ _g4368743691_)
                     (let ()
                       (declare (not safe))
                       (table-set!
                        _struct-check-all43680_
                        _g4368643689_
                        _g4368743691_)))
                   _struct-check43682_
                   _$struct-check43685_))
                 (_struct-check-bind43702_
                  (map (lambda (_g4369443697_ _g4369543699_)
                         (let ()
                           (declare (not safe))
                           (_generate-struct-check-bind40719_
                            _$t43610_
                            _g4369443697_
                            _g4369543699_)))
                       _struct-check43682_
                       _$struct-check43685_))
                 (_make-specializer-lambda-expr43788_
                  (lambda (_struct-type-check143704_ _struct-type-check243705_)
                    (let* ((_g4370743721_
                            (lambda (_g4370843718_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4370843718_))))
                           (_g4370643785_
                            (lambda (_g4370843724_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4370843724_))
                                  (let ((_e4371343726_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4370843724_))))
                                    (let ((_hd4371243729_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4371343726_)))
                                          (_tl4371143731_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4371343726_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl4371143731_))
                                          (let ((_e4371643734_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl4371143731_))))
                                            (let ((_hd4371543737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e4371643734_)))
                                                  (_tl4371443739_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e4371643734_))))
                                              ((lambda (_L43742_ _L43743_)
                                                 (let* ((_self43776_
                                                         (list-ref
                                                          _L43743_
                                                          _self-index43103_))
                                                        (_body43782_
                                                         (map (lambda (_g4377743779_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gxc#apply-subst-object-refs
                           _g4377743779_
                           _self43776_
                           _$t43610_
                           _method-calls40808_
                           _slot-refs40809_
                           _class-type-check40810_
                           _struct-type-check143704_
                           _struct-type-check243705_)))
                      _L43742_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((__tmp45879
                                                          (let ((__tmp45880
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _L43743_ _body43782_))))
                    (declare (not safe))
                    (cons '%#lambda __tmp45880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp45879
                                                      _L43386_))))
                                               _tl4371443739_
                                               _hd4371543737_)))
                                          (let ()
                                            (declare (not safe))
                                            (_g4370743721_ _g4370843724_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4370743721_ _g4370843724_))))))
                      (declare (not safe))
                      (_g4370643785_ _L43386_))))
                 (_make-specializer-case-lambda-expr43927_
                  (lambda (_struct-type-check143790_ _struct-type-check243791_)
                    (let* ((_g4379343812_
                            (lambda (_g4379443809_)
                              (let ()
                                (declare (not safe))
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax"
                                 _g4379443809_))))
                           (_g4379243924_
                            (lambda (_g4379443815_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _g4379443815_))
                                  (let ((_e4379843817_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _g4379443815_))))
                                    (let ((_hd4379743820_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e4379843817_)))
                                          (_tl4379643822_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e4379843817_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null? _tl4379643822_))
                                          (let ((_g45881_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl4379643822_
                                                    '0))))
                                            (begin
                                              (let ((_g45882_
                                                     (let ()
                                                       (declare (not safe))
                                                       (if (##values? _g45881_)
                                                           (##vector-length
                                                            _g45881_)
                                                           1))))
                                                (if (not (let ()
                                                           (declare (not safe))
                                                           (##fx= _g45882_ 2)))
                                                    (error "Context expects 2 values"
                                                           _g45882_)))
                                              (let ((_target4379943825_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g45881_
                                                        0)))
                                                    (_tl4380143827_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        _g45881_
                                                        1))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl4380143827_))
                                                    (letrec ((_loop4380243830_
                                                              (lambda (_hd4380043833_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clause4380643835_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd4380043833_))
                            (let ((_e4380343838_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd4380043833_))))
                              (let ((_lp-hd4380443841_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4380343838_)))
                                    (_lp-tl4380543843_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4380343838_))))
                                (let ((__tmp45885
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd4380443841_
                                               _clause4380643835_))))
                                  (declare (not safe))
                                  (_loop4380243830_
                                   _lp-tl4380543843_
                                   __tmp45885))))
                            (let ((_clause4380743846_
                                   (reverse _clause4380643835_)))
                              ((lambda (_L43849_)
                                 (let* ((_clauses43922_
                                         (map (lambda (_clause43864_)
                                                (let* ((_g4386643877_
                                                        (lambda (_g4386743874_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _g4386743874_))))
                                                       (_g4386543912_
                                                        (lambda (_g4386743880_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _g4386743880_))
                      (let ((_e4387243882_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _g4386743880_))))
                        (let ((_hd4387143885_
                               (let ()
                                 (declare (not safe))
                                 (##car _e4387243882_)))
                              (_tl4387043887_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e4387243882_))))
                          ((lambda (_L43890_ _L43891_)
                             (let* ((_self43903_
                                     (list-ref _L43891_ _self-index43103_))
                                    (_body43909_
                                     (map (lambda (_g4390443906_)
                                            (let ()
                                              (declare (not safe))
                                              (gxc#apply-subst-object-refs
                                               _g4390443906_
                                               _self43903_
                                               _$t43610_
                                               _method-calls40808_
                                               _slot-refs40809_
                                               _class-type-check40810_
                                               _struct-type-check143790_
                                               _struct-type-check243791_)))
                                          _L43890_)))
                               (let ()
                                 (declare (not safe))
                                 (cons _L43891_ _body43909_))))
                           _tl4387043887_
                           _hd4387143885_)))
                      (let ()
                        (declare (not safe))
                        (_g4386643877_ _g4386743880_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (_g4386543912_
                                                   _clause43864_)))
                                              (let ((__tmp45883
                                                     (lambda (_g4391443917_
                                                              _g4391543919_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _g4391443917_
                                                               _g4391543919_)))))
                                                (declare (not safe))
                                                (foldr1 __tmp45883
                                                        '()
                                                        _L43849_))))
                                        (__tmp45884
                                         (let ()
                                           (declare (not safe))
                                           (cons '%#case-lambda
                                                 _clauses43922_))))
                                   (declare (not safe))
                                   (gxc#xform-wrap-source
                                    __tmp45884
                                    _L43385_)))
                               _clause4380743846_))))))
              (let ()
                (declare (not safe))
                (_loop4380243830_ _target4379943825_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4379343812_
                                                       _g4379443815_))))))
                                          (let ()
                                            (declare (not safe))
                                            (_g4379343812_ _g4379443815_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g4379343812_ _g4379443815_))))))
                      (declare (not safe))
                      (_g4379243924_ _L43385_))))
                 (_make-specializer-impl43932_
                  (lambda (_specializer-lambda-expr43929_
                           _specializer-case-lambda-expr43930_)
                    (let ((__tmp45886
                           (let ((__tmp45887
                                  (let ((__tmp45889
                                         (let ((__tmp45890
                                                (let ((__tmp45907
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L42804_ '())))
                                                      (__tmp45891
                                                       (let ((__tmp45892
                                                              (let ((__tmp45893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp45895
                                    (let ((__tmp45896
                                           (let ((__tmp45906
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L42803_ '())))
                                                 (__tmp45897
                                                  (let ((__tmp45898
                                                         (let ((__tmp45899
                                                                (let ((__tmp45900
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp45902
                                      (let ((__tmp45903
                                             (let ((__tmp45905
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L43387_ '())))
                                                   (__tmp45904
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _specializer-lambda-expr43929_
                                                            '()))))
                                               (declare (not safe))
                                               (cons __tmp45905 __tmp45904))))
                                        (declare (not safe))
                                        (cons __tmp45903 '())))
                                     (__tmp45901
                                      (let ()
                                        (declare (not safe))
                                        (cons _specializer-case-lambda-expr43930_
                                              '()))))
                                 (declare (not safe))
                                 (cons __tmp45902 __tmp45901))))
                          (declare (not safe))
                          (cons '%#let-values __tmp45900))))
                   (declare (not safe))
                   (gxc#xform-wrap-source __tmp45899 _stx40714_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp45898 '()))))
                                             (declare (not safe))
                                             (cons __tmp45906 __tmp45897))))
                                      (declare (not safe))
                                      (cons __tmp45896 '())))
                                   (__tmp45894
                                    (let ()
                                      (declare (not safe))
                                      (cons _L42801_ '()))))
                               (declare (not safe))
                               (cons __tmp45895 __tmp45894))))
                        (declare (not safe))
                        (cons '%#let-values __tmp45893))))
                 (declare (not safe))
                 (cons __tmp45892 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp45907
                                                        __tmp45891))))
                                           (declare (not safe))
                                           (cons __tmp45890 '())))
                                        (__tmp45888
                                         (let ()
                                           (declare (not safe))
                                           (cons _L42800_ '()))))
                                    (declare (not safe))
                                    (cons __tmp45889 __tmp45888))))
                             (declare (not safe))
                             (cons '%#let-values __tmp45887))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp45886 _stx40714_))))
                 (_specializer-lambda-expr43934_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-lambda-expr43788_
                     _struct-check-all43680_
                     _empty40813_)))
                 (_specializer-case-lambda-expr43936_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-case-lambda-expr43927_
                     _struct-check-all43680_
                     _empty40813_)))
                 (_specializer-impl43938_
                  (let ()
                    (declare (not safe))
                    (_make-specializer-impl43932_
                     _specializer-lambda-expr43934_
                     _specializer-case-lambda-expr43936_)))
                 (_unchecked-specializer-lambda-expr43940_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40816_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-lambda-expr43788_
                         _empty40813_
                         _struct-check-all43680_))
                      '#f))
                 (_unchecked-specializer-case-lambda-expr43942_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40816_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-case-lambda-expr43927_
                         _empty40813_
                         _struct-check-all43680_))
                      '#f))
                 (_unchecked-specializer-impl43944_
                  (if (let ()
                        (declare (not safe))
                        (_unchecked-specializer?40816_))
                      (let ()
                        (declare (not safe))
                        (_make-specializer-impl43932_
                         _unchecked-specializer-lambda-expr43940_
                         _unchecked-specializer-case-lambda-expr43942_))
                      '#f))
                 (_specializer-impl43946_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl40720_
                     _$t43610_
                     _methods-bind43633_
                     _slots-bind43656_
                     _class-check-bind43678_
                     _struct-check-bind43702_
                     _specializer-impl43938_
                     _lifted-specializer-id43608_
                     _unchecked-specializer-impl43944_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp45909
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L40789_)))
                                                          (__tmp45908
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id43601_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp45909
                                                       '" => "
                                                       __tmp45908))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def40721_
                                                       _L40789_
                                                       _specializer-id43601_
                                                       _specializer-impl43946_
                                                       _lifted-specializer-id43608_
                                                       _unchecked-specializer-impl43944_)))))
                                            _hd4331843380_
                                            _hd4331543372_
                                            _hd4331243364_)
                                           (let ()
                                             (declare (not safe))
                                             (_g4329443324_ _g4329543327_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4329443324_ _g4329543327_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4329443324_ _g4329543327_)))
                           (let ()
                             (declare (not safe))
                             (_g4329443324_ _g4329543327_)))))
                   (let () (declare (not safe)) (_g4329443324_ _g4329543327_)))
               (let () (declare (not safe)) (_g4329443324_ _g4329543327_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4329443324_
                                                  _g4329543327_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4329443324_ _g4329543327_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4329443324_ _g4329543327_)))))
                       (let ()
                         (declare (not safe))
                         (_g4329443324_ _g4329543327_)))))
               (let () (declare (not safe)) (_g4329443324_ _g4329543327_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4329343949_ _L42802_))
                                         _stx40714_))))
                             _hd4289943022_
                             _kw-ref4289743043_
                             _hd4288743009_
                             _hd4287842985_
                             _hd4286942961_)
                            (let ()
                              (declare (not safe))
                              (_g4284342905_ _g4284442908_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop4289243027_
                                                   _target4288943014_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g4284342905_
                                                 _g4284442908_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g4284342905_ _g4284442908_))))))
                            (let ()
                              (declare (not safe))
                              (_g4284342905_ _g4284442908_)))
                        (let ()
                          (declare (not safe))
                          (_g4284342905_ _g4284442908_)))
                    (let ()
                      (declare (not safe))
                      (_g4284342905_ _g4284442908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4284342905_
                                                       _g4284442908_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4284342905_
                                                   _g4284442908_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g4284342905_ _g4284442908_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4284342905_ _g4284442908_)))))
                            (let ()
                              (declare (not safe))
                              (_g4284342905_ _g4284442908_)))
                        (let ()
                          (declare (not safe))
                          (_g4284342905_ _g4284442908_)))))
                (let () (declare (not safe)) (_g4284342905_ _g4284442908_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4284342905_
                                                       _g4284442908_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g4284342905_
                                                   _g4284442908_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g4284342905_ _g4284442908_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g4284342905_ _g4284442908_)))
                            (let ()
                              (declare (not safe))
                              (_g4284342905_ _g4284442908_)))))
                    (let ()
                      (declare (not safe))
                      (_g4284342905_ _g4284442908_)))
                (let () (declare (not safe)) (_g4284342905_ _g4284442908_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4284342905_
                                                       _g4284442908_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4284342905_ _g4284442908_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g4284342905_ _g4284442908_)))
                                (let ()
                                  (declare (not safe))
                                  (_g4284342905_ _g4284442908_)))
                            (let ()
                              (declare (not safe))
                              (_g4284342905_ _g4284442908_)))))
                    (let ()
                      (declare (not safe))
                      (_g4284342905_ _g4284442908_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g4284342905_
                                                       _g4284442908_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g4284342905_ _g4284442908_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g4284342905_ _g4284442908_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g4284342905_ _g4284442908_)))))
                            (let ()
                              (declare (not safe))
                              (_g4284342905_ _g4284442908_))))))
                (declare (not safe))
                (_g4284243952_ _L42801_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd4267742795_
                                                    _hd4267442787_
                                                    _hd4267142779_
                                                    _hd4266842771_
                                                    _hd4265042723_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4263042683_
                                                      _g4263142686_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g4263042683_ _g4263142686_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g4263042683_ _g4263142686_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g4263042683_ _g4263142686_)))
                               (let ()
                                 (declare (not safe))
                                 (_g4263042683_ _g4263142686_)))))
                       (let ()
                         (declare (not safe))
                         (_g4263042683_ _g4263142686_)))
                   (let () (declare (not safe)) (_g4263042683_ _g4263142686_)))
               (let () (declare (not safe)) (_g4263042683_ _g4263142686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4263042683_
                                                  _g4263142686_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4263042683_ _g4263142686_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4263042683_ _g4263142686_)))))
                           (let ()
                             (declare (not safe))
                             (_g4263042683_ _g4263142686_)))))
                   (let ()
                     (declare (not safe))
                     (_g4263042683_ _g4263142686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g4263042683_
                                                      _g4263142686_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4263042683_
                                                  _g4263142686_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g4263042683_ _g4263142686_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g4263042683_ _g4263142686_)))))
                           (let ()
                             (declare (not safe))
                             (_g4263042683_ _g4263142686_)))
                       (let ()
                         (declare (not safe))
                         (_g4263042683_ _g4263142686_)))))
               (let () (declare (not safe)) (_g4263042683_ _g4263142686_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g4263042683_
                                                  _g4263142686_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g4263042683_ _g4263142686_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g4263042683_ _g4263142686_)))
                           (let ()
                             (declare (not safe))
                             (_g4263042683_ _g4263142686_)))
                       (let ()
                         (declare (not safe))
                         (_g4263042683_ _g4263142686_)))))
               (let () (declare (not safe)) (_g4263042683_ _g4263142686_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g4262943955_ _L40788_))
                                         _stx40714_))))))))
                  (___kont4416444165_ (lambda () _stx40714_)))
              (let ((___match4419344194_
                     (lambda (_e4073040756_
                              _hd4072940759_
                              _tl4072840761_
                              _e4073340764_
                              _hd4073240767_
                              _tl4073140769_
                              _e4073640772_
                              _hd4073540775_
                              _tl4073440777_
                              _e4073940780_
                              _hd4073840783_
                              _tl4073740785_)
                       (let ((_L40788_ _hd4073840783_)
                             (_L40789_ _hd4073540775_))
                         (if (let ((__tmp45998
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L40789_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp45998))
                             (___kont4416244163_ _L40788_ _L40789_)
                             (___kont4416444165_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4416044161_))
                    (let ((_e4073040756_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4416044161_))))
                      (let ((_tl4072840761_
                             (let ()
                               (declare (not safe))
                               (##cdr _e4073040756_)))
                            (_hd4072940759_
                             (let ()
                               (declare (not safe))
                               (##car _e4073040756_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl4072840761_))
                            (let ((_e4073340764_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl4072840761_))))
                              (let ((_tl4073140769_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e4073340764_)))
                                    (_hd4073240767_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e4073340764_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd4073240767_))
                                    (let ((_e4073640772_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd4073240767_))))
                                      (let ((_tl4073440777_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e4073640772_)))
                                            (_hd4073540775_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e4073640772_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl4073440777_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl4073140769_))
                                                (let ((_e4073940780_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl4073140769_))))
                                                  (let ((_tl4073740785_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e4073940780_)))
                                                        (_hd4073840783_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e4073940780_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl4073740785_))
                                                        (___match4419344194_
                                                         _e4073040756_
                                                         _hd4072940759_
                                                         _tl4072840761_
                                                         _e4073340764_
                                                         _hd4073240767_
                                                         _tl4073140769_
                                                         _e4073640772_
                                                         _hd4073540775_
                                                         _tl4073440777_
                                                         _e4073940780_
                                                         _hd4073840783_
                                                         _tl4073740785_)
                                                        (___kont4416444165_))))
                                                (___kont4416444165_))
                                            (___kont4416444165_))))
                                    (___kont4416444165_))))
                            (___kont4416444165_))))
                    (___kont4416444165_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx39216_
               _self39217_
               _methods39218_
               _slots39219_
               _class-check39220_
               _struct-check39221_
               _struct-assert39222_)
        (let* ((___stx4419644197_ _stx39216_)
               (_g3923439552_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax"
                     ___stx4419644197_)))))
          (let ((___kont4419844199_
                 (lambda (_L40663_ _L40664_ _L40665_ _L40666_)
                   (let ((__tmp45999
                          (let () (declare (not safe)) (gx#stx-e _L40664_))))
                     (declare (not safe))
                     (table-set! _methods39218_ __tmp45999 '#t))
                   (for-each
                    (lambda (_g4069940701_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e
                         _g4069940701_
                         _self39217_
                         _methods39218_
                         _slots39219_
                         _class-check39220_
                         _struct-check39221_
                         _struct-assert39222_)))
                    (let ((__tmp46000
                           (lambda (_g4070340706_ _g4070440708_)
                             (let ()
                               (declare (not safe))
                               (cons _g4070340706_ _g4070440708_)))))
                      (declare (not safe))
                      (foldr1 __tmp46000 '() _L40663_)))))
                (___kont4420244203_
                 (lambda (_L40498_ _L40499_ _L40500_ _L40501_ _L40502_)
                   (let ((__tmp46001
                          (let () (declare (not safe)) (gx#stx-e _L40499_))))
                     (declare (not safe))
                     (table-set! _methods39218_ __tmp46001 '#t))
                   (for-each
                    (lambda (_g4054240544_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e
                         _g4054240544_
                         _self39217_
                         _methods39218_
                         _slots39219_
                         _class-check39220_
                         _struct-check39221_
                         _struct-assert39222_)))
                    (let ((__tmp46002
                           (lambda (_g4054640549_ _g4054740551_)
                             (let ()
                               (declare (not safe))
                               (cons _g4054640549_ _g4054740551_)))))
                      (declare (not safe))
                      (foldr1 __tmp46002 '() _L40498_)))))
                (___kont4420644207_
                 (lambda (_L40331_ _L40332_ _L40333_)
                   (let ((__tmp46003
                          (let () (declare (not safe)) (gx#stx-e _L40331_))))
                     (declare (not safe))
                     (table-set! _slots39219_ __tmp46003 '#t))))
                (___kont4420844209_
                 (lambda (_L40208_ _L40209_ _L40210_ _L40211_)
                   (let ((__tmp46004
                          (let () (declare (not safe)) (gx#stx-e _L40209_))))
                     (declare (not safe))
                     (table-set! _slots39219_ __tmp46004 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e
                      _L40208_
                      _self39217_
                      _methods39218_
                      _slots39219_
                      _class-check39220_
                      _struct-check39221_
                      _struct-assert39222_))))
                (___kont4421044211_
                 (lambda (_L40092_ _L40093_)
                   (let ((__tmp46005
                          (##structure-ref
                           (let ((__tmp46006
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L40093_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46006))
                           '2
                           gxc#!class-getf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots39219_ __tmp46005 '#t))))
                (___kont4421244213_
                 (lambda (_L40004_ _L40005_ _L40006_)
                   (let ((__tmp46007
                          (##structure-ref
                           (let ((__tmp46008
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L40006_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46008))
                           '2
                           gxc#!class-setf::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _slots39219_ __tmp46007 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e
                      _L40004_
                      _self39217_
                      _methods39218_
                      _slots39219_
                      _class-check39220_
                      _struct-check39221_
                      _struct-assert39222_))))
                (___kont4421444215_
                 (lambda (_L39912_ _L39913_)
                   (let ((__tmp46009
                          (##structure-ref
                           (let ((__tmp46010
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L39913_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46010))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _class-check39220_ __tmp46009 '#t))))
                (___kont4421644217_
                 (lambda (_L39828_ _L39829_)
                   (let ((__tmp46011
                          (##structure-ref
                           (let ((__tmp46012
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L39829_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp46012))
                           '1
                           gxc#!type::t
                           '#f)))
                     (declare (not safe))
                     (table-set! _struct-check39221_ __tmp46011 '#t))))
                (___kont4421844219_
                 (lambda (_L39731_ _L39732_)
                   (let ((_getf39765_
                          (let ((__tmp46013
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L39732_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp46013))))
                     (if (##structure-ref
                          _getf39765_
                          '3
                          gxc#!struct-getf::t
                          '#f)
                         '#!void
                         (let ((__tmp46014
                                (##structure-ref
                                 _getf39765_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set!
                            _struct-assert39222_
                            __tmp46014
                            '#t))))))
                (___kont4422044221_
                 (lambda (_L39628_ _L39629_ _L39630_)
                   (let ((_setf39668_
                          (let ((__tmp46015
                                 (let ()
                                   (declare (not safe))
                                   (gxc#identifier-symbol _L39630_))))
                            (declare (not safe))
                            (gxc#optimizer-resolve-type __tmp46015))))
                     (if (##structure-ref
                          _setf39668_
                          '3
                          gxc#!struct-setf::t
                          '#f)
                         '#!void
                         (let ((__tmp46016
                                (##structure-ref
                                 _setf39668_
                                 '1
                                 gxc#!type::t
                                 '#f)))
                           (declare (not safe))
                           (table-set! _struct-assert39222_ __tmp46016 '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e
                        _L39628_
                        _self39217_
                        _methods39218_
                        _slots39219_
                        _class-check39220_
                        _struct-check39221_
                        _struct-assert39222_)))))
                (___kont4422244223_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx39216_
                      _self39217_
                      _methods39218_
                      _slots39219_
                      _class-check39220_
                      _struct-check39221_
                      _struct-assert39222_)))))
            (let* ((___match4493344934_
                    (lambda (_e3952639564_
                             _hd3952539567_
                             _tl3952439569_
                             _e3952939572_
                             _hd3952839575_
                             _tl3952739577_
                             _e3953239580_
                             _hd3953139583_
                             _tl3953039585_
                             _e3953539588_
                             _hd3953439591_
                             _tl3953339593_
                             _e3953839596_
                             _hd3953739599_
                             _tl3953639601_
                             _e3954139604_
                             _hd3954039607_
                             _tl3953939609_
                             _e3954439612_
                             _hd3954339615_
                             _tl3954239617_
                             _e3954739620_
                             _hd3954639623_
                             _tl3954539625_)
                      (let ((_L39628_ _hd3954639623_)
                            (_L39629_ _hd3954339615_)
                            (_L39630_ _hd3953439591_))
                        (if (if (let ((__tmp46019
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L39629_
                                          _self39217_))))
                                  (declare (not safe))
                                  (not __tmp46019))
                                '#f
                                (let ((_$e39657_
                                       (let ((__tmp46017
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L39630_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp46017))))
                                  (and _$e39657_
                                       ((lambda (_t39660_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t39660_
                                                  'gxc#!struct-setf::t))
                                               (let ((_struct-t3966139663_
                                                      (let ((__tmp46018
                                                             (##structure-ref
                                                              _t39660_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp46018))))
                                                 (and _struct-t3966139663_
                                                      (let ((_struct-t39666_
                                                             _struct-t3966139663_))
                                                        (##structure-ref
                                                         _struct-t39666_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e39657_))))
                            (___kont4422044221_ _L39628_ _L39629_ _L39630_)
                            (___kont4422244223_)))))
                   (___match4492544926_
                    (lambda (_e3952639564_
                             _hd3952539567_
                             _tl3952439569_
                             _e3952939572_
                             _hd3952839575_
                             _tl3952739577_
                             _e3953239580_
                             _hd3953139583_
                             _tl3953039585_
                             _e3953539588_
                             _hd3953439591_
                             _tl3953339593_
                             _e3953839596_
                             _hd3953739599_
                             _tl3953639601_
                             _e3954139604_
                             _hd3954039607_
                             _tl3953939609_
                             _e3954439612_
                             _hd3954339615_
                             _tl3954239617_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3953639601_))
                          (let ((_e3954739620_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3953639601_))))
                            (let ((_tl3954539625_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3954739620_)))
                                  (_hd3954639623_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3954739620_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3954539625_))
                                  (___match4493344934_
                                   _e3952639564_
                                   _hd3952539567_
                                   _tl3952439569_
                                   _e3952939572_
                                   _hd3952839575_
                                   _tl3952739577_
                                   _e3953239580_
                                   _hd3953139583_
                                   _tl3953039585_
                                   _e3953539588_
                                   _hd3953439591_
                                   _tl3953339593_
                                   _e3953839596_
                                   _hd3953739599_
                                   _tl3953639601_
                                   _e3954139604_
                                   _hd3954039607_
                                   _tl3953939609_
                                   _e3954439612_
                                   _hd3954339615_
                                   _tl3954239617_
                                   _e3954739620_
                                   _hd3954639623_
                                   _tl3954539625_)
                                  (___kont4422244223_))))
                          (___kont4422244223_))))
                   (___match4487144872_
                    (lambda (_e3950239675_
                             _hd3950139678_
                             _tl3950039680_
                             _e3950539683_
                             _hd3950439686_
                             _tl3950339688_
                             _e3950839691_
                             _hd3950739694_
                             _tl3950639696_
                             _e3951139699_
                             _hd3951039702_
                             _tl3950939704_
                             _e3951439707_
                             _hd3951339710_
                             _tl3951239712_
                             _e3951739715_
                             _hd3951639718_
                             _tl3951539720_
                             _e3952039723_
                             _hd3951939726_
                             _tl3951839728_)
                      (let ((_L39731_ _hd3951939726_)
                            (_L39732_ _hd3951039702_))
                        (if (if (let ((__tmp46022
                                       (let ()
                                         (declare (not safe))
                                         (gx#free-identifier=?
                                          _L39731_
                                          _self39217_))))
                                  (declare (not safe))
                                  (not __tmp46022))
                                '#f
                                (let ((_$e39754_
                                       (let ((__tmp46020
                                              (let ()
                                                (declare (not safe))
                                                (gxc#identifier-symbol
                                                 _L39732_))))
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          __tmp46020))))
                                  (and _$e39754_
                                       ((lambda (_t39757_)
                                          (and (let ()
                                                 (declare (not safe))
                                                 (##structure-instance-of?
                                                  _t39757_
                                                  'gxc#!struct-getf::t))
                                               (let ((_struct-t3975839760_
                                                      (let ((__tmp46021
                                                             (##structure-ref
                                                              _t39757_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)))
                                                        (declare (not safe))
                                                        (gxc#optimizer-resolve-type
                                                         __tmp46021))))
                                                 (and _struct-t3975839760_
                                                      (let ((_struct-t39763_
                                                             _struct-t3975839760_))
                                                        (##structure-ref
                                                         _struct-t39763_
                                                         '4
                                                         gxc#!struct-type::t
                                                         '#f))))))
                                        _$e39754_))))
                            (___kont4421844219_ _L39731_ _L39732_)
                            (___kont4422244223_)))))
                   (___match4481544816_
                    (lambda (_e3947939772_
                             _hd3947839775_
                             _tl3947739777_
                             _e3948239780_
                             _hd3948139783_
                             _tl3948039785_
                             _e3948539788_
                             _hd3948439791_
                             _tl3948339793_
                             _e3948839796_
                             _hd3948739799_
                             _tl3948639801_
                             _e3949139804_
                             _hd3949039807_
                             _tl3948939809_
                             _e3949439812_
                             _hd3949339815_
                             _tl3949239817_
                             _e3949739820_
                             _hd3949639823_
                             _tl3949539825_)
                      (let ((_L39828_ _hd3949639823_)
                            (_L39829_ _hd3948739799_))
                        (if (and (let ((__tmp46023
                                        (let ((__tmp46024
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L39829_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46024))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46023
                                    'gxc#!struct-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39828_
                                    _self39217_)))
                            (___kont4421644217_ _L39828_ _L39829_)
                            (___match4487144872_
                             _e3947939772_
                             _hd3947839775_
                             _tl3947739777_
                             _e3948239780_
                             _hd3948139783_
                             _tl3948039785_
                             _e3948539788_
                             _hd3948439791_
                             _tl3948339793_
                             _e3948839796_
                             _hd3948739799_
                             _tl3948639801_
                             _e3949139804_
                             _hd3949039807_
                             _tl3948939809_
                             _e3949439812_
                             _hd3949339815_
                             _tl3949239817_
                             _e3949739820_
                             _hd3949639823_
                             _tl3949539825_)))))
                   (___match4475944760_
                    (lambda (_e3945639856_
                             _hd3945539859_
                             _tl3945439861_
                             _e3945939864_
                             _hd3945839867_
                             _tl3945739869_
                             _e3946239872_
                             _hd3946139875_
                             _tl3946039877_
                             _e3946539880_
                             _hd3946439883_
                             _tl3946339885_
                             _e3946839888_
                             _hd3946739891_
                             _tl3946639893_
                             _e3947139896_
                             _hd3947039899_
                             _tl3946939901_
                             _e3947439904_
                             _hd3947339907_
                             _tl3947239909_)
                      (let ((_L39912_ _hd3947339907_)
                            (_L39913_ _hd3946439883_))
                        (if (and (let ((__tmp46025
                                        (let ((__tmp46026
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L39913_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46026))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46025
                                    'gxc#!class-pred::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L39912_
                                    _self39217_)))
                            (___kont4421444215_ _L39912_ _L39913_)
                            (___match4481544816_
                             _e3945639856_
                             _hd3945539859_
                             _tl3945439861_
                             _e3945939864_
                             _hd3945839867_
                             _tl3945739869_
                             _e3946239872_
                             _hd3946139875_
                             _tl3946039877_
                             _e3946539880_
                             _hd3946439883_
                             _tl3946339885_
                             _e3946839888_
                             _hd3946739891_
                             _tl3946639893_
                             _e3947139896_
                             _hd3947039899_
                             _tl3946939901_
                             _e3947439904_
                             _hd3947339907_
                             _tl3947239909_)))))
                   (___match4475744758_
                    (lambda (_e3945639856_
                             _hd3945539859_
                             _tl3945439861_
                             _e3945939864_
                             _hd3945839867_
                             _tl3945739869_
                             _e3946239872_
                             _hd3946139875_
                             _tl3946039877_
                             _e3946539880_
                             _hd3946439883_
                             _tl3946339885_
                             _e3946839888_
                             _hd3946739891_
                             _tl3946639893_
                             _e3947139896_
                             _hd3947039899_
                             _tl3946939901_
                             _e3947439904_
                             _hd3947339907_
                             _tl3947239909_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3946639893_))
                          (___match4475944760_
                           _e3945639856_
                           _hd3945539859_
                           _tl3945439861_
                           _e3945939864_
                           _hd3945839867_
                           _tl3945739869_
                           _e3946239872_
                           _hd3946139875_
                           _tl3946039877_
                           _e3946539880_
                           _hd3946439883_
                           _tl3946339885_
                           _e3946839888_
                           _hd3946739891_
                           _tl3946639893_
                           _e3947139896_
                           _hd3947039899_
                           _tl3946939901_
                           _e3947439904_
                           _hd3947339907_
                           _tl3947239909_)
                          (___match4492544926_
                           _e3945639856_
                           _hd3945539859_
                           _tl3945439861_
                           _e3945939864_
                           _hd3945839867_
                           _tl3945739869_
                           _e3946239872_
                           _hd3946139875_
                           _tl3946039877_
                           _e3946539880_
                           _hd3946439883_
                           _tl3946339885_
                           _e3946839888_
                           _hd3946739891_
                           _tl3946639893_
                           _e3947139896_
                           _hd3947039899_
                           _tl3946939901_
                           _e3947439904_
                           _hd3947339907_
                           _tl3947239909_))))
                   (___match4470344704_
                    (lambda (_e3943039940_
                             _hd3942939943_
                             _tl3942839945_
                             _e3943339948_
                             _hd3943239951_
                             _tl3943139953_
                             _e3943639956_
                             _hd3943539959_
                             _tl3943439961_
                             _e3943939964_
                             _hd3943839967_
                             _tl3943739969_
                             _e3944239972_
                             _hd3944139975_
                             _tl3944039977_
                             _e3944539980_
                             _hd3944439983_
                             _tl3944339985_
                             _e3944839988_
                             _hd3944739991_
                             _tl3944639993_
                             _e3945139996_
                             _hd3945039999_
                             _tl3944940001_)
                      (let ((_L40004_ _hd3945039999_)
                            (_L40005_ _hd3944739991_)
                            (_L40006_ _hd3943839967_))
                        (if (and (let ((__tmp46027
                                        (let ((__tmp46028
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L40006_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46028))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46027
                                    'gxc#!class-setf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40005_
                                    _self39217_)))
                            (___kont4421244213_ _L40004_ _L40005_ _L40006_)
                            (___match4493344934_
                             _e3943039940_
                             _hd3942939943_
                             _tl3942839945_
                             _e3943339948_
                             _hd3943239951_
                             _tl3943139953_
                             _e3943639956_
                             _hd3943539959_
                             _tl3943439961_
                             _e3943939964_
                             _hd3943839967_
                             _tl3943739969_
                             _e3944239972_
                             _hd3944139975_
                             _tl3944039977_
                             _e3944539980_
                             _hd3944439983_
                             _tl3944339985_
                             _e3944839988_
                             _hd3944739991_
                             _tl3944639993_
                             _e3945139996_
                             _hd3945039999_
                             _tl3944940001_)))))
                   (___match4470144702_
                    (lambda (_e3943039940_
                             _hd3942939943_
                             _tl3942839945_
                             _e3943339948_
                             _hd3943239951_
                             _tl3943139953_
                             _e3943639956_
                             _hd3943539959_
                             _tl3943439961_
                             _e3943939964_
                             _hd3943839967_
                             _tl3943739969_
                             _e3944239972_
                             _hd3944139975_
                             _tl3944039977_
                             _e3944539980_
                             _hd3944439983_
                             _tl3944339985_
                             _e3944839988_
                             _hd3944739991_
                             _tl3944639993_
                             _e3945139996_
                             _hd3945039999_
                             _tl3944940001_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3944940001_))
                          (___match4470344704_
                           _e3943039940_
                           _hd3942939943_
                           _tl3942839945_
                           _e3943339948_
                           _hd3943239951_
                           _tl3943139953_
                           _e3943639956_
                           _hd3943539959_
                           _tl3943439961_
                           _e3943939964_
                           _hd3943839967_
                           _tl3943739969_
                           _e3944239972_
                           _hd3944139975_
                           _tl3944039977_
                           _e3944539980_
                           _hd3944439983_
                           _tl3944339985_
                           _e3944839988_
                           _hd3944739991_
                           _tl3944639993_
                           _e3945139996_
                           _hd3945039999_
                           _tl3944940001_)
                          (___kont4422244223_))))
                   (___match4469544696_
                    (lambda (_e3943039940_
                             _hd3942939943_
                             _tl3942839945_
                             _e3943339948_
                             _hd3943239951_
                             _tl3943139953_
                             _e3943639956_
                             _hd3943539959_
                             _tl3943439961_
                             _e3943939964_
                             _hd3943839967_
                             _tl3943739969_
                             _e3944239972_
                             _hd3944139975_
                             _tl3944039977_
                             _e3944539980_
                             _hd3944439983_
                             _tl3944339985_
                             _e3944839988_
                             _hd3944739991_
                             _tl3944639993_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3944039977_))
                          (let ((_e3945139996_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3944039977_))))
                            (let ((_tl3944940001_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3945139996_)))
                                  (_hd3945039999_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3945139996_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3944940001_))
                                  (___match4470344704_
                                   _e3943039940_
                                   _hd3942939943_
                                   _tl3942839945_
                                   _e3943339948_
                                   _hd3943239951_
                                   _tl3943139953_
                                   _e3943639956_
                                   _hd3943539959_
                                   _tl3943439961_
                                   _e3943939964_
                                   _hd3943839967_
                                   _tl3943739969_
                                   _e3944239972_
                                   _hd3944139975_
                                   _tl3944039977_
                                   _e3944539980_
                                   _hd3944439983_
                                   _tl3944339985_
                                   _e3944839988_
                                   _hd3944739991_
                                   _tl3944639993_
                                   _e3945139996_
                                   _hd3945039999_
                                   _tl3944940001_)
                                  (___kont4422244223_))))
                          (___match4475744758_
                           _e3943039940_
                           _hd3942939943_
                           _tl3942839945_
                           _e3943339948_
                           _hd3943239951_
                           _tl3943139953_
                           _e3943639956_
                           _hd3943539959_
                           _tl3943439961_
                           _e3943939964_
                           _hd3943839967_
                           _tl3943739969_
                           _e3944239972_
                           _hd3944139975_
                           _tl3944039977_
                           _e3944539980_
                           _hd3944439983_
                           _tl3944339985_
                           _e3944839988_
                           _hd3944739991_
                           _tl3944639993_))))
                   (___match4464144642_
                    (lambda (_e3940640036_
                             _hd3940540039_
                             _tl3940440041_
                             _e3940940044_
                             _hd3940840047_
                             _tl3940740049_
                             _e3941240052_
                             _hd3941140055_
                             _tl3941040057_
                             _e3941540060_
                             _hd3941440063_
                             _tl3941340065_
                             _e3941840068_
                             _hd3941740071_
                             _tl3941640073_
                             _e3942140076_
                             _hd3942040079_
                             _tl3941940081_
                             _e3942440084_
                             _hd3942340087_
                             _tl3942240089_)
                      (let ((_L40092_ _hd3942340087_)
                            (_L40093_ _hd3941440063_))
                        (if (and (let ((__tmp46029
                                        (let ((__tmp46030
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L40093_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp46030))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp46029
                                    'gxc#!class-getf::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40092_
                                    _self39217_)))
                            (___kont4421044211_ _L40092_ _L40093_)
                            (___match4475944760_
                             _e3940640036_
                             _hd3940540039_
                             _tl3940440041_
                             _e3940940044_
                             _hd3940840047_
                             _tl3940740049_
                             _e3941240052_
                             _hd3941140055_
                             _tl3941040057_
                             _e3941540060_
                             _hd3941440063_
                             _tl3941340065_
                             _e3941840068_
                             _hd3941740071_
                             _tl3941640073_
                             _e3942140076_
                             _hd3942040079_
                             _tl3941940081_
                             _e3942440084_
                             _hd3942340087_
                             _tl3942240089_)))))
                   (___match4463944640_
                    (lambda (_e3940640036_
                             _hd3940540039_
                             _tl3940440041_
                             _e3940940044_
                             _hd3940840047_
                             _tl3940740049_
                             _e3941240052_
                             _hd3941140055_
                             _tl3941040057_
                             _e3941540060_
                             _hd3941440063_
                             _tl3941340065_
                             _e3941840068_
                             _hd3941740071_
                             _tl3941640073_
                             _e3942140076_
                             _hd3942040079_
                             _tl3941940081_
                             _e3942440084_
                             _hd3942340087_
                             _tl3942240089_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3941640073_))
                          (___match4464144642_
                           _e3940640036_
                           _hd3940540039_
                           _tl3940440041_
                           _e3940940044_
                           _hd3940840047_
                           _tl3940740049_
                           _e3941240052_
                           _hd3941140055_
                           _tl3941040057_
                           _e3941540060_
                           _hd3941440063_
                           _tl3941340065_
                           _e3941840068_
                           _hd3941740071_
                           _tl3941640073_
                           _e3942140076_
                           _hd3942040079_
                           _tl3941940081_
                           _e3942440084_
                           _hd3942340087_
                           _tl3942240089_)
                          (___match4469544696_
                           _e3940640036_
                           _hd3940540039_
                           _tl3940440041_
                           _e3940940044_
                           _hd3940840047_
                           _tl3940740049_
                           _e3941240052_
                           _hd3941140055_
                           _tl3941040057_
                           _e3941540060_
                           _hd3941440063_
                           _tl3941340065_
                           _e3941840068_
                           _hd3941740071_
                           _tl3941640073_
                           _e3942140076_
                           _hd3942040079_
                           _tl3941940081_
                           _e3942440084_
                           _hd3942340087_
                           _tl3942240089_))))
                   (___match4458544586_
                    (lambda (_e3937140120_
                             _hd3937040123_
                             _tl3936940125_
                             _e3937440128_
                             _hd3937340131_
                             _tl3937240133_
                             _e3937740136_
                             _hd3937640139_
                             _tl3937540141_
                             _e3938040144_
                             _hd3937940147_
                             _tl3937840149_
                             _e3938340152_
                             _hd3938240155_
                             _tl3938140157_
                             _e3938640160_
                             _hd3938540163_
                             _tl3938440165_
                             _e3938940168_
                             _hd3938840171_
                             _tl3938740173_
                             _e3939240176_
                             _hd3939140179_
                             _tl3939040181_
                             _e3939540184_
                             _hd3939440187_
                             _tl3939340189_
                             _e3939840192_
                             _hd3939740195_
                             _tl3939640197_
                             _e3940140200_
                             _hd3940040203_
                             _tl3939940205_)
                      (let ((_L40208_ _hd3940040203_)
                            (_L40209_ _hd3939740195_)
                            (_L40210_ _hd3938840171_)
                            (_L40211_ _hd3937940147_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40211_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40211_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40210_
                                    _self39217_)))
                            (___kont4420844209_
                             _L40208_
                             _L40209_
                             _L40210_
                             _L40211_)
                            (___kont4422244223_)))))
                   (___match4457744578_
                    (lambda (_e3937140120_
                             _hd3937040123_
                             _tl3936940125_
                             _e3937440128_
                             _hd3937340131_
                             _tl3937240133_
                             _e3937740136_
                             _hd3937640139_
                             _tl3937540141_
                             _e3938040144_
                             _hd3937940147_
                             _tl3937840149_
                             _e3938340152_
                             _hd3938240155_
                             _tl3938140157_
                             _e3938640160_
                             _hd3938540163_
                             _tl3938440165_
                             _e3938940168_
                             _hd3938840171_
                             _tl3938740173_
                             _e3939240176_
                             _hd3939140179_
                             _tl3939040181_
                             _e3939540184_
                             _hd3939440187_
                             _tl3939340189_
                             _e3939840192_
                             _hd3939740195_
                             _tl3939640197_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3939040181_))
                          (let ((_e3940140200_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3939040181_))))
                            (let ((_tl3939940205_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3940140200_)))
                                  (_hd3940040203_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3940140200_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3939940205_))
                                  (___match4458544586_
                                   _e3937140120_
                                   _hd3937040123_
                                   _tl3936940125_
                                   _e3937440128_
                                   _hd3937340131_
                                   _tl3937240133_
                                   _e3937740136_
                                   _hd3937640139_
                                   _tl3937540141_
                                   _e3938040144_
                                   _hd3937940147_
                                   _tl3937840149_
                                   _e3938340152_
                                   _hd3938240155_
                                   _tl3938140157_
                                   _e3938640160_
                                   _hd3938540163_
                                   _tl3938440165_
                                   _e3938940168_
                                   _hd3938840171_
                                   _tl3938740173_
                                   _e3939240176_
                                   _hd3939140179_
                                   _tl3939040181_
                                   _e3939540184_
                                   _hd3939440187_
                                   _tl3939340189_
                                   _e3939840192_
                                   _hd3939740195_
                                   _tl3939640197_
                                   _e3940140200_
                                   _hd3940040203_
                                   _tl3939940205_)
                                  (___kont4422244223_))))
                          (___match4470144702_
                           _e3937140120_
                           _hd3937040123_
                           _tl3936940125_
                           _e3937440128_
                           _hd3937340131_
                           _tl3937240133_
                           _e3937740136_
                           _hd3937640139_
                           _tl3937540141_
                           _e3938040144_
                           _hd3937940147_
                           _tl3937840149_
                           _e3938340152_
                           _hd3938240155_
                           _tl3938140157_
                           _e3938640160_
                           _hd3938540163_
                           _tl3938440165_
                           _e3938940168_
                           _hd3938840171_
                           _tl3938740173_
                           _e3939240176_
                           _hd3939140179_
                           _tl3939040181_))))
                   (___match4449944500_
                    (lambda (_e3933740251_
                             _hd3933640254_
                             _tl3933540256_
                             _e3934040259_
                             _hd3933940262_
                             _tl3933840264_
                             _e3934340267_
                             _hd3934240270_
                             _tl3934140272_
                             _e3934640275_
                             _hd3934540278_
                             _tl3934440280_
                             _e3934940283_
                             _hd3934840286_
                             _tl3934740288_
                             _e3935240291_
                             _hd3935140294_
                             _tl3935040296_
                             _e3935540299_
                             _hd3935440302_
                             _tl3935340304_
                             _e3935840307_
                             _hd3935740310_
                             _tl3935640312_
                             _e3936140315_
                             _hd3936040318_
                             _tl3935940320_
                             _e3936440323_
                             _hd3936340326_
                             _tl3936240328_)
                      (let ((_L40331_ _hd3936340326_)
                            (_L40332_ _hd3935440302_)
                            (_L40333_ _hd3934540278_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40333_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L40333_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L40332_
                                    _self39217_)))
                            (___kont4420644207_ _L40331_ _L40332_ _L40333_)
                            (___match4470344704_
                             _e3933740251_
                             _hd3933640254_
                             _tl3933540256_
                             _e3934040259_
                             _hd3933940262_
                             _tl3933840264_
                             _e3934340267_
                             _hd3934240270_
                             _tl3934140272_
                             _e3934640275_
                             _hd3934540278_
                             _tl3934440280_
                             _e3934940283_
                             _hd3934840286_
                             _tl3934740288_
                             _e3935240291_
                             _hd3935140294_
                             _tl3935040296_
                             _e3935540299_
                             _hd3935440302_
                             _tl3935340304_
                             _e3935840307_
                             _hd3935740310_
                             _tl3935640312_)))))
                   (___match4449744498_
                    (lambda (_e3933740251_
                             _hd3933640254_
                             _tl3933540256_
                             _e3934040259_
                             _hd3933940262_
                             _tl3933840264_
                             _e3934340267_
                             _hd3934240270_
                             _tl3934140272_
                             _e3934640275_
                             _hd3934540278_
                             _tl3934440280_
                             _e3934940283_
                             _hd3934840286_
                             _tl3934740288_
                             _e3935240291_
                             _hd3935140294_
                             _tl3935040296_
                             _e3935540299_
                             _hd3935440302_
                             _tl3935340304_
                             _e3935840307_
                             _hd3935740310_
                             _tl3935640312_
                             _e3936140315_
                             _hd3936040318_
                             _tl3935940320_
                             _e3936440323_
                             _hd3936340326_
                             _tl3936240328_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl3935640312_))
                          (___match4449944500_
                           _e3933740251_
                           _hd3933640254_
                           _tl3933540256_
                           _e3934040259_
                           _hd3933940262_
                           _tl3933840264_
                           _e3934340267_
                           _hd3934240270_
                           _tl3934140272_
                           _e3934640275_
                           _hd3934540278_
                           _tl3934440280_
                           _e3934940283_
                           _hd3934840286_
                           _tl3934740288_
                           _e3935240291_
                           _hd3935140294_
                           _tl3935040296_
                           _e3935540299_
                           _hd3935440302_
                           _tl3935340304_
                           _e3935840307_
                           _hd3935740310_
                           _tl3935640312_
                           _e3936140315_
                           _hd3936040318_
                           _tl3935940320_
                           _e3936440323_
                           _hd3936340326_
                           _tl3936240328_)
                          (___match4457744578_
                           _e3933740251_
                           _hd3933640254_
                           _tl3933540256_
                           _e3934040259_
                           _hd3933940262_
                           _tl3933840264_
                           _e3934340267_
                           _hd3934240270_
                           _tl3934140272_
                           _e3934640275_
                           _hd3934540278_
                           _tl3934440280_
                           _e3934940283_
                           _hd3934840286_
                           _tl3934740288_
                           _e3935240291_
                           _hd3935140294_
                           _tl3935040296_
                           _e3935540299_
                           _hd3935440302_
                           _tl3935340304_
                           _e3935840307_
                           _hd3935740310_
                           _tl3935640312_
                           _e3936140315_
                           _hd3936040318_
                           _tl3935940320_
                           _e3936440323_
                           _hd3936340326_
                           _tl3936240328_))))
                   (___match4448744488_
                    (lambda (_e3933740251_
                             _hd3933640254_
                             _tl3933540256_
                             _e3934040259_
                             _hd3933940262_
                             _tl3933840264_
                             _e3934340267_
                             _hd3934240270_
                             _tl3934140272_
                             _e3934640275_
                             _hd3934540278_
                             _tl3934440280_
                             _e3934940283_
                             _hd3934840286_
                             _tl3934740288_
                             _e3935240291_
                             _hd3935140294_
                             _tl3935040296_
                             _e3935540299_
                             _hd3935440302_
                             _tl3935340304_
                             _e3935840307_
                             _hd3935740310_
                             _tl3935640312_
                             _e3936140315_
                             _hd3936040318_
                             _tl3935940320_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd3936040318_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl3935940320_))
                              (let ((_e3936440323_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl3935940320_))))
                                (let ((_tl3936240328_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3936440323_)))
                                      (_hd3936340326_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3936440323_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl3936240328_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl3935640312_))
                                          (___match4449944500_
                                           _e3933740251_
                                           _hd3933640254_
                                           _tl3933540256_
                                           _e3934040259_
                                           _hd3933940262_
                                           _tl3933840264_
                                           _e3934340267_
                                           _hd3934240270_
                                           _tl3934140272_
                                           _e3934640275_
                                           _hd3934540278_
                                           _tl3934440280_
                                           _e3934940283_
                                           _hd3934840286_
                                           _tl3934740288_
                                           _e3935240291_
                                           _hd3935140294_
                                           _tl3935040296_
                                           _e3935540299_
                                           _hd3935440302_
                                           _tl3935340304_
                                           _e3935840307_
                                           _hd3935740310_
                                           _tl3935640312_
                                           _e3936140315_
                                           _hd3936040318_
                                           _tl3935940320_
                                           _e3936440323_
                                           _hd3936340326_
                                           _tl3936240328_)
                                          (___match4457744578_
                                           _e3933740251_
                                           _hd3933640254_
                                           _tl3933540256_
                                           _e3934040259_
                                           _hd3933940262_
                                           _tl3933840264_
                                           _e3934340267_
                                           _hd3934240270_
                                           _tl3934140272_
                                           _e3934640275_
                                           _hd3934540278_
                                           _tl3934440280_
                                           _e3934940283_
                                           _hd3934840286_
                                           _tl3934740288_
                                           _e3935240291_
                                           _hd3935140294_
                                           _tl3935040296_
                                           _e3935540299_
                                           _hd3935440302_
                                           _tl3935340304_
                                           _e3935840307_
                                           _hd3935740310_
                                           _tl3935640312_
                                           _e3936140315_
                                           _hd3936040318_
                                           _tl3935940320_
                                           _e3936440323_
                                           _hd3936340326_
                                           _tl3936240328_))
                                      (___match4470144702_
                                       _e3933740251_
                                       _hd3933640254_
                                       _tl3933540256_
                                       _e3934040259_
                                       _hd3933940262_
                                       _tl3933840264_
                                       _e3934340267_
                                       _hd3934240270_
                                       _tl3934140272_
                                       _e3934640275_
                                       _hd3934540278_
                                       _tl3934440280_
                                       _e3934940283_
                                       _hd3934840286_
                                       _tl3934740288_
                                       _e3935240291_
                                       _hd3935140294_
                                       _tl3935040296_
                                       _e3935540299_
                                       _hd3935440302_
                                       _tl3935340304_
                                       _e3935840307_
                                       _hd3935740310_
                                       _tl3935640312_))))
                              (___match4470144702_
                               _e3933740251_
                               _hd3933640254_
                               _tl3933540256_
                               _e3934040259_
                               _hd3933940262_
                               _tl3933840264_
                               _e3934340267_
                               _hd3934240270_
                               _tl3934140272_
                               _e3934640275_
                               _hd3934540278_
                               _tl3934440280_
                               _e3934940283_
                               _hd3934840286_
                               _tl3934740288_
                               _e3935240291_
                               _hd3935140294_
                               _tl3935040296_
                               _e3935540299_
                               _hd3935440302_
                               _tl3935340304_
                               _e3935840307_
                               _hd3935740310_
                               _tl3935640312_))
                          (___match4470144702_
                           _e3933740251_
                           _hd3933640254_
                           _tl3933540256_
                           _e3934040259_
                           _hd3933940262_
                           _tl3933840264_
                           _e3934340267_
                           _hd3934240270_
                           _tl3934140272_
                           _e3934640275_
                           _hd3934540278_
                           _tl3934440280_
                           _e3934940283_
                           _hd3934840286_
                           _tl3934740288_
                           _e3935240291_
                           _hd3935140294_
                           _tl3935040296_
                           _e3935540299_
                           _hd3935440302_
                           _tl3935340304_
                           _e3935840307_
                           _hd3935740310_
                           _tl3935640312_))))
                   (___match4441944420_
                    (lambda (_e3928640370_
                             _hd3928540373_
                             _tl3928440375_
                             _e3928940378_
                             _hd3928840381_
                             _tl3928740383_
                             _e3929240386_
                             _hd3929140389_
                             _tl3929040391_
                             _e3929540394_
                             _hd3929440397_
                             _tl3929340399_
                             _e3929840402_
                             _hd3929740405_
                             _tl3929640407_
                             _e3930140410_
                             _hd3930040413_
                             _tl3929940415_
                             _e3930440418_
                             _hd3930340421_
                             _tl3930240423_
                             _e3930740426_
                             _hd3930640429_
                             _tl3930540431_
                             _e3931040434_
                             _hd3930940437_
                             _tl3930840439_
                             _e3931340442_
                             _hd3931240445_
                             _tl3931140447_
                             _e3931640450_
                             _hd3931540453_
                             _tl3931440455_
                             _e3931940458_
                             _hd3931840461_
                             _tl3931740463_
                             _e3932240466_
                             _hd3932140469_
                             _tl3932040471_
                             ___splice4420444205_
                             _target3932340474_
                             _tl3932540476_)
                      (letrec ((_loop3932640479_
                                (lambda (_hd3932440482_ _args3933040484_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd3932440482_))
                                      (let ((_e3932740487_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd3932440482_))))
                                        (let ((_lp-tl3932940492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3932740487_)))
                                              (_lp-hd3932840490_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3932740487_))))
                                          (let ((__tmp46031
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd3932840490_
                                                         _args3933040484_))))
                                            (declare (not safe))
                                            (_loop3932640479_
                                             _lp-tl3932940492_
                                             __tmp46031))))
                                      (let ((_args3933140495_
                                             (reverse _args3933040484_)))
                                        (let ((_L40498_ _args3933140495_)
                                              (_L40499_ _hd3932140469_)
                                              (_L40500_ _hd3931240445_)
                                              (_L40501_ _hd3930340421_)
                                              (_L40502_ _hd3929440397_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40502_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40501_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L40500_
                                                      _self39217_)))
                                              (___kont4420244203_
                                               _L40498_
                                               _L40499_
                                               _L40500_
                                               _L40501_
                                               _L40502_)
                                              (___kont4422244223_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop3932640479_ _target3932340474_ '())))))
                   (___match4437744378_
                    (lambda (_e3928640370_
                             _hd3928540373_
                             _tl3928440375_
                             _e3928940378_
                             _hd3928840381_
                             _tl3928740383_
                             _e3929240386_
                             _hd3929140389_
                             _tl3929040391_
                             _e3929540394_
                             _hd3929440397_
                             _tl3929340399_
                             _e3929840402_
                             _hd3929740405_
                             _tl3929640407_
                             _e3930140410_
                             _hd3930040413_
                             _tl3929940415_
                             _e3930440418_
                             _hd3930340421_
                             _tl3930240423_
                             _e3930740426_
                             _hd3930640429_
                             _tl3930540431_
                             _e3931040434_
                             _hd3930940437_
                             _tl3930840439_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd3930940437_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl3930840439_))
                              (let ((_e3931340442_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl3930840439_))))
                                (let ((_tl3931140447_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3931340442_)))
                                      (_hd3931240445_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3931340442_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl3931140447_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl3930540431_))
                                          (let ((_e3931640450_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl3930540431_))))
                                            (let ((_tl3931440455_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3931640450_)))
                                                  (_hd3931540453_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3931640450_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd3931540453_))
                                                  (let ((_e3931940458_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd3931540453_))))
                                                    (let ((_tl3931740463_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3931940458_)))
                                                          (_hd3931840461_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3931940458_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd3931840461_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd3931840461_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3931740463_))
                          (let ((_e3932240466_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3931740463_))))
                            (let ((_tl3932040471_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3932240466_)))
                                  (_hd3932140469_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3932240466_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl3932040471_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl3931440455_))
                                      (let ((___splice4420444205_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl3931440455_
                                                '0))))
                                        (let ((_tl3932540476_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4420444205_
                                                  '1)))
                                              (_target3932340474_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice4420444205_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null? _tl3932540476_))
                                              (___match4441944420_
                                               _e3928640370_
                                               _hd3928540373_
                                               _tl3928440375_
                                               _e3928940378_
                                               _hd3928840381_
                                               _tl3928740383_
                                               _e3929240386_
                                               _hd3929140389_
                                               _tl3929040391_
                                               _e3929540394_
                                               _hd3929440397_
                                               _tl3929340399_
                                               _e3929840402_
                                               _hd3929740405_
                                               _tl3929640407_
                                               _e3930140410_
                                               _hd3930040413_
                                               _tl3929940415_
                                               _e3930440418_
                                               _hd3930340421_
                                               _tl3930240423_
                                               _e3930740426_
                                               _hd3930640429_
                                               _tl3930540431_
                                               _e3931040434_
                                               _hd3930940437_
                                               _tl3930840439_
                                               _e3931340442_
                                               _hd3931240445_
                                               _tl3931140447_
                                               _e3931640450_
                                               _hd3931540453_
                                               _tl3931440455_
                                               _e3931940458_
                                               _hd3931840461_
                                               _tl3931740463_
                                               _e3932240466_
                                               _hd3932140469_
                                               _tl3932040471_
                                               ___splice4420444205_
                                               _target3932340474_
                                               _tl3932540476_)
                                              (___kont4422244223_))))
                                      (___kont4422244223_))
                                  (___kont4422244223_))))
                          (___kont4422244223_))
                      (___kont4422244223_))
                  (___kont4422244223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4422244223_))))
                                          (___match4470144702_
                                           _e3928640370_
                                           _hd3928540373_
                                           _tl3928440375_
                                           _e3928940378_
                                           _hd3928840381_
                                           _tl3928740383_
                                           _e3929240386_
                                           _hd3929140389_
                                           _tl3929040391_
                                           _e3929540394_
                                           _hd3929440397_
                                           _tl3929340399_
                                           _e3929840402_
                                           _hd3929740405_
                                           _tl3929640407_
                                           _e3930140410_
                                           _hd3930040413_
                                           _tl3929940415_
                                           _e3930440418_
                                           _hd3930340421_
                                           _tl3930240423_
                                           _e3930740426_
                                           _hd3930640429_
                                           _tl3930540431_))
                                      (___match4470144702_
                                       _e3928640370_
                                       _hd3928540373_
                                       _tl3928440375_
                                       _e3928940378_
                                       _hd3928840381_
                                       _tl3928740383_
                                       _e3929240386_
                                       _hd3929140389_
                                       _tl3929040391_
                                       _e3929540394_
                                       _hd3929440397_
                                       _tl3929340399_
                                       _e3929840402_
                                       _hd3929740405_
                                       _tl3929640407_
                                       _e3930140410_
                                       _hd3930040413_
                                       _tl3929940415_
                                       _e3930440418_
                                       _hd3930340421_
                                       _tl3930240423_
                                       _e3930740426_
                                       _hd3930640429_
                                       _tl3930540431_))))
                              (___match4470144702_
                               _e3928640370_
                               _hd3928540373_
                               _tl3928440375_
                               _e3928940378_
                               _hd3928840381_
                               _tl3928740383_
                               _e3929240386_
                               _hd3929140389_
                               _tl3929040391_
                               _e3929540394_
                               _hd3929440397_
                               _tl3929340399_
                               _e3929840402_
                               _hd3929740405_
                               _tl3929640407_
                               _e3930140410_
                               _hd3930040413_
                               _tl3929940415_
                               _e3930440418_
                               _hd3930340421_
                               _tl3930240423_
                               _e3930740426_
                               _hd3930640429_
                               _tl3930540431_))
                          (___match4448744488_
                           _e3928640370_
                           _hd3928540373_
                           _tl3928440375_
                           _e3928940378_
                           _hd3928840381_
                           _tl3928740383_
                           _e3929240386_
                           _hd3929140389_
                           _tl3929040391_
                           _e3929540394_
                           _hd3929440397_
                           _tl3929340399_
                           _e3929840402_
                           _hd3929740405_
                           _tl3929640407_
                           _e3930140410_
                           _hd3930040413_
                           _tl3929940415_
                           _e3930440418_
                           _hd3930340421_
                           _tl3930240423_
                           _e3930740426_
                           _hd3930640429_
                           _tl3930540431_
                           _e3931040434_
                           _hd3930940437_
                           _tl3930840439_))))
                   (___match4430944310_
                    (lambda (_e3924240559_
                             _hd3924140562_
                             _tl3924040564_
                             _e3924540567_
                             _hd3924440570_
                             _tl3924340572_
                             _e3924840575_
                             _hd3924740578_
                             _tl3924640580_
                             _e3925140583_
                             _hd3925040586_
                             _tl3924940588_
                             _e3925440591_
                             _hd3925340594_
                             _tl3925240596_
                             _e3925740599_
                             _hd3925640602_
                             _tl3925540604_
                             _e3926040607_
                             _hd3925940610_
                             _tl3925840612_
                             _e3926340615_
                             _hd3926240618_
                             _tl3926140620_
                             _e3926640623_
                             _hd3926540626_
                             _tl3926440628_
                             _e3926940631_
                             _hd3926840634_
                             _tl3926740636_
                             ___splice4420044201_
                             _target3927040639_
                             _tl3927240641_)
                      (letrec ((_loop3927340644_
                                (lambda (_hd3927140647_ _args3927740649_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd3927140647_))
                                      (let ((_e3927440652_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd3927140647_))))
                                        (let ((_lp-tl3927640657_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e3927440652_)))
                                              (_lp-hd3927540655_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e3927440652_))))
                                          (let ((__tmp46032
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd3927540655_
                                                         _args3927740649_))))
                                            (declare (not safe))
                                            (_loop3927340644_
                                             _lp-tl3927640657_
                                             __tmp46032))))
                                      (let ((_args3927840660_
                                             (reverse _args3927740649_)))
                                        (let ((_L40663_ _args3927840660_)
                                              (_L40664_ _hd3926840634_)
                                              (_L40665_ _hd3925940610_)
                                              (_L40666_ _hd3925040586_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L40666_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L40665_
                                                      _self39217_)))
                                              (___kont4419844199_
                                               _L40663_
                                               _L40664_
                                               _L40665_
                                               _L40666_)
                                              (___match4449744498_
                                               _e3924240559_
                                               _hd3924140562_
                                               _tl3924040564_
                                               _e3924540567_
                                               _hd3924440570_
                                               _tl3924340572_
                                               _e3924840575_
                                               _hd3924740578_
                                               _tl3924640580_
                                               _e3925140583_
                                               _hd3925040586_
                                               _tl3924940588_
                                               _e3925440591_
                                               _hd3925340594_
                                               _tl3925240596_
                                               _e3925740599_
                                               _hd3925640602_
                                               _tl3925540604_
                                               _e3926040607_
                                               _hd3925940610_
                                               _tl3925840612_
                                               _e3926340615_
                                               _hd3926240618_
                                               _tl3926140620_
                                               _e3926640623_
                                               _hd3926540626_
                                               _tl3926440628_
                                               _e3926940631_
                                               _hd3926840634_
                                               _tl3926740636_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop3927340644_ _target3927040639_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx4419644197_))
                  (let ((_e3924240559_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx4419644197_))))
                    (let ((_tl3924040564_
                           (let () (declare (not safe)) (##cdr _e3924240559_)))
                          (_hd3924140562_
                           (let ()
                             (declare (not safe))
                             (##car _e3924240559_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl3924040564_))
                          (let ((_e3924540567_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl3924040564_))))
                            (let ((_tl3924340572_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3924540567_)))
                                  (_hd3924440570_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3924540567_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd3924440570_))
                                  (let ((_e3924840575_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd3924440570_))))
                                    (let ((_tl3924640580_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e3924840575_)))
                                          (_hd3924740578_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e3924840575_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd3924740578_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd3924740578_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl3924640580_))
                                                  (let ((_e3925140583_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl3924640580_))))
                                                    (let ((_tl3924940588_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e3925140583_)))
                                                          (_hd3925040586_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e3925140583_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl3924940588_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl3924340572_))
                      (let ((_e3925440591_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl3924340572_))))
                        (let ((_tl3925240596_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e3925440591_)))
                              (_hd3925340594_
                               (let ()
                                 (declare (not safe))
                                 (##car _e3925440591_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd3925340594_))
                              (let ((_e3925740599_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd3925340594_))))
                                (let ((_tl3925540604_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e3925740599_)))
                                      (_hd3925640602_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e3925740599_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd3925640602_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq? '%#ref _hd3925640602_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair? _tl3925540604_))
                                              (let ((_e3926040607_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl3925540604_))))
                                                (let ((_tl3925840612_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e3926040607_)))
                                                      (_hd3925940610_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e3926040607_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl3925840612_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl3925240596_))
                                                          (let ((_e3926340615_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl3925240596_))))
                    (let ((_tl3926140620_
                           (let () (declare (not safe)) (##cdr _e3926340615_)))
                          (_hd3926240618_
                           (let ()
                             (declare (not safe))
                             (##car _e3926340615_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd3926240618_))
                          (let ((_e3926640623_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd3926240618_))))
                            (let ((_tl3926440628_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e3926640623_)))
                                  (_hd3926540626_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e3926640623_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd3926540626_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd3926540626_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl3926440628_))
                                          (let ((_e3926940631_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e _tl3926440628_))))
                                            (let ((_tl3926740636_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e3926940631_)))
                                                  (_hd3926840634_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e3926940631_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl3926740636_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl3926140620_))
                                                      (let ((___splice4420044201_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl3926140620_ '0))))
                (let ((_tl3927240641_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4420044201_ '1)))
                      (_target3927040639_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice4420044201_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl3927240641_))
                      (___match4430944310_
                       _e3924240559_
                       _hd3924140562_
                       _tl3924040564_
                       _e3924540567_
                       _hd3924440570_
                       _tl3924340572_
                       _e3924840575_
                       _hd3924740578_
                       _tl3924640580_
                       _e3925140583_
                       _hd3925040586_
                       _tl3924940588_
                       _e3925440591_
                       _hd3925340594_
                       _tl3925240596_
                       _e3925740599_
                       _hd3925640602_
                       _tl3925540604_
                       _e3926040607_
                       _hd3925940610_
                       _tl3925840612_
                       _e3926340615_
                       _hd3926240618_
                       _tl3926140620_
                       _e3926640623_
                       _hd3926540626_
                       _tl3926440628_
                       _e3926940631_
                       _hd3926840634_
                       _tl3926740636_
                       ___splice4420044201_
                       _target3927040639_
                       _tl3927240641_)
                      (___match4449744498_
                       _e3924240559_
                       _hd3924140562_
                       _tl3924040564_
                       _e3924540567_
                       _hd3924440570_
                       _tl3924340572_
                       _e3924840575_
                       _hd3924740578_
                       _tl3924640580_
                       _e3925140583_
                       _hd3925040586_
                       _tl3924940588_
                       _e3925440591_
                       _hd3925340594_
                       _tl3925240596_
                       _e3925740599_
                       _hd3925640602_
                       _tl3925540604_
                       _e3926040607_
                       _hd3925940610_
                       _tl3925840612_
                       _e3926340615_
                       _hd3926240618_
                       _tl3926140620_
                       _e3926640623_
                       _hd3926540626_
                       _tl3926440628_
                       _e3926940631_
                       _hd3926840634_
                       _tl3926740636_))))
              (___match4449744498_
               _e3924240559_
               _hd3924140562_
               _tl3924040564_
               _e3924540567_
               _hd3924440570_
               _tl3924340572_
               _e3924840575_
               _hd3924740578_
               _tl3924640580_
               _e3925140583_
               _hd3925040586_
               _tl3924940588_
               _e3925440591_
               _hd3925340594_
               _tl3925240596_
               _e3925740599_
               _hd3925640602_
               _tl3925540604_
               _e3926040607_
               _hd3925940610_
               _tl3925840612_
               _e3926340615_
               _hd3926240618_
               _tl3926140620_
               _e3926640623_
               _hd3926540626_
               _tl3926440628_
               _e3926940631_
               _hd3926840634_
               _tl3926740636_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match4470144702_
                                                   _e3924240559_
                                                   _hd3924140562_
                                                   _tl3924040564_
                                                   _e3924540567_
                                                   _hd3924440570_
                                                   _tl3924340572_
                                                   _e3924840575_
                                                   _hd3924740578_
                                                   _tl3924640580_
                                                   _e3925140583_
                                                   _hd3925040586_
                                                   _tl3924940588_
                                                   _e3925440591_
                                                   _hd3925340594_
                                                   _tl3925240596_
                                                   _e3925740599_
                                                   _hd3925640602_
                                                   _tl3925540604_
                                                   _e3926040607_
                                                   _hd3925940610_
                                                   _tl3925840612_
                                                   _e3926340615_
                                                   _hd3926240618_
                                                   _tl3926140620_))))
                                          (___match4470144702_
                                           _e3924240559_
                                           _hd3924140562_
                                           _tl3924040564_
                                           _e3924540567_
                                           _hd3924440570_
                                           _tl3924340572_
                                           _e3924840575_
                                           _hd3924740578_
                                           _tl3924640580_
                                           _e3925140583_
                                           _hd3925040586_
                                           _tl3924940588_
                                           _e3925440591_
                                           _hd3925340594_
                                           _tl3925240596_
                                           _e3925740599_
                                           _hd3925640602_
                                           _tl3925540604_
                                           _e3926040607_
                                           _hd3925940610_
                                           _tl3925840612_
                                           _e3926340615_
                                           _hd3926240618_
                                           _tl3926140620_))
                                      (___match4437744378_
                                       _e3924240559_
                                       _hd3924140562_
                                       _tl3924040564_
                                       _e3924540567_
                                       _hd3924440570_
                                       _tl3924340572_
                                       _e3924840575_
                                       _hd3924740578_
                                       _tl3924640580_
                                       _e3925140583_
                                       _hd3925040586_
                                       _tl3924940588_
                                       _e3925440591_
                                       _hd3925340594_
                                       _tl3925240596_
                                       _e3925740599_
                                       _hd3925640602_
                                       _tl3925540604_
                                       _e3926040607_
                                       _hd3925940610_
                                       _tl3925840612_
                                       _e3926340615_
                                       _hd3926240618_
                                       _tl3926140620_
                                       _e3926640623_
                                       _hd3926540626_
                                       _tl3926440628_))
                                  (___match4470144702_
                                   _e3924240559_
                                   _hd3924140562_
                                   _tl3924040564_
                                   _e3924540567_
                                   _hd3924440570_
                                   _tl3924340572_
                                   _e3924840575_
                                   _hd3924740578_
                                   _tl3924640580_
                                   _e3925140583_
                                   _hd3925040586_
                                   _tl3924940588_
                                   _e3925440591_
                                   _hd3925340594_
                                   _tl3925240596_
                                   _e3925740599_
                                   _hd3925640602_
                                   _tl3925540604_
                                   _e3926040607_
                                   _hd3925940610_
                                   _tl3925840612_
                                   _e3926340615_
                                   _hd3926240618_
                                   _tl3926140620_))))
                          (___match4470144702_
                           _e3924240559_
                           _hd3924140562_
                           _tl3924040564_
                           _e3924540567_
                           _hd3924440570_
                           _tl3924340572_
                           _e3924840575_
                           _hd3924740578_
                           _tl3924640580_
                           _e3925140583_
                           _hd3925040586_
                           _tl3924940588_
                           _e3925440591_
                           _hd3925340594_
                           _tl3925240596_
                           _e3925740599_
                           _hd3925640602_
                           _tl3925540604_
                           _e3926040607_
                           _hd3925940610_
                           _tl3925840612_
                           _e3926340615_
                           _hd3926240618_
                           _tl3926140620_))))
                  (___match4463944640_
                   _e3924240559_
                   _hd3924140562_
                   _tl3924040564_
                   _e3924540567_
                   _hd3924440570_
                   _tl3924340572_
                   _e3924840575_
                   _hd3924740578_
                   _tl3924640580_
                   _e3925140583_
                   _hd3925040586_
                   _tl3924940588_
                   _e3925440591_
                   _hd3925340594_
                   _tl3925240596_
                   _e3925740599_
                   _hd3925640602_
                   _tl3925540604_
                   _e3926040607_
                   _hd3925940610_
                   _tl3925840612_))
              (___kont4422244223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont4422244223_))
                                          (___kont4422244223_))
                                      (___kont4422244223_))))
                              (___kont4422244223_))))
                      (___kont4422244223_))
                  (___kont4422244223_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont4422244223_))
                                              (___kont4422244223_))
                                          (___kont4422244223_))))
                                  (___kont4422244223_))))
                          (___kont4422244223_))))
                  (___kont4422244223_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx37643_
               _self37644_
               _$t37645_
               _methods37646_
               _slots37647_
               _class-check37648_
               _struct-check37649_
               _struct-assert37650_)
        (letrec ((_force-e37652_
                  (lambda (_what39214_)
                    (let ((__tmp46033
                           (let ((__tmp46037
                                  (let ((__tmp46038
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp46038)))
                                 (__tmp46034
                                  (let ((__tmp46035
                                         (let ((__tmp46036
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _what39214_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp46036))))
                                    (declare (not safe))
                                    (cons __tmp46035 '()))))
                             (declare (not safe))
                             (cons __tmp46037 __tmp46034))))
                      (declare (not safe))
                      (cons '%#call __tmp46033)))))
          (let* ((___stx4493644937_ _stx37643_)
                 (_g3766437982_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax"
                       ___stx4493644937_)))))
            (let ((___kont4493844939_
                   (lambda (_L39160_ _L39161_ _L39162_ _L39163_)
                     (let ((_$method39208_
                            (let ((__tmp46039
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L39161_))))
                              (declare (not safe))
                              (table-ref _methods37646_ __tmp46039)))
                           (_args39209_
                            (map (lambda (_g3919639198_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e
                                      _g3919639198_
                                      _self37644_
                                      _$t37645_
                                      _methods37646_
                                      _slots37647_
                                      _class-check37648_
                                      _struct-check37649_
                                      _struct-assert37650_)))
                                 (let ((__tmp46040
                                        (lambda (_g3920039203_ _g3920139205_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3920039203_
                                                  _g3920139205_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp46040 '() _L39160_)))))
                       (let ((__tmp46041
                              (let ((__tmp46042
                                     (let ((__tmp46046
                                            (let ()
                                              (declare (not safe))
                                              (_force-e37652_ _$method39208_)))
                                           (__tmp46043
                                            (let ((__tmp46044
                                                   (let ((__tmp46045
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp46045))))
                                              (declare (not safe))
                                              (cons __tmp46044 _args39209_))))
                                       (declare (not safe))
                                       (cons __tmp46046 __tmp46043))))
                                (declare (not safe))
                                (cons '%#call __tmp46042))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46041 _stx37643_)))))
                  (___kont4494244943_
                   (lambda (_L38992_ _L38993_ _L38994_ _L38995_ _L38996_)
                     (let ((_$method39048_
                            (let ((__tmp46047
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L38993_))))
                              (declare (not safe))
                              (table-ref _methods37646_ __tmp46047)))
                           (_args39049_
                            (map (lambda (_g3903639038_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e
                                      _g3903639038_
                                      _self37644_
                                      _$t37645_
                                      _methods37646_
                                      _slots37647_
                                      _class-check37648_
                                      _struct-check37649_
                                      _struct-assert37650_)))
                                 (let ((__tmp46048
                                        (lambda (_g3904039043_ _g3904139045_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g3904039043_
                                                  _g3904139045_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp46048 '() _L38992_)))))
                       (let ((__tmp46049
                              (let ((__tmp46050
                                     (let ((__tmp46056
                                            (let ((__tmp46057
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46057)))
                                           (__tmp46051
                                            (let ((__tmp46055
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e37652_
                                                      _$method39048_)))
                                                  (__tmp46052
                                                   (let ((__tmp46053
                                                          (let ((__tmp46054
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37644_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46054))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46053
                                                           _args39049_))))
                                              (declare (not safe))
                                              (cons __tmp46055 __tmp46052))))
                                       (declare (not safe))
                                       (cons __tmp46056 __tmp46051))))
                                (declare (not safe))
                                (cons '%#call __tmp46050))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46049 _stx37643_)))))
                  (___kont4494644947_
                   (lambda (_L38823_ _L38824_ _L38825_)
                     (let* ((_$field38857_
                             (let ((__tmp46058
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L38823_))))
                               (declare (not safe))
                               (table-ref _slots37647_ __tmp46058)))
                            (__tmp46059
                             (let ((__tmp46060
                                    (let ((__tmp46067
                                           (let ((__tmp46068
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$t37645_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp46068)))
                                          (__tmp46061
                                           (let ((__tmp46065
                                                  (let ((__tmp46066
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field38857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp46066)))
                                                 (__tmp46062
                                                  (let ((__tmp46063
                                                         (let ((__tmp46064
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self37644_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp46064))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp46063 '()))))
                                             (declare (not safe))
                                             (cons __tmp46065 __tmp46062))))
                                      (declare (not safe))
                                      (cons __tmp46067 __tmp46061))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp46060))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp46059 _stx37643_))))
                  (___kont4494844949_
                   (lambda (_L38697_ _L38698_ _L38699_ _L38700_)
                     (let ((_$field38735_
                            (let ((__tmp46069
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L38698_))))
                              (declare (not safe))
                              (table-ref _slots37647_ __tmp46069)))
                           (_expr38736_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e
                               _L38697_
                               _self37644_
                               _$t37645_
                               _methods37646_
                               _slots37647_
                               _class-check37648_
                               _struct-check37649_
                               _struct-assert37650_))))
                       (let ((__tmp46070
                              (let ((__tmp46071
                                     (let ((__tmp46079
                                            (let ((__tmp46080
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37645_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46080)))
                                           (__tmp46072
                                            (let ((__tmp46077
                                                   (let ((__tmp46078
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38735_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46078)))
                                                  (__tmp46073
                                                   (let ((__tmp46075
                                                          (let ((__tmp46076
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37644_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46076)))
                 (__tmp46074
                  (let () (declare (not safe)) (cons _expr38736_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46075
                                                           __tmp46074))))
                                              (declare (not safe))
                                              (cons __tmp46077 __tmp46073))))
                                       (declare (not safe))
                                       (cons __tmp46079 __tmp46072))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp46071))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46070 _stx37643_)))))
                  (___kont4495044951_
                   (lambda (_L38576_ _L38577_)
                     (let* ((_slot38599_
                             (##structure-ref
                              (let ((__tmp46081
                                     (let ()
                                       (declare (not safe))
                                       (gxc#identifier-symbol _L38577_))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp46081))
                              '2
                              gxc#!class-getf::t
                              '#f))
                            (_$field38601_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots37647_ _slot38599_))))
                       (let ((__tmp46082
                              (let ((__tmp46083
                                     (let ((__tmp46090
                                            (let ((__tmp46091
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37645_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46091)))
                                           (__tmp46084
                                            (let ((__tmp46088
                                                   (let ((__tmp46089
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46089)))
                                                  (__tmp46085
                                                   (let ((__tmp46086
                                                          (let ((__tmp46087
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37644_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46087))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46086 '()))))
                                              (declare (not safe))
                                              (cons __tmp46088 __tmp46085))))
                                       (declare (not safe))
                                       (cons __tmp46090 __tmp46084))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-ref __tmp46083))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46082 _stx37643_)))))
                  (___kont4495244953_
                   (lambda (_L38481_ _L38482_ _L38483_)
                     (let* ((_slot38508_
                             (##structure-ref
                              (let ((__tmp46092
                                     (let ((__tmp46093
                                            (let ()
                                              (declare (not safe))
                                              (gx#datum->syntax__0
                                               '#f
                                               'getf))))
                                       (declare (not safe))
                                       (gxc#identifier-symbol __tmp46093))))
                                (declare (not safe))
                                (gxc#optimizer-resolve-type __tmp46092))
                              '2
                              gxc#!class-setf::t
                              '#f))
                            (_$field38510_
                             (let ()
                               (declare (not safe))
                               (table-ref _slots37647_ _slot38508_)))
                            (_expr38512_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e
                                _L38481_
                                _self37644_
                                _$t37645_
                                _methods37646_
                                _slots37647_
                                _class-check37648_
                                _struct-check37649_
                                _struct-assert37650_))))
                       (let ((__tmp46094
                              (let ((__tmp46095
                                     (let ((__tmp46103
                                            (let ((__tmp46104
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$t37645_ '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46104)))
                                           (__tmp46096
                                            (let ((__tmp46101
                                                   (let ((__tmp46102
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field38510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46102)))
                                                  (__tmp46097
                                                   (let ((__tmp46099
                                                          (let ((__tmp46100
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _self37644_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46100)))
                 (__tmp46098
                  (let () (declare (not safe)) (cons _expr38512_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46099
                                                           __tmp46098))))
                                              (declare (not safe))
                                              (cons __tmp46101 __tmp46097))))
                                       (declare (not safe))
                                       (cons __tmp46103 __tmp46096))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp46095))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp46094 _stx37643_)))))
                  (___kont4495444955_
                   (lambda (_L38389_ _L38390_)
                     (let ((__tmp46105
                            (let ((__tmp46106
                                   (let ((__tmp46107
                                          (##structure-ref
                                           (let ((__tmp46108
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#identifier-symbol
                                                     _L38390_))))
                                             (declare (not safe))
                                             (gxc#optimizer-resolve-type
                                              __tmp46108))
                                           '1
                                           gxc#!type::t
                                           '#f)))
                                     (declare (not safe))
                                     (table-ref
                                      _class-check37648_
                                      __tmp46107))))
                              (declare (not safe))
                              (cons __tmp46106 '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46105))))
                  (___kont4495644957_
                   (lambda (_L38298_ _L38299_)
                     (let ((_t38321_
                            (##structure-ref
                             (let ((__tmp46109
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L38299_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp46109))
                             '1
                             gxc#!type::t
                             '#f)))
                       (if (let ()
                             (declare (not safe))
                             (table-ref _struct-assert37650_ _t38321_ '#f))
                           '(%#quote #t)
                           (let ((_$e38323_
                                  (let ()
                                    (declare (not safe))
                                    (table-ref
                                     _struct-check37649_
                                     _t38321_
                                     '#f))))
                             (if _$e38323_
                                 ((lambda (_checkq38326_)
                                    (let ((__tmp46110
                                           (let ()
                                             (declare (not safe))
                                             (cons _checkq38326_ '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp46110)))
                                  _$e38323_)
                                 _stx37643_))))))
                  (___kont4495844959_
                   (lambda (_L38183_ _L38184_)
                     (let* ((_getf38217_
                             (let ((__tmp46111
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L38184_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp46111)))
                            (_t38219_
                             (##structure-ref
                              _getf38217_
                              '1
                              gxc#!type::t
                              '#f)))
                       (if (##structure-ref
                            _getf38217_
                            '3
                            gxc#!struct-getf::t
                            '#f)
                           _stx37643_
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert37650_ _t38219_ '#f))
                               (let* ((_struct-t38222_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t38219_)))
                                      (_off38224_
                                       (fx+ (##structure-ref
                                             _getf38217_
                                             '2
                                             gxc#!struct-getf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t38222_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp46140
                                        (let ((__tmp46147
                                               (let ((__tmp46148
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t38219_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp46148)))
                                              (__tmp46141
                                               (let ((__tmp46145
                                                      (let ((__tmp46146
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off38224_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp46146)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp46142
                                                      (let ((__tmp46143
                                                             (let ((__tmp46144
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self37644_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46144))))
                (declare (not safe))
                (cons __tmp46143 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46145
                                                       __tmp46142))))
                                          (declare (not safe))
                                          (cons __tmp46147 __tmp46141))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-ref __tmp46140)))
                               (let ((_$e38227_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check37649_
                                         _t38219_
                                         '#f))))
                                 (if _$e38227_
                                     ((lambda (_checkq38230_)
                                        (let* ((_struct-t38232_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t38219_)))
                                               (_off38234_
                                                (fx+ (##structure-ref
                                                      _getf38217_
                                                      '2
                                                      gxc#!struct-getf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t38232_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp46112
                                                 (let ((__tmp46138
                                                        (let ((__tmp46139
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq38230_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp46139)))
               (__tmp46113
                (let ((__tmp46128
                       (let ((__tmp46129
                              (let ((__tmp46136
                                     (let ((__tmp46137
                                            (let ()
                                              (declare (not safe))
                                              (cons _t38219_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp46137)))
                                    (__tmp46130
                                     (let ((__tmp46134
                                            (let ((__tmp46135
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off38234_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp46135)))
                                           (__tmp46131
                                            (let ((__tmp46132
                                                   (let ((__tmp46133
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp46133))))
                                              (declare (not safe))
                                              (cons __tmp46132 '()))))
                                       (declare (not safe))
                                       (cons __tmp46134 __tmp46131))))
                                (declare (not safe))
                                (cons __tmp46136 __tmp46130))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-ref __tmp46129)))
                      (__tmp46114
                       (let ((__tmp46115
                              (let ((__tmp46116
                                     (let ((__tmp46126
                                            (let ((__tmp46127
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46127)))
                                           (__tmp46117
                                            (let ((__tmp46124
                                                   (let ((__tmp46125
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp46125)))
                                                  (__tmp46118
                                                   (let ((__tmp46122
                                                          (let ((__tmp46123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t38219_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46123)))
                 (__tmp46119
                  (let ((__tmp46120
                         (let ((__tmp46121
                                (let ()
                                  (declare (not safe))
                                  (cons _self37644_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp46121))))
                    (declare (not safe))
                    (cons __tmp46120 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46122
                                                           __tmp46119))))
                                              (declare (not safe))
                                              (cons __tmp46124 __tmp46118))))
                                       (declare (not safe))
                                       (cons __tmp46126 __tmp46117))))
                                (declare (not safe))
                                (cons '%#call __tmp46116))))
                         (declare (not safe))
                         (cons __tmp46115 '()))))
                  (declare (not safe))
                  (cons __tmp46128 __tmp46114))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp46138
                                                         __tmp46113))))
                                            (declare (not safe))
                                            (cons '%#if __tmp46112))))
                                      _$e38227_)
                                     _stx37643_)))))))
                  (___kont4496044961_
                   (lambda (_L38058_ _L38059_ _L38060_)
                     (let* ((_setf38100_
                             (let ((__tmp46149
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L38060_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp46149)))
                            (_t38102_
                             (##structure-ref _setf38100_ '1 gxc#!type::t '#f))
                            (_expr38104_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e
                                _L38058_
                                _self37644_
                                _$t37645_
                                _methods37646_
                                _slots37647_
                                _class-check37648_
                                _struct-check37649_
                                _struct-assert37650_))))
                       (if (##structure-ref
                            _setf38100_
                            '3
                            gxc#!struct-setf::t
                            '#f)
                           (let ((__tmp46199
                                  (let ((__tmp46205
                                         (let ((__tmp46208
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   '%#ref)))
                                               (__tmp46206
                                                (let ((__tmp46207
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'setf))))
                                                  (declare (not safe))
                                                  (cons __tmp46207 '()))))
                                           (declare (not safe))
                                           (cons __tmp46208 __tmp46206)))
                                        (__tmp46200
                                         (let ((__tmp46202
                                                (let ((__tmp46204
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#ref)))
                                                      (__tmp46203
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L38059_ '()))))
                                                  (declare (not safe))
                                                  (cons __tmp46204
                                                        __tmp46203)))
                                               (__tmp46201
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _expr38104_ '()))))
                                           (declare (not safe))
                                           (cons __tmp46202 __tmp46201))))
                                    (declare (not safe))
                                    (cons __tmp46205 __tmp46200))))
                             (declare (not safe))
                             (cons '%#call __tmp46199))
                           (if (let ()
                                 (declare (not safe))
                                 (table-ref _struct-assert37650_ _t38102_ '#f))
                               (let* ((_struct-t38107_
                                       (let ()
                                         (declare (not safe))
                                         (gxc#optimizer-resolve-type
                                          _t38102_)))
                                      (_off38109_
                                       (fx+ (##structure-ref
                                             _setf38100_
                                             '2
                                             gxc#!struct-setf::t
                                             '#f)
                                            (##structure-ref
                                             _struct-t38107_
                                             '4
                                             gxc#!struct-type::t
                                             '#f)
                                            '1)))
                                 (let ((__tmp46189
                                        (let ((__tmp46197
                                               (let ((__tmp46198
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _t38102_ '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp46198)))
                                              (__tmp46190
                                               (let ((__tmp46195
                                                      (let ((__tmp46196
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _off38109_ '()))))
                (declare (not safe))
                (cons '%#quote __tmp46196)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp46191
                                                      (let ((__tmp46193
                                                             (let ((__tmp46194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _self37644_ '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp46194)))
                    (__tmp46192
                     (let () (declare (not safe)) (cons _expr38104_ '()))))
                (declare (not safe))
                (cons __tmp46193 __tmp46192))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp46195
                                                       __tmp46191))))
                                          (declare (not safe))
                                          (cons __tmp46197 __tmp46190))))
                                   (declare (not safe))
                                   (cons '%#struct-unchecked-set! __tmp46189)))
                               (let ((_$e38112_
                                      (let ()
                                        (declare (not safe))
                                        (table-ref
                                         _struct-check37649_
                                         _t38102_
                                         '#f))))
                                 (if _$e38112_
                                     ((lambda (_checkq38115_)
                                        (let* ((_struct-t38117_
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#optimizer-resolve-type
                                                   _t38102_)))
                                               (_off38119_
                                                (fx+ (##structure-ref
                                                      _setf38100_
                                                      '2
                                                      gxc#!struct-setf::t
                                                      '#f)
                                                     (##structure-ref
                                                      _struct-t38117_
                                                      '4
                                                      gxc#!struct-type::t
                                                      '#f)
                                                     '1)))
                                          (let ((__tmp46160
                                                 (let ((__tmp46187
                                                        (let ((__tmp46188
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _checkq38115_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp46188)))
               (__tmp46161
                (let ((__tmp46176
                       (let ((__tmp46177
                              (let ((__tmp46185
                                     (let ((__tmp46186
                                            (let ()
                                              (declare (not safe))
                                              (cons _t38102_ '()))))
                                       (declare (not safe))
                                       (cons '%#ref __tmp46186)))
                                    (__tmp46178
                                     (let ((__tmp46183
                                            (let ((__tmp46184
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _off38119_ '()))))
                                              (declare (not safe))
                                              (cons '%#quote __tmp46184)))
                                           (__tmp46179
                                            (let ((__tmp46181
                                                   (let ((__tmp46182
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self37644_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref __tmp46182)))
                                                  (__tmp46180
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _expr38104_ '()))))
                                              (declare (not safe))
                                              (cons __tmp46181 __tmp46180))))
                                       (declare (not safe))
                                       (cons __tmp46183 __tmp46179))))
                                (declare (not safe))
                                (cons __tmp46185 __tmp46178))))
                         (declare (not safe))
                         (cons '%#struct-unchecked-set! __tmp46177)))
                      (__tmp46162
                       (let ((__tmp46163
                              (let ((__tmp46164
                                     (let ((__tmp46174
                                            (let ((__tmp46175
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'error '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp46175)))
                                           (__tmp46165
                                            (let ((__tmp46172
                                                   (let ((__tmp46173
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons '"Type error; concrete type is not a subclass of expected type"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#quote
                                                           __tmp46173)))
                                                  (__tmp46166
                                                   (let ((__tmp46170
                                                          (let ((__tmp46171
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (cons _t38102_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp46171)))
                 (__tmp46167
                  (let ((__tmp46168
                         (let ((__tmp46169
                                (let ()
                                  (declare (not safe))
                                  (cons _self37644_ '()))))
                           (declare (not safe))
                           (cons '%#ref __tmp46169))))
                    (declare (not safe))
                    (cons __tmp46168 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46170
                                                           __tmp46167))))
                                              (declare (not safe))
                                              (cons __tmp46172 __tmp46166))))
                                       (declare (not safe))
                                       (cons __tmp46174 __tmp46165))))
                                (declare (not safe))
                                (cons '%#call __tmp46164))))
                         (declare (not safe))
                         (cons __tmp46163 '()))))
                  (declare (not safe))
                  (cons __tmp46176 __tmp46162))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp46187
                                                         __tmp46161))))
                                            (declare (not safe))
                                            (cons '%#if __tmp46160))))
                                      _$e38112_)
                                     (let ((__tmp46150
                                            (let ((__tmp46156
                                                   (let ((__tmp46159
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref)))
                                                         (__tmp46157
                                                          (let ((__tmp46158
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f 'setf))))
                    (declare (not safe))
                    (cons __tmp46158 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46159
                                                           __tmp46157)))
                                                  (__tmp46151
                                                   (let ((__tmp46153
                                                          (let ((__tmp46155
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '%#ref)))
                        (__tmp46154
                         (let () (declare (not safe)) (cons _L38059_ '()))))
                    (declare (not safe))
                    (cons __tmp46155 __tmp46154)))
                 (__tmp46152
                  (let () (declare (not safe)) (cons _expr38104_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp46153
                                                           __tmp46152))))
                                              (declare (not safe))
                                              (cons __tmp46156 __tmp46151))))
                                       (declare (not safe))
                                       (cons '%#call __tmp46150)))))))))
                  (___kont4496244963_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx37643_
                        _self37644_
                        _$t37645_
                        _methods37646_
                        _slots37647_
                        _class-check37648_
                        _struct-check37649_
                        _struct-assert37650_)))))
              (let* ((___match4567345674_
                      (lambda (_e3795637994_
                               _hd3795537997_
                               _tl3795437999_
                               _e3795938002_
                               _hd3795838005_
                               _tl3795738007_
                               _e3796238010_
                               _hd3796138013_
                               _tl3796038015_
                               _e3796538018_
                               _hd3796438021_
                               _tl3796338023_
                               _e3796838026_
                               _hd3796738029_
                               _tl3796638031_
                               _e3797138034_
                               _hd3797038037_
                               _tl3796938039_
                               _e3797438042_
                               _hd3797338045_
                               _tl3797238047_
                               _e3797738050_
                               _hd3797638053_
                               _tl3797538055_)
                        (let ((_L38058_ _hd3797638053_)
                              (_L38059_ _hd3797338045_)
                              (_L38060_ _hd3796438021_))
                          (if (if (let ((__tmp46211
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L38059_
                                            _self37644_))))
                                    (declare (not safe))
                                    (not __tmp46211))
                                  '#f
                                  (let ((_$e38089_
                                         (let ((__tmp46209
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L38060_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp46209))))
                                    (and _$e38089_
                                         ((lambda (_t38092_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t38092_
                                                    'gxc#!struct-setf::t))
                                                 (let ((_struct-t3809338095_
                                                        (let ((__tmp46210
                                                               (##structure-ref
                                                                _t38092_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp46210))))
                                                   (and _struct-t3809338095_
                                                        (let ((_struct-t38098_
                                                               _struct-t3809338095_))
                                                          (##structure-ref
                                                           _struct-t38098_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e38089_))))
                              (___kont4496044961_ _L38058_ _L38059_ _L38060_)
                              (___kont4496244963_)))))
                     (___match4566545666_
                      (lambda (_e3795637994_
                               _hd3795537997_
                               _tl3795437999_
                               _e3795938002_
                               _hd3795838005_
                               _tl3795738007_
                               _e3796238010_
                               _hd3796138013_
                               _tl3796038015_
                               _e3796538018_
                               _hd3796438021_
                               _tl3796338023_
                               _e3796838026_
                               _hd3796738029_
                               _tl3796638031_
                               _e3797138034_
                               _hd3797038037_
                               _tl3796938039_
                               _e3797438042_
                               _hd3797338045_
                               _tl3797238047_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3796638031_))
                            (let ((_e3797738050_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3796638031_))))
                              (let ((_tl3797538055_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3797738050_)))
                                    (_hd3797638053_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3797738050_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3797538055_))
                                    (___match4567345674_
                                     _e3795637994_
                                     _hd3795537997_
                                     _tl3795437999_
                                     _e3795938002_
                                     _hd3795838005_
                                     _tl3795738007_
                                     _e3796238010_
                                     _hd3796138013_
                                     _tl3796038015_
                                     _e3796538018_
                                     _hd3796438021_
                                     _tl3796338023_
                                     _e3796838026_
                                     _hd3796738029_
                                     _tl3796638031_
                                     _e3797138034_
                                     _hd3797038037_
                                     _tl3796938039_
                                     _e3797438042_
                                     _hd3797338045_
                                     _tl3797238047_
                                     _e3797738050_
                                     _hd3797638053_
                                     _tl3797538055_)
                                    (___kont4496244963_))))
                            (___kont4496244963_))))
                     (___match4561145612_
                      (lambda (_e3793238127_
                               _hd3793138130_
                               _tl3793038132_
                               _e3793538135_
                               _hd3793438138_
                               _tl3793338140_
                               _e3793838143_
                               _hd3793738146_
                               _tl3793638148_
                               _e3794138151_
                               _hd3794038154_
                               _tl3793938156_
                               _e3794438159_
                               _hd3794338162_
                               _tl3794238164_
                               _e3794738167_
                               _hd3794638170_
                               _tl3794538172_
                               _e3795038175_
                               _hd3794938178_
                               _tl3794838180_)
                        (let ((_L38183_ _hd3794938178_)
                              (_L38184_ _hd3794038154_))
                          (if (if (let ((__tmp46214
                                         (let ()
                                           (declare (not safe))
                                           (gx#free-identifier=?
                                            _L38183_
                                            _self37644_))))
                                    (declare (not safe))
                                    (not __tmp46214))
                                  '#f
                                  (let ((_$e38206_
                                         (let ((__tmp46212
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#identifier-symbol
                                                   _L38184_))))
                                           (declare (not safe))
                                           (gxc#optimizer-resolve-type
                                            __tmp46212))))
                                    (and _$e38206_
                                         ((lambda (_t38209_)
                                            (and (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _t38209_
                                                    'gxc#!struct-getf::t))
                                                 (let ((_struct-t3821038212_
                                                        (let ((__tmp46213
                                                               (##structure-ref
                                                                _t38209_
                                                                '1
                                                                gxc#!type::t
                                                                '#f)))
                                                          (declare (not safe))
                                                          (gxc#optimizer-resolve-type
                                                           __tmp46213))))
                                                   (and _struct-t3821038212_
                                                        (let ((_struct-t38215_
                                                               _struct-t3821038212_))
                                                          (##structure-ref
                                                           _struct-t38215_
                                                           '4
                                                           gxc#!struct-type::t
                                                           '#f))))))
                                          _$e38206_))))
                              (___kont4495844959_ _L38183_ _L38184_)
                              (___kont4496244963_)))))
                     (___match4555545556_
                      (lambda (_e3790938242_
                               _hd3790838245_
                               _tl3790738247_
                               _e3791238250_
                               _hd3791138253_
                               _tl3791038255_
                               _e3791538258_
                               _hd3791438261_
                               _tl3791338263_
                               _e3791838266_
                               _hd3791738269_
                               _tl3791638271_
                               _e3792138274_
                               _hd3792038277_
                               _tl3791938279_
                               _e3792438282_
                               _hd3792338285_
                               _tl3792238287_
                               _e3792738290_
                               _hd3792638293_
                               _tl3792538295_)
                        (let ((_L38298_ _hd3792638293_)
                              (_L38299_ _hd3791738269_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38298_
                                      _self37644_))
                                   (let ((__tmp46215
                                          (let ((__tmp46216
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38299_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46216))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46215
                                      'gxc#!struct-pred::t)))
                              (___kont4495644957_ _L38298_ _L38299_)
                              (___match4561145612_
                               _e3790938242_
                               _hd3790838245_
                               _tl3790738247_
                               _e3791238250_
                               _hd3791138253_
                               _tl3791038255_
                               _e3791538258_
                               _hd3791438261_
                               _tl3791338263_
                               _e3791838266_
                               _hd3791738269_
                               _tl3791638271_
                               _e3792138274_
                               _hd3792038277_
                               _tl3791938279_
                               _e3792438282_
                               _hd3792338285_
                               _tl3792238287_
                               _e3792738290_
                               _hd3792638293_
                               _tl3792538295_)))))
                     (___match4549945500_
                      (lambda (_e3788638333_
                               _hd3788538336_
                               _tl3788438338_
                               _e3788938341_
                               _hd3788838344_
                               _tl3788738346_
                               _e3789238349_
                               _hd3789138352_
                               _tl3789038354_
                               _e3789538357_
                               _hd3789438360_
                               _tl3789338362_
                               _e3789838365_
                               _hd3789738368_
                               _tl3789638370_
                               _e3790138373_
                               _hd3790038376_
                               _tl3789938378_
                               _e3790438381_
                               _hd3790338384_
                               _tl3790238386_)
                        (let ((_L38389_ _hd3790338384_)
                              (_L38390_ _hd3789438360_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38389_
                                      _self37644_))
                                   (let ((__tmp46217
                                          (let ((__tmp46218
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38390_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46218))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46217
                                      'gxc#!class-pred::t)))
                              (___kont4495444955_ _L38389_ _L38390_)
                              (___match4555545556_
                               _e3788638333_
                               _hd3788538336_
                               _tl3788438338_
                               _e3788938341_
                               _hd3788838344_
                               _tl3788738346_
                               _e3789238349_
                               _hd3789138352_
                               _tl3789038354_
                               _e3789538357_
                               _hd3789438360_
                               _tl3789338362_
                               _e3789838365_
                               _hd3789738368_
                               _tl3789638370_
                               _e3790138373_
                               _hd3790038376_
                               _tl3789938378_
                               _e3790438381_
                               _hd3790338384_
                               _tl3790238386_)))))
                     (___match4549745498_
                      (lambda (_e3788638333_
                               _hd3788538336_
                               _tl3788438338_
                               _e3788938341_
                               _hd3788838344_
                               _tl3788738346_
                               _e3789238349_
                               _hd3789138352_
                               _tl3789038354_
                               _e3789538357_
                               _hd3789438360_
                               _tl3789338362_
                               _e3789838365_
                               _hd3789738368_
                               _tl3789638370_
                               _e3790138373_
                               _hd3790038376_
                               _tl3789938378_
                               _e3790438381_
                               _hd3790338384_
                               _tl3790238386_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3789638370_))
                            (___match4549945500_
                             _e3788638333_
                             _hd3788538336_
                             _tl3788438338_
                             _e3788938341_
                             _hd3788838344_
                             _tl3788738346_
                             _e3789238349_
                             _hd3789138352_
                             _tl3789038354_
                             _e3789538357_
                             _hd3789438360_
                             _tl3789338362_
                             _e3789838365_
                             _hd3789738368_
                             _tl3789638370_
                             _e3790138373_
                             _hd3790038376_
                             _tl3789938378_
                             _e3790438381_
                             _hd3790338384_
                             _tl3790238386_)
                            (___match4566545666_
                             _e3788638333_
                             _hd3788538336_
                             _tl3788438338_
                             _e3788938341_
                             _hd3788838344_
                             _tl3788738346_
                             _e3789238349_
                             _hd3789138352_
                             _tl3789038354_
                             _e3789538357_
                             _hd3789438360_
                             _tl3789338362_
                             _e3789838365_
                             _hd3789738368_
                             _tl3789638370_
                             _e3790138373_
                             _hd3790038376_
                             _tl3789938378_
                             _e3790438381_
                             _hd3790338384_
                             _tl3790238386_))))
                     (___match4544345444_
                      (lambda (_e3786038417_
                               _hd3785938420_
                               _tl3785838422_
                               _e3786338425_
                               _hd3786238428_
                               _tl3786138430_
                               _e3786638433_
                               _hd3786538436_
                               _tl3786438438_
                               _e3786938441_
                               _hd3786838444_
                               _tl3786738446_
                               _e3787238449_
                               _hd3787138452_
                               _tl3787038454_
                               _e3787538457_
                               _hd3787438460_
                               _tl3787338462_
                               _e3787838465_
                               _hd3787738468_
                               _tl3787638470_
                               _e3788138473_
                               _hd3788038476_
                               _tl3787938478_)
                        (let ((_L38481_ _hd3788038476_)
                              (_L38482_ _hd3787738468_)
                              (_L38483_ _hd3786838444_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38482_
                                      _self37644_))
                                   (let ((__tmp46219
                                          (let ((__tmp46220
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38483_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46220))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46219
                                      'gxc#!class-setf::t)))
                              (___kont4495244953_ _L38481_ _L38482_ _L38483_)
                              (___match4567345674_
                               _e3786038417_
                               _hd3785938420_
                               _tl3785838422_
                               _e3786338425_
                               _hd3786238428_
                               _tl3786138430_
                               _e3786638433_
                               _hd3786538436_
                               _tl3786438438_
                               _e3786938441_
                               _hd3786838444_
                               _tl3786738446_
                               _e3787238449_
                               _hd3787138452_
                               _tl3787038454_
                               _e3787538457_
                               _hd3787438460_
                               _tl3787338462_
                               _e3787838465_
                               _hd3787738468_
                               _tl3787638470_
                               _e3788138473_
                               _hd3788038476_
                               _tl3787938478_)))))
                     (___match4544145442_
                      (lambda (_e3786038417_
                               _hd3785938420_
                               _tl3785838422_
                               _e3786338425_
                               _hd3786238428_
                               _tl3786138430_
                               _e3786638433_
                               _hd3786538436_
                               _tl3786438438_
                               _e3786938441_
                               _hd3786838444_
                               _tl3786738446_
                               _e3787238449_
                               _hd3787138452_
                               _tl3787038454_
                               _e3787538457_
                               _hd3787438460_
                               _tl3787338462_
                               _e3787838465_
                               _hd3787738468_
                               _tl3787638470_
                               _e3788138473_
                               _hd3788038476_
                               _tl3787938478_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3787938478_))
                            (___match4544345444_
                             _e3786038417_
                             _hd3785938420_
                             _tl3785838422_
                             _e3786338425_
                             _hd3786238428_
                             _tl3786138430_
                             _e3786638433_
                             _hd3786538436_
                             _tl3786438438_
                             _e3786938441_
                             _hd3786838444_
                             _tl3786738446_
                             _e3787238449_
                             _hd3787138452_
                             _tl3787038454_
                             _e3787538457_
                             _hd3787438460_
                             _tl3787338462_
                             _e3787838465_
                             _hd3787738468_
                             _tl3787638470_
                             _e3788138473_
                             _hd3788038476_
                             _tl3787938478_)
                            (___kont4496244963_))))
                     (___match4543545436_
                      (lambda (_e3786038417_
                               _hd3785938420_
                               _tl3785838422_
                               _e3786338425_
                               _hd3786238428_
                               _tl3786138430_
                               _e3786638433_
                               _hd3786538436_
                               _tl3786438438_
                               _e3786938441_
                               _hd3786838444_
                               _tl3786738446_
                               _e3787238449_
                               _hd3787138452_
                               _tl3787038454_
                               _e3787538457_
                               _hd3787438460_
                               _tl3787338462_
                               _e3787838465_
                               _hd3787738468_
                               _tl3787638470_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3787038454_))
                            (let ((_e3788138473_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3787038454_))))
                              (let ((_tl3787938478_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3788138473_)))
                                    (_hd3788038476_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3788138473_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3787938478_))
                                    (___match4544345444_
                                     _e3786038417_
                                     _hd3785938420_
                                     _tl3785838422_
                                     _e3786338425_
                                     _hd3786238428_
                                     _tl3786138430_
                                     _e3786638433_
                                     _hd3786538436_
                                     _tl3786438438_
                                     _e3786938441_
                                     _hd3786838444_
                                     _tl3786738446_
                                     _e3787238449_
                                     _hd3787138452_
                                     _tl3787038454_
                                     _e3787538457_
                                     _hd3787438460_
                                     _tl3787338462_
                                     _e3787838465_
                                     _hd3787738468_
                                     _tl3787638470_
                                     _e3788138473_
                                     _hd3788038476_
                                     _tl3787938478_)
                                    (___kont4496244963_))))
                            (___match4549745498_
                             _e3786038417_
                             _hd3785938420_
                             _tl3785838422_
                             _e3786338425_
                             _hd3786238428_
                             _tl3786138430_
                             _e3786638433_
                             _hd3786538436_
                             _tl3786438438_
                             _e3786938441_
                             _hd3786838444_
                             _tl3786738446_
                             _e3787238449_
                             _hd3787138452_
                             _tl3787038454_
                             _e3787538457_
                             _hd3787438460_
                             _tl3787338462_
                             _e3787838465_
                             _hd3787738468_
                             _tl3787638470_))))
                     (___match4538145382_
                      (lambda (_e3783638520_
                               _hd3783538523_
                               _tl3783438525_
                               _e3783938528_
                               _hd3783838531_
                               _tl3783738533_
                               _e3784238536_
                               _hd3784138539_
                               _tl3784038541_
                               _e3784538544_
                               _hd3784438547_
                               _tl3784338549_
                               _e3784838552_
                               _hd3784738555_
                               _tl3784638557_
                               _e3785138560_
                               _hd3785038563_
                               _tl3784938565_
                               _e3785438568_
                               _hd3785338571_
                               _tl3785238573_)
                        (let ((_L38576_ _hd3785338571_)
                              (_L38577_ _hd3784438547_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38576_
                                      _self37644_))
                                   (let ((__tmp46221
                                          (let ((__tmp46222
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L38577_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp46222))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp46221
                                      'gxc#!class-getf::t)))
                              (___kont4495044951_ _L38576_ _L38577_)
                              (___match4549945500_
                               _e3783638520_
                               _hd3783538523_
                               _tl3783438525_
                               _e3783938528_
                               _hd3783838531_
                               _tl3783738533_
                               _e3784238536_
                               _hd3784138539_
                               _tl3784038541_
                               _e3784538544_
                               _hd3784438547_
                               _tl3784338549_
                               _e3784838552_
                               _hd3784738555_
                               _tl3784638557_
                               _e3785138560_
                               _hd3785038563_
                               _tl3784938565_
                               _e3785438568_
                               _hd3785338571_
                               _tl3785238573_)))))
                     (___match4537945380_
                      (lambda (_e3783638520_
                               _hd3783538523_
                               _tl3783438525_
                               _e3783938528_
                               _hd3783838531_
                               _tl3783738533_
                               _e3784238536_
                               _hd3784138539_
                               _tl3784038541_
                               _e3784538544_
                               _hd3784438547_
                               _tl3784338549_
                               _e3784838552_
                               _hd3784738555_
                               _tl3784638557_
                               _e3785138560_
                               _hd3785038563_
                               _tl3784938565_
                               _e3785438568_
                               _hd3785338571_
                               _tl3785238573_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3784638557_))
                            (___match4538145382_
                             _e3783638520_
                             _hd3783538523_
                             _tl3783438525_
                             _e3783938528_
                             _hd3783838531_
                             _tl3783738533_
                             _e3784238536_
                             _hd3784138539_
                             _tl3784038541_
                             _e3784538544_
                             _hd3784438547_
                             _tl3784338549_
                             _e3784838552_
                             _hd3784738555_
                             _tl3784638557_
                             _e3785138560_
                             _hd3785038563_
                             _tl3784938565_
                             _e3785438568_
                             _hd3785338571_
                             _tl3785238573_)
                            (___match4543545436_
                             _e3783638520_
                             _hd3783538523_
                             _tl3783438525_
                             _e3783938528_
                             _hd3783838531_
                             _tl3783738533_
                             _e3784238536_
                             _hd3784138539_
                             _tl3784038541_
                             _e3784538544_
                             _hd3784438547_
                             _tl3784338549_
                             _e3784838552_
                             _hd3784738555_
                             _tl3784638557_
                             _e3785138560_
                             _hd3785038563_
                             _tl3784938565_
                             _e3785438568_
                             _hd3785338571_
                             _tl3785238573_))))
                     (___match4532545326_
                      (lambda (_e3780138609_
                               _hd3780038612_
                               _tl3779938614_
                               _e3780438617_
                               _hd3780338620_
                               _tl3780238622_
                               _e3780738625_
                               _hd3780638628_
                               _tl3780538630_
                               _e3781038633_
                               _hd3780938636_
                               _tl3780838638_
                               _e3781338641_
                               _hd3781238644_
                               _tl3781138646_
                               _e3781638649_
                               _hd3781538652_
                               _tl3781438654_
                               _e3781938657_
                               _hd3781838660_
                               _tl3781738662_
                               _e3782238665_
                               _hd3782138668_
                               _tl3782038670_
                               _e3782538673_
                               _hd3782438676_
                               _tl3782338678_
                               _e3782838681_
                               _hd3782738684_
                               _tl3782638686_
                               _e3783138689_
                               _hd3783038692_
                               _tl3782938694_)
                        (let ((_L38697_ _hd3783038692_)
                              (_L38698_ _hd3782738684_)
                              (_L38699_ _hd3781838660_)
                              (_L38700_ _hd3780938636_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38700_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38700_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38699_
                                      _self37644_)))
                              (___kont4494844949_
                               _L38697_
                               _L38698_
                               _L38699_
                               _L38700_)
                              (___kont4496244963_)))))
                     (___match4531745318_
                      (lambda (_e3780138609_
                               _hd3780038612_
                               _tl3779938614_
                               _e3780438617_
                               _hd3780338620_
                               _tl3780238622_
                               _e3780738625_
                               _hd3780638628_
                               _tl3780538630_
                               _e3781038633_
                               _hd3780938636_
                               _tl3780838638_
                               _e3781338641_
                               _hd3781238644_
                               _tl3781138646_
                               _e3781638649_
                               _hd3781538652_
                               _tl3781438654_
                               _e3781938657_
                               _hd3781838660_
                               _tl3781738662_
                               _e3782238665_
                               _hd3782138668_
                               _tl3782038670_
                               _e3782538673_
                               _hd3782438676_
                               _tl3782338678_
                               _e3782838681_
                               _hd3782738684_
                               _tl3782638686_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3782038670_))
                            (let ((_e3783138689_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3782038670_))))
                              (let ((_tl3782938694_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3783138689_)))
                                    (_hd3783038692_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3783138689_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3782938694_))
                                    (___match4532545326_
                                     _e3780138609_
                                     _hd3780038612_
                                     _tl3779938614_
                                     _e3780438617_
                                     _hd3780338620_
                                     _tl3780238622_
                                     _e3780738625_
                                     _hd3780638628_
                                     _tl3780538630_
                                     _e3781038633_
                                     _hd3780938636_
                                     _tl3780838638_
                                     _e3781338641_
                                     _hd3781238644_
                                     _tl3781138646_
                                     _e3781638649_
                                     _hd3781538652_
                                     _tl3781438654_
                                     _e3781938657_
                                     _hd3781838660_
                                     _tl3781738662_
                                     _e3782238665_
                                     _hd3782138668_
                                     _tl3782038670_
                                     _e3782538673_
                                     _hd3782438676_
                                     _tl3782338678_
                                     _e3782838681_
                                     _hd3782738684_
                                     _tl3782638686_
                                     _e3783138689_
                                     _hd3783038692_
                                     _tl3782938694_)
                                    (___kont4496244963_))))
                            (___match4544145442_
                             _e3780138609_
                             _hd3780038612_
                             _tl3779938614_
                             _e3780438617_
                             _hd3780338620_
                             _tl3780238622_
                             _e3780738625_
                             _hd3780638628_
                             _tl3780538630_
                             _e3781038633_
                             _hd3780938636_
                             _tl3780838638_
                             _e3781338641_
                             _hd3781238644_
                             _tl3781138646_
                             _e3781638649_
                             _hd3781538652_
                             _tl3781438654_
                             _e3781938657_
                             _hd3781838660_
                             _tl3781738662_
                             _e3782238665_
                             _hd3782138668_
                             _tl3782038670_))))
                     (___match4523945240_
                      (lambda (_e3776738743_
                               _hd3776638746_
                               _tl3776538748_
                               _e3777038751_
                               _hd3776938754_
                               _tl3776838756_
                               _e3777338759_
                               _hd3777238762_
                               _tl3777138764_
                               _e3777638767_
                               _hd3777538770_
                               _tl3777438772_
                               _e3777938775_
                               _hd3777838778_
                               _tl3777738780_
                               _e3778238783_
                               _hd3778138786_
                               _tl3778038788_
                               _e3778538791_
                               _hd3778438794_
                               _tl3778338796_
                               _e3778838799_
                               _hd3778738802_
                               _tl3778638804_
                               _e3779138807_
                               _hd3779038810_
                               _tl3778938812_
                               _e3779438815_
                               _hd3779338818_
                               _tl3779238820_)
                        (let ((_L38823_ _hd3779338818_)
                              (_L38824_ _hd3778438794_)
                              (_L38825_ _hd3777538770_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38825_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L38825_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L38824_
                                      _self37644_)))
                              (___kont4494644947_ _L38823_ _L38824_ _L38825_)
                              (___match4544345444_
                               _e3776738743_
                               _hd3776638746_
                               _tl3776538748_
                               _e3777038751_
                               _hd3776938754_
                               _tl3776838756_
                               _e3777338759_
                               _hd3777238762_
                               _tl3777138764_
                               _e3777638767_
                               _hd3777538770_
                               _tl3777438772_
                               _e3777938775_
                               _hd3777838778_
                               _tl3777738780_
                               _e3778238783_
                               _hd3778138786_
                               _tl3778038788_
                               _e3778538791_
                               _hd3778438794_
                               _tl3778338796_
                               _e3778838799_
                               _hd3778738802_
                               _tl3778638804_)))))
                     (___match4523745238_
                      (lambda (_e3776738743_
                               _hd3776638746_
                               _tl3776538748_
                               _e3777038751_
                               _hd3776938754_
                               _tl3776838756_
                               _e3777338759_
                               _hd3777238762_
                               _tl3777138764_
                               _e3777638767_
                               _hd3777538770_
                               _tl3777438772_
                               _e3777938775_
                               _hd3777838778_
                               _tl3777738780_
                               _e3778238783_
                               _hd3778138786_
                               _tl3778038788_
                               _e3778538791_
                               _hd3778438794_
                               _tl3778338796_
                               _e3778838799_
                               _hd3778738802_
                               _tl3778638804_
                               _e3779138807_
                               _hd3779038810_
                               _tl3778938812_
                               _e3779438815_
                               _hd3779338818_
                               _tl3779238820_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl3778638804_))
                            (___match4523945240_
                             _e3776738743_
                             _hd3776638746_
                             _tl3776538748_
                             _e3777038751_
                             _hd3776938754_
                             _tl3776838756_
                             _e3777338759_
                             _hd3777238762_
                             _tl3777138764_
                             _e3777638767_
                             _hd3777538770_
                             _tl3777438772_
                             _e3777938775_
                             _hd3777838778_
                             _tl3777738780_
                             _e3778238783_
                             _hd3778138786_
                             _tl3778038788_
                             _e3778538791_
                             _hd3778438794_
                             _tl3778338796_
                             _e3778838799_
                             _hd3778738802_
                             _tl3778638804_
                             _e3779138807_
                             _hd3779038810_
                             _tl3778938812_
                             _e3779438815_
                             _hd3779338818_
                             _tl3779238820_)
                            (___match4531745318_
                             _e3776738743_
                             _hd3776638746_
                             _tl3776538748_
                             _e3777038751_
                             _hd3776938754_
                             _tl3776838756_
                             _e3777338759_
                             _hd3777238762_
                             _tl3777138764_
                             _e3777638767_
                             _hd3777538770_
                             _tl3777438772_
                             _e3777938775_
                             _hd3777838778_
                             _tl3777738780_
                             _e3778238783_
                             _hd3778138786_
                             _tl3778038788_
                             _e3778538791_
                             _hd3778438794_
                             _tl3778338796_
                             _e3778838799_
                             _hd3778738802_
                             _tl3778638804_
                             _e3779138807_
                             _hd3779038810_
                             _tl3778938812_
                             _e3779438815_
                             _hd3779338818_
                             _tl3779238820_))))
                     (___match4522745228_
                      (lambda (_e3776738743_
                               _hd3776638746_
                               _tl3776538748_
                               _e3777038751_
                               _hd3776938754_
                               _tl3776838756_
                               _e3777338759_
                               _hd3777238762_
                               _tl3777138764_
                               _e3777638767_
                               _hd3777538770_
                               _tl3777438772_
                               _e3777938775_
                               _hd3777838778_
                               _tl3777738780_
                               _e3778238783_
                               _hd3778138786_
                               _tl3778038788_
                               _e3778538791_
                               _hd3778438794_
                               _tl3778338796_
                               _e3778838799_
                               _hd3778738802_
                               _tl3778638804_
                               _e3779138807_
                               _hd3779038810_
                               _tl3778938812_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd3779038810_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3778938812_))
                                (let ((_e3779438815_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3778938812_))))
                                  (let ((_tl3779238820_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3779438815_)))
                                        (_hd3779338818_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3779438815_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3779238820_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl3778638804_))
                                            (___match4523945240_
                                             _e3776738743_
                                             _hd3776638746_
                                             _tl3776538748_
                                             _e3777038751_
                                             _hd3776938754_
                                             _tl3776838756_
                                             _e3777338759_
                                             _hd3777238762_
                                             _tl3777138764_
                                             _e3777638767_
                                             _hd3777538770_
                                             _tl3777438772_
                                             _e3777938775_
                                             _hd3777838778_
                                             _tl3777738780_
                                             _e3778238783_
                                             _hd3778138786_
                                             _tl3778038788_
                                             _e3778538791_
                                             _hd3778438794_
                                             _tl3778338796_
                                             _e3778838799_
                                             _hd3778738802_
                                             _tl3778638804_
                                             _e3779138807_
                                             _hd3779038810_
                                             _tl3778938812_
                                             _e3779438815_
                                             _hd3779338818_
                                             _tl3779238820_)
                                            (___match4531745318_
                                             _e3776738743_
                                             _hd3776638746_
                                             _tl3776538748_
                                             _e3777038751_
                                             _hd3776938754_
                                             _tl3776838756_
                                             _e3777338759_
                                             _hd3777238762_
                                             _tl3777138764_
                                             _e3777638767_
                                             _hd3777538770_
                                             _tl3777438772_
                                             _e3777938775_
                                             _hd3777838778_
                                             _tl3777738780_
                                             _e3778238783_
                                             _hd3778138786_
                                             _tl3778038788_
                                             _e3778538791_
                                             _hd3778438794_
                                             _tl3778338796_
                                             _e3778838799_
                                             _hd3778738802_
                                             _tl3778638804_
                                             _e3779138807_
                                             _hd3779038810_
                                             _tl3778938812_
                                             _e3779438815_
                                             _hd3779338818_
                                             _tl3779238820_))
                                        (___match4544145442_
                                         _e3776738743_
                                         _hd3776638746_
                                         _tl3776538748_
                                         _e3777038751_
                                         _hd3776938754_
                                         _tl3776838756_
                                         _e3777338759_
                                         _hd3777238762_
                                         _tl3777138764_
                                         _e3777638767_
                                         _hd3777538770_
                                         _tl3777438772_
                                         _e3777938775_
                                         _hd3777838778_
                                         _tl3777738780_
                                         _e3778238783_
                                         _hd3778138786_
                                         _tl3778038788_
                                         _e3778538791_
                                         _hd3778438794_
                                         _tl3778338796_
                                         _e3778838799_
                                         _hd3778738802_
                                         _tl3778638804_))))
                                (___match4544145442_
                                 _e3776738743_
                                 _hd3776638746_
                                 _tl3776538748_
                                 _e3777038751_
                                 _hd3776938754_
                                 _tl3776838756_
                                 _e3777338759_
                                 _hd3777238762_
                                 _tl3777138764_
                                 _e3777638767_
                                 _hd3777538770_
                                 _tl3777438772_
                                 _e3777938775_
                                 _hd3777838778_
                                 _tl3777738780_
                                 _e3778238783_
                                 _hd3778138786_
                                 _tl3778038788_
                                 _e3778538791_
                                 _hd3778438794_
                                 _tl3778338796_
                                 _e3778838799_
                                 _hd3778738802_
                                 _tl3778638804_))
                            (___match4544145442_
                             _e3776738743_
                             _hd3776638746_
                             _tl3776538748_
                             _e3777038751_
                             _hd3776938754_
                             _tl3776838756_
                             _e3777338759_
                             _hd3777238762_
                             _tl3777138764_
                             _e3777638767_
                             _hd3777538770_
                             _tl3777438772_
                             _e3777938775_
                             _hd3777838778_
                             _tl3777738780_
                             _e3778238783_
                             _hd3778138786_
                             _tl3778038788_
                             _e3778538791_
                             _hd3778438794_
                             _tl3778338796_
                             _e3778838799_
                             _hd3778738802_
                             _tl3778638804_))))
                     (___match4515945160_
                      (lambda (_e3771638864_
                               _hd3771538867_
                               _tl3771438869_
                               _e3771938872_
                               _hd3771838875_
                               _tl3771738877_
                               _e3772238880_
                               _hd3772138883_
                               _tl3772038885_
                               _e3772538888_
                               _hd3772438891_
                               _tl3772338893_
                               _e3772838896_
                               _hd3772738899_
                               _tl3772638901_
                               _e3773138904_
                               _hd3773038907_
                               _tl3772938909_
                               _e3773438912_
                               _hd3773338915_
                               _tl3773238917_
                               _e3773738920_
                               _hd3773638923_
                               _tl3773538925_
                               _e3774038928_
                               _hd3773938931_
                               _tl3773838933_
                               _e3774338936_
                               _hd3774238939_
                               _tl3774138941_
                               _e3774638944_
                               _hd3774538947_
                               _tl3774438949_
                               _e3774938952_
                               _hd3774838955_
                               _tl3774738957_
                               _e3775238960_
                               _hd3775138963_
                               _tl3775038965_
                               ___splice4494444945_
                               _target3775338968_
                               _tl3775538970_)
                        (letrec ((_loop3775638973_
                                  (lambda (_hd3775438976_ _args3776038978_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3775438976_))
                                        (let ((_e3775738981_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3775438976_))))
                                          (let ((_lp-tl3775938986_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3775738981_)))
                                                (_lp-hd3775838984_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3775738981_))))
                                            (let ((__tmp46223
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3775838984_
                                                           _args3776038978_))))
                                              (declare (not safe))
                                              (_loop3775638973_
                                               _lp-tl3775938986_
                                               __tmp46223))))
                                        (let ((_args3776138989_
                                               (reverse _args3776038978_)))
                                          (let ((_L38992_ _args3776138989_)
                                                (_L38993_ _hd3775138963_)
                                                (_L38994_ _hd3774238939_)
                                                (_L38995_ _hd3773338915_)
                                                (_L38996_ _hd3772438891_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L38996_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L38995_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L38994_
                                                        _self37644_)))
                                                (___kont4494244943_
                                                 _L38992_
                                                 _L38993_
                                                 _L38994_
                                                 _L38995_
                                                 _L38996_)
                                                (___kont4496244963_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3775638973_ _target3775338968_ '())))))
                     (___match4511745118_
                      (lambda (_e3771638864_
                               _hd3771538867_
                               _tl3771438869_
                               _e3771938872_
                               _hd3771838875_
                               _tl3771738877_
                               _e3772238880_
                               _hd3772138883_
                               _tl3772038885_
                               _e3772538888_
                               _hd3772438891_
                               _tl3772338893_
                               _e3772838896_
                               _hd3772738899_
                               _tl3772638901_
                               _e3773138904_
                               _hd3773038907_
                               _tl3772938909_
                               _e3773438912_
                               _hd3773338915_
                               _tl3773238917_
                               _e3773738920_
                               _hd3773638923_
                               _tl3773538925_
                               _e3774038928_
                               _hd3773938931_
                               _tl3773838933_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd3773938931_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl3773838933_))
                                (let ((_e3774338936_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl3773838933_))))
                                  (let ((_tl3774138941_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3774338936_)))
                                        (_hd3774238939_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3774338936_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl3774138941_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3773538925_))
                                            (let ((_e3774638944_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3773538925_))))
                                              (let ((_tl3774438949_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3774638944_)))
                                                    (_hd3774538947_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3774638944_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd3774538947_))
                                                    (let ((_e3774938952_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd3774538947_))))
                                                      (let ((_tl3774738957_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3774938952_)))
                    (_hd3774838955_
                     (let () (declare (not safe)) (##car _e3774938952_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd3774838955_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd3774838955_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3774738957_))
                            (let ((_e3775238960_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3774738957_))))
                              (let ((_tl3775038965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3775238960_)))
                                    (_hd3775138963_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3775238960_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl3775038965_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl3774438949_))
                                        (let ((___splice4494444945_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl3774438949_
                                                  '0))))
                                          (let ((_tl3775538970_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4494444945_
                                                    '1)))
                                                (_target3775338968_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice4494444945_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl3775538970_))
                                                (___match4515945160_
                                                 _e3771638864_
                                                 _hd3771538867_
                                                 _tl3771438869_
                                                 _e3771938872_
                                                 _hd3771838875_
                                                 _tl3771738877_
                                                 _e3772238880_
                                                 _hd3772138883_
                                                 _tl3772038885_
                                                 _e3772538888_
                                                 _hd3772438891_
                                                 _tl3772338893_
                                                 _e3772838896_
                                                 _hd3772738899_
                                                 _tl3772638901_
                                                 _e3773138904_
                                                 _hd3773038907_
                                                 _tl3772938909_
                                                 _e3773438912_
                                                 _hd3773338915_
                                                 _tl3773238917_
                                                 _e3773738920_
                                                 _hd3773638923_
                                                 _tl3773538925_
                                                 _e3774038928_
                                                 _hd3773938931_
                                                 _tl3773838933_
                                                 _e3774338936_
                                                 _hd3774238939_
                                                 _tl3774138941_
                                                 _e3774638944_
                                                 _hd3774538947_
                                                 _tl3774438949_
                                                 _e3774938952_
                                                 _hd3774838955_
                                                 _tl3774738957_
                                                 _e3775238960_
                                                 _hd3775138963_
                                                 _tl3775038965_
                                                 ___splice4494444945_
                                                 _target3775338968_
                                                 _tl3775538970_)
                                                (___kont4496244963_))))
                                        (___kont4496244963_))
                                    (___kont4496244963_))))
                            (___kont4496244963_))
                        (___kont4496244963_))
                    (___kont4496244963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4496244963_))))
                                            (___match4544145442_
                                             _e3771638864_
                                             _hd3771538867_
                                             _tl3771438869_
                                             _e3771938872_
                                             _hd3771838875_
                                             _tl3771738877_
                                             _e3772238880_
                                             _hd3772138883_
                                             _tl3772038885_
                                             _e3772538888_
                                             _hd3772438891_
                                             _tl3772338893_
                                             _e3772838896_
                                             _hd3772738899_
                                             _tl3772638901_
                                             _e3773138904_
                                             _hd3773038907_
                                             _tl3772938909_
                                             _e3773438912_
                                             _hd3773338915_
                                             _tl3773238917_
                                             _e3773738920_
                                             _hd3773638923_
                                             _tl3773538925_))
                                        (___match4544145442_
                                         _e3771638864_
                                         _hd3771538867_
                                         _tl3771438869_
                                         _e3771938872_
                                         _hd3771838875_
                                         _tl3771738877_
                                         _e3772238880_
                                         _hd3772138883_
                                         _tl3772038885_
                                         _e3772538888_
                                         _hd3772438891_
                                         _tl3772338893_
                                         _e3772838896_
                                         _hd3772738899_
                                         _tl3772638901_
                                         _e3773138904_
                                         _hd3773038907_
                                         _tl3772938909_
                                         _e3773438912_
                                         _hd3773338915_
                                         _tl3773238917_
                                         _e3773738920_
                                         _hd3773638923_
                                         _tl3773538925_))))
                                (___match4544145442_
                                 _e3771638864_
                                 _hd3771538867_
                                 _tl3771438869_
                                 _e3771938872_
                                 _hd3771838875_
                                 _tl3771738877_
                                 _e3772238880_
                                 _hd3772138883_
                                 _tl3772038885_
                                 _e3772538888_
                                 _hd3772438891_
                                 _tl3772338893_
                                 _e3772838896_
                                 _hd3772738899_
                                 _tl3772638901_
                                 _e3773138904_
                                 _hd3773038907_
                                 _tl3772938909_
                                 _e3773438912_
                                 _hd3773338915_
                                 _tl3773238917_
                                 _e3773738920_
                                 _hd3773638923_
                                 _tl3773538925_))
                            (___match4522745228_
                             _e3771638864_
                             _hd3771538867_
                             _tl3771438869_
                             _e3771938872_
                             _hd3771838875_
                             _tl3771738877_
                             _e3772238880_
                             _hd3772138883_
                             _tl3772038885_
                             _e3772538888_
                             _hd3772438891_
                             _tl3772338893_
                             _e3772838896_
                             _hd3772738899_
                             _tl3772638901_
                             _e3773138904_
                             _hd3773038907_
                             _tl3772938909_
                             _e3773438912_
                             _hd3773338915_
                             _tl3773238917_
                             _e3773738920_
                             _hd3773638923_
                             _tl3773538925_
                             _e3774038928_
                             _hd3773938931_
                             _tl3773838933_))))
                     (___match4504945050_
                      (lambda (_e3767239056_
                               _hd3767139059_
                               _tl3767039061_
                               _e3767539064_
                               _hd3767439067_
                               _tl3767339069_
                               _e3767839072_
                               _hd3767739075_
                               _tl3767639077_
                               _e3768139080_
                               _hd3768039083_
                               _tl3767939085_
                               _e3768439088_
                               _hd3768339091_
                               _tl3768239093_
                               _e3768739096_
                               _hd3768639099_
                               _tl3768539101_
                               _e3769039104_
                               _hd3768939107_
                               _tl3768839109_
                               _e3769339112_
                               _hd3769239115_
                               _tl3769139117_
                               _e3769639120_
                               _hd3769539123_
                               _tl3769439125_
                               _e3769939128_
                               _hd3769839131_
                               _tl3769739133_
                               ___splice4494044941_
                               _target3770039136_
                               _tl3770239138_)
                        (letrec ((_loop3770339141_
                                  (lambda (_hd3770139144_ _args3770739146_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd3770139144_))
                                        (let ((_e3770439149_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd3770139144_))))
                                          (let ((_lp-tl3770639154_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e3770439149_)))
                                                (_lp-hd3770539152_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e3770439149_))))
                                            (let ((__tmp46224
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd3770539152_
                                                           _args3770739146_))))
                                              (declare (not safe))
                                              (_loop3770339141_
                                               _lp-tl3770639154_
                                               __tmp46224))))
                                        (let ((_args3770839157_
                                               (reverse _args3770739146_)))
                                          (let ((_L39160_ _args3770839157_)
                                                (_L39161_ _hd3769839131_)
                                                (_L39162_ _hd3768939107_)
                                                (_L39163_ _hd3768039083_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L39163_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L39162_
                                                        _self37644_)))
                                                (___kont4493844939_
                                                 _L39160_
                                                 _L39161_
                                                 _L39162_
                                                 _L39163_)
                                                (___match4523745238_
                                                 _e3767239056_
                                                 _hd3767139059_
                                                 _tl3767039061_
                                                 _e3767539064_
                                                 _hd3767439067_
                                                 _tl3767339069_
                                                 _e3767839072_
                                                 _hd3767739075_
                                                 _tl3767639077_
                                                 _e3768139080_
                                                 _hd3768039083_
                                                 _tl3767939085_
                                                 _e3768439088_
                                                 _hd3768339091_
                                                 _tl3768239093_
                                                 _e3768739096_
                                                 _hd3768639099_
                                                 _tl3768539101_
                                                 _e3769039104_
                                                 _hd3768939107_
                                                 _tl3768839109_
                                                 _e3769339112_
                                                 _hd3769239115_
                                                 _tl3769139117_
                                                 _e3769639120_
                                                 _hd3769539123_
                                                 _tl3769439125_
                                                 _e3769939128_
                                                 _hd3769839131_
                                                 _tl3769739133_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop3770339141_ _target3770039136_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx4493644937_))
                    (let ((_e3767239056_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx4493644937_))))
                      (let ((_tl3767039061_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3767239056_)))
                            (_hd3767139059_
                             (let ()
                               (declare (not safe))
                               (##car _e3767239056_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl3767039061_))
                            (let ((_e3767539064_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl3767039061_))))
                              (let ((_tl3767339069_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3767539064_)))
                                    (_hd3767439067_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3767539064_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd3767439067_))
                                    (let ((_e3767839072_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd3767439067_))))
                                      (let ((_tl3767639077_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e3767839072_)))
                                            (_hd3767739075_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e3767839072_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier? _hd3767739075_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd3767739075_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl3767639077_))
                                                    (let ((_e3768139080_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl3767639077_))))
                                                      (let ((_tl3767939085_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e3768139080_)))
                    (_hd3768039083_
                     (let () (declare (not safe)) (##car _e3768139080_))))
                (if (let () (declare (not safe)) (gx#stx-null? _tl3767939085_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl3767339069_))
                        (let ((_e3768439088_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl3767339069_))))
                          (let ((_tl3768239093_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e3768439088_)))
                                (_hd3768339091_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e3768439088_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd3768339091_))
                                (let ((_e3768739096_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd3768339091_))))
                                  (let ((_tl3768539101_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e3768739096_)))
                                        (_hd3768639099_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e3768739096_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd3768639099_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd3768639099_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl3768539101_))
                                                (let ((_e3769039104_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl3768539101_))))
                                                  (let ((_tl3768839109_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e3769039104_)))
                                                        (_hd3768939107_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e3769039104_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl3768839109_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl3768239093_))
                                                            (let ((_e3769339112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl3768239093_))))
                      (let ((_tl3769139117_
                             (let ()
                               (declare (not safe))
                               (##cdr _e3769339112_)))
                            (_hd3769239115_
                             (let ()
                               (declare (not safe))
                               (##car _e3769339112_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd3769239115_))
                            (let ((_e3769639120_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd3769239115_))))
                              (let ((_tl3769439125_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e3769639120_)))
                                    (_hd3769539123_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e3769639120_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd3769539123_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq? '%#quote _hd3769539123_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl3769439125_))
                                            (let ((_e3769939128_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl3769439125_))))
                                              (let ((_tl3769739133_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e3769939128_)))
                                                    (_hd3769839131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e3769939128_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl3769739133_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl3769139117_))
                                                        (let ((___splice4494044941_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl3769139117_ '0))))
                  (let ((_tl3770239138_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4494044941_ '1)))
                        (_target3770039136_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice4494044941_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl3770239138_))
                        (___match4504945050_
                         _e3767239056_
                         _hd3767139059_
                         _tl3767039061_
                         _e3767539064_
                         _hd3767439067_
                         _tl3767339069_
                         _e3767839072_
                         _hd3767739075_
                         _tl3767639077_
                         _e3768139080_
                         _hd3768039083_
                         _tl3767939085_
                         _e3768439088_
                         _hd3768339091_
                         _tl3768239093_
                         _e3768739096_
                         _hd3768639099_
                         _tl3768539101_
                         _e3769039104_
                         _hd3768939107_
                         _tl3768839109_
                         _e3769339112_
                         _hd3769239115_
                         _tl3769139117_
                         _e3769639120_
                         _hd3769539123_
                         _tl3769439125_
                         _e3769939128_
                         _hd3769839131_
                         _tl3769739133_
                         ___splice4494044941_
                         _target3770039136_
                         _tl3770239138_)
                        (___match4523745238_
                         _e3767239056_
                         _hd3767139059_
                         _tl3767039061_
                         _e3767539064_
                         _hd3767439067_
                         _tl3767339069_
                         _e3767839072_
                         _hd3767739075_
                         _tl3767639077_
                         _e3768139080_
                         _hd3768039083_
                         _tl3767939085_
                         _e3768439088_
                         _hd3768339091_
                         _tl3768239093_
                         _e3768739096_
                         _hd3768639099_
                         _tl3768539101_
                         _e3769039104_
                         _hd3768939107_
                         _tl3768839109_
                         _e3769339112_
                         _hd3769239115_
                         _tl3769139117_
                         _e3769639120_
                         _hd3769539123_
                         _tl3769439125_
                         _e3769939128_
                         _hd3769839131_
                         _tl3769739133_))))
                (___match4523745238_
                 _e3767239056_
                 _hd3767139059_
                 _tl3767039061_
                 _e3767539064_
                 _hd3767439067_
                 _tl3767339069_
                 _e3767839072_
                 _hd3767739075_
                 _tl3767639077_
                 _e3768139080_
                 _hd3768039083_
                 _tl3767939085_
                 _e3768439088_
                 _hd3768339091_
                 _tl3768239093_
                 _e3768739096_
                 _hd3768639099_
                 _tl3768539101_
                 _e3769039104_
                 _hd3768939107_
                 _tl3768839109_
                 _e3769339112_
                 _hd3769239115_
                 _tl3769139117_
                 _e3769639120_
                 _hd3769539123_
                 _tl3769439125_
                 _e3769939128_
                 _hd3769839131_
                 _tl3769739133_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match4544145442_
                                                     _e3767239056_
                                                     _hd3767139059_
                                                     _tl3767039061_
                                                     _e3767539064_
                                                     _hd3767439067_
                                                     _tl3767339069_
                                                     _e3767839072_
                                                     _hd3767739075_
                                                     _tl3767639077_
                                                     _e3768139080_
                                                     _hd3768039083_
                                                     _tl3767939085_
                                                     _e3768439088_
                                                     _hd3768339091_
                                                     _tl3768239093_
                                                     _e3768739096_
                                                     _hd3768639099_
                                                     _tl3768539101_
                                                     _e3769039104_
                                                     _hd3768939107_
                                                     _tl3768839109_
                                                     _e3769339112_
                                                     _hd3769239115_
                                                     _tl3769139117_))))
                                            (___match4544145442_
                                             _e3767239056_
                                             _hd3767139059_
                                             _tl3767039061_
                                             _e3767539064_
                                             _hd3767439067_
                                             _tl3767339069_
                                             _e3767839072_
                                             _hd3767739075_
                                             _tl3767639077_
                                             _e3768139080_
                                             _hd3768039083_
                                             _tl3767939085_
                                             _e3768439088_
                                             _hd3768339091_
                                             _tl3768239093_
                                             _e3768739096_
                                             _hd3768639099_
                                             _tl3768539101_
                                             _e3769039104_
                                             _hd3768939107_
                                             _tl3768839109_
                                             _e3769339112_
                                             _hd3769239115_
                                             _tl3769139117_))
                                        (___match4511745118_
                                         _e3767239056_
                                         _hd3767139059_
                                         _tl3767039061_
                                         _e3767539064_
                                         _hd3767439067_
                                         _tl3767339069_
                                         _e3767839072_
                                         _hd3767739075_
                                         _tl3767639077_
                                         _e3768139080_
                                         _hd3768039083_
                                         _tl3767939085_
                                         _e3768439088_
                                         _hd3768339091_
                                         _tl3768239093_
                                         _e3768739096_
                                         _hd3768639099_
                                         _tl3768539101_
                                         _e3769039104_
                                         _hd3768939107_
                                         _tl3768839109_
                                         _e3769339112_
                                         _hd3769239115_
                                         _tl3769139117_
                                         _e3769639120_
                                         _hd3769539123_
                                         _tl3769439125_))
                                    (___match4544145442_
                                     _e3767239056_
                                     _hd3767139059_
                                     _tl3767039061_
                                     _e3767539064_
                                     _hd3767439067_
                                     _tl3767339069_
                                     _e3767839072_
                                     _hd3767739075_
                                     _tl3767639077_
                                     _e3768139080_
                                     _hd3768039083_
                                     _tl3767939085_
                                     _e3768439088_
                                     _hd3768339091_
                                     _tl3768239093_
                                     _e3768739096_
                                     _hd3768639099_
                                     _tl3768539101_
                                     _e3769039104_
                                     _hd3768939107_
                                     _tl3768839109_
                                     _e3769339112_
                                     _hd3769239115_
                                     _tl3769139117_))))
                            (___match4544145442_
                             _e3767239056_
                             _hd3767139059_
                             _tl3767039061_
                             _e3767539064_
                             _hd3767439067_
                             _tl3767339069_
                             _e3767839072_
                             _hd3767739075_
                             _tl3767639077_
                             _e3768139080_
                             _hd3768039083_
                             _tl3767939085_
                             _e3768439088_
                             _hd3768339091_
                             _tl3768239093_
                             _e3768739096_
                             _hd3768639099_
                             _tl3768539101_
                             _e3769039104_
                             _hd3768939107_
                             _tl3768839109_
                             _e3769339112_
                             _hd3769239115_
                             _tl3769139117_))))
                    (___match4537945380_
                     _e3767239056_
                     _hd3767139059_
                     _tl3767039061_
                     _e3767539064_
                     _hd3767439067_
                     _tl3767339069_
                     _e3767839072_
                     _hd3767739075_
                     _tl3767639077_
                     _e3768139080_
                     _hd3768039083_
                     _tl3767939085_
                     _e3768439088_
                     _hd3768339091_
                     _tl3768239093_
                     _e3768739096_
                     _hd3768639099_
                     _tl3768539101_
                     _e3769039104_
                     _hd3768939107_
                     _tl3768839109_))
                (___kont4496244963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont4496244963_))
                                            (___kont4496244963_))
                                        (___kont4496244963_))))
                                (___kont4496244963_))))
                        (___kont4496244963_))
                    (___kont4496244963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont4496244963_))
                                                (___kont4496244963_))
                                            (___kont4496244963_))))
                                    (___kont4496244963_))))
                            (___kont4496244963_))))
                    (___kont4496244963_))))))))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1708510103)
  (begin
    (define gxc#&generate-method-specializers
      (make-promise
       (lambda ()
         (let ((_tbl133517_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134645 (force gxc#&identity)))
             (declare (not safe))
             (hash-merge! _tbl133517_ __tmp134645))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133517_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133517_ '%#begin-syntax gxc#xform-begin-syntax%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133517_ '%#module gxc#xform-module%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133517_
              '%#define-values
              gxc#generate-method-specializers-define-values%))
           _tbl133517_))))
    (define gxc#apply-generate-method-specializers
      (lambda (_stx133500_ . _args133502_)
        (let ((__tmp134647
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133502_)
                     (gxc#compile-e__0 _stx133500_)
                     (let ((_arg1133507_ (car _args133502_))
                           (_rest133509_ (cdr _args133502_)))
                       (if (null? _rest133509_)
                           (gxc#compile-e__1 _stx133500_ _arg1133507_)
                           (let ((_arg2133512_ (car _rest133509_))
                                 (_rest133514_ (cdr _rest133509_)))
                             (if (null? _rest133514_)
                                 (gxc#compile-e__2
                                  _stx133500_
                                  _arg1133507_
                                  _arg2133512_)
                                 (apply gxc#compile-e
                                        _stx133500_
                                        _arg1133507_
                                        _arg2133512_
                                        _rest133514_))))))))
              (__tmp134646 (force gxc#&generate-method-specializers)))
          (declare (not safe))
          (call-with-parameters
           __tmp134647
           gxc#current-compile-methods
           __tmp134646))))
    (define gxc#&collect-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133497_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134648 (force gxc#&void)))
             (declare (not safe))
             (hash-merge! _tbl133497_ __tmp134648))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133497_ '%#begin gxc#collect-begin%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133497_
              '%#begin-annotation
              gxc#collect-begin-annotation%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133497_ '%#lambda gxc#collect-body-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133497_
              '%#case-lambda
              gxc#collect-body-case-lambda%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133497_
              '%#let-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133497_
              '%#letrec-values
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133497_
              '%#letrec-values*
              gxc#collect-body-let-values%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133497_ '%#call gxc#collect-object-refs-call%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133497_ '%#if gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133497_ '%#set! gxc#collect-body-setq%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133497_ '%#struct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133497_ '%#struct-set! gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133497_ '%#struct-direct-ref gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133497_
              '%#struct-direct-set!
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133497_
              '%#struct-unchecked-ref
              gxc#collect-operands))
           (let ()
             (declare (not safe))
             (hash-put!
              _tbl133497_
              '%#struct-unchecked-set!
              gxc#collect-operands))
           _tbl133497_))))
    (define gxc#apply-collect-object-refs
      (lambda (_stx133480_ . _args133482_)
        (let ((__tmp134650
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133482_)
                     (gxc#compile-e__0 _stx133480_)
                     (let ((_arg1133487_ (car _args133482_))
                           (_rest133489_ (cdr _args133482_)))
                       (if (null? _rest133489_)
                           (gxc#compile-e__1 _stx133480_ _arg1133487_)
                           (let ((_arg2133492_ (car _rest133489_))
                                 (_rest133494_ (cdr _rest133489_)))
                             (if (null? _rest133494_)
                                 (gxc#compile-e__2
                                  _stx133480_
                                  _arg1133487_
                                  _arg2133492_)
                                 (apply gxc#compile-e
                                        _stx133480_
                                        _arg1133487_
                                        _arg2133492_
                                        _rest133494_))))))))
              (__tmp134649 (force gxc#&collect-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134650
           gxc#current-compile-methods
           __tmp134649))))
    (define gxc#&subst-object-refs
      (make-promise
       (lambda ()
         (let ((_tbl133477_
                (let () (declare (not safe)) (make-hash-table-eq))))
           (let ((__tmp134651 (force gxc#&basic-xform-expression)))
             (declare (not safe))
             (hash-merge! _tbl133477_ __tmp134651))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133477_ '%#begin gxc#xform-begin%))
           (let ()
             (declare (not safe))
             (hash-put! _tbl133477_ '%#call gxc#subst-object-refs-call%))
           _tbl133477_))))
    (define gxc#apply-subst-object-refs
      (lambda (_stx133460_ . _args133462_)
        (let ((__tmp134653
               (lambda ()
                 (declare (not safe))
                 (if (null? _args133462_)
                     (gxc#compile-e__0 _stx133460_)
                     (let ((_arg1133467_ (car _args133462_))
                           (_rest133469_ (cdr _args133462_)))
                       (if (null? _rest133469_)
                           (gxc#compile-e__1 _stx133460_ _arg1133467_)
                           (let ((_arg2133472_ (car _rest133469_))
                                 (_rest133474_ (cdr _rest133469_)))
                             (if (null? _rest133474_)
                                 (gxc#compile-e__2
                                  _stx133460_
                                  _arg1133467_
                                  _arg2133472_)
                                 (apply gxc#compile-e
                                        _stx133460_
                                        _arg1133467_
                                        _arg2133472_
                                        _rest133474_))))))))
              (__tmp134652 (force gxc#&subst-object-refs)))
          (declare (not safe))
          (call-with-parameters
           __tmp134653
           gxc#current-compile-methods
           __tmp134652))))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_stx130672_)
        (letrec ((_generate-method-bind130674_
                  (lambda (_$klass133453_
                           _$method-table133454_
                           _id133455_
                           _$id133456_)
                    (let ((_$tmp133458_
                           (let ((__tmp134654 (gensym '__method)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134654))))
                      (let ((__tmp134702
                             (let ()
                               (declare (not safe))
                               (cons _$id133456_ '())))
                            (__tmp134655
                             (let ((__tmp134656
                                    (let ((__tmp134657
                                           (let ((__tmp134700
                                                  (let ((__tmp134701
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons 'make-promise
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134701)))
                                                 (__tmp134658
                                                  (let ((__tmp134659
                                                         (let ((__tmp134660
                                                                (let ((__tmp134661
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134662
                                      (let ((__tmp134663
                                             (let ((__tmp134683
                                                    (let ((__tmp134684
                                                           (let ((__tmp134699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (cons _$tmp133458_ '())))
                         (__tmp134685
                          (let ((__tmp134686
                                 (let ((__tmp134687
                                        (let ((__tmp134697
                                               (let ((__tmp134698
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons 'symbolic-table-ref
                                                              '()))))
                                                 (declare (not safe))
                                                 (cons '%#ref __tmp134698)))
                                              (__tmp134688
                                               (let ((__tmp134695
                                                      (let ((__tmp134696
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _$method-table133454_ '()))))
                (declare (not safe))
                (cons '%#ref __tmp134696)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp134689
                                                      (let ((__tmp134693
                                                             (let ((__tmp134694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (cons _id133455_ '()))))
                       (declare (not safe))
                       (cons '%#quote __tmp134694)))
                    (__tmp134690
                     (let ((__tmp134691
                            (let ((__tmp134692
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134692))))
                       (declare (not safe))
                       (cons __tmp134691 '()))))
                (declare (not safe))
                (cons __tmp134693 __tmp134690))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp134695
                                                       __tmp134689))))
                                          (declare (not safe))
                                          (cons __tmp134697 __tmp134688))))
                                   (declare (not safe))
                                   (cons '%#call __tmp134687))))
                            (declare (not safe))
                            (cons __tmp134686 '()))))
                     (declare (not safe))
                     (cons __tmp134699 __tmp134685))))
              (declare (not safe))
              (cons __tmp134684 '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134664
                                                    (let ((__tmp134665
                                                           (let ((__tmp134666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134681
                                 (let ((__tmp134682
                                        (let ()
                                          (declare (not safe))
                                          (cons _$tmp133458_ '()))))
                                   (declare (not safe))
                                   (cons '%#ref __tmp134682)))
                                (__tmp134667
                                 (let ((__tmp134679
                                        (let ((__tmp134680
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _$tmp133458_ '()))))
                                          (declare (not safe))
                                          (cons '%#ref __tmp134680)))
                                       (__tmp134668
                                        (let ((__tmp134669
                                               (let ((__tmp134670
                                                      (let ((__tmp134677
                                                             (let ((__tmp134678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons 'error '()))))
                       (declare (not safe))
                       (cons '%#ref __tmp134678)))
                    (__tmp134671
                     (let ((__tmp134675
                            (let ((__tmp134676
                                   (let ()
                                     (declare (not safe))
                                     (cons '"Missing method" '()))))
                              (declare (not safe))
                              (cons '%#quote __tmp134676)))
                           (__tmp134672
                            (let ((__tmp134673
                                   (let ((__tmp134674
                                          (let ()
                                            (declare (not safe))
                                            (cons _id133455_ '()))))
                                     (declare (not safe))
                                     (cons '%#quote __tmp134674))))
                              (declare (not safe))
                              (cons __tmp134673 '()))))
                       (declare (not safe))
                       (cons __tmp134675 __tmp134672))))
                (declare (not safe))
                (cons __tmp134677 __tmp134671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons '%#call __tmp134670))))
                                          (declare (not safe))
                                          (cons __tmp134669 '()))))
                                   (declare (not safe))
                                   (cons __tmp134679 __tmp134668))))
                            (declare (not safe))
                            (cons __tmp134681 __tmp134667))))
                     (declare (not safe))
                     (cons '%#if __tmp134666))))
              (declare (not safe))
              (cons __tmp134665 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134683
                                                     __tmp134664))))
                                        (declare (not safe))
                                        (cons '%#let-values __tmp134663))))
                                 (declare (not safe))
                                 (cons __tmp134662 '()))))
                          (declare (not safe))
                          (cons '() __tmp134661))))
                   (declare (not safe))
                   (cons '%#lambda __tmp134660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134659 '()))))
                                             (declare (not safe))
                                             (cons __tmp134700 __tmp134658))))
                                      (declare (not safe))
                                      (cons '%#call __tmp134657))))
                               (declare (not safe))
                               (cons __tmp134656 '()))))
                        (declare (not safe))
                        (cons __tmp134702 __tmp134655)))))
                 (_generate-slot-bind130675_
                  (lambda (_$klass133447_ _id133448_ _$id133449_)
                    (let ((_$tmp133451_
                           (let ((__tmp134703 (gensym '__slot)))
                             (declare (not safe))
                             (make-symbol__0 __tmp134703))))
                      (let ((__tmp134740
                             (let ()
                               (declare (not safe))
                               (cons _$id133449_ '())))
                            (__tmp134704
                             (let ((__tmp134705
                                    (let ((__tmp134706
                                           (let ((__tmp134726
                                                  (let ((__tmp134727
                                                         (let ((__tmp134739
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _$tmp133451_ '())))
                       (__tmp134728
                        (let ((__tmp134729
                               (let ((__tmp134730
                                      (let ((__tmp134737
                                             (let ((__tmp134738
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons 'class-slot-offset
                                                            '()))))
                                               (declare (not safe))
                                               (cons '%#ref __tmp134738)))
                                            (__tmp134731
                                             (let ((__tmp134735
                                                    (let ((__tmp134736
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _$klass133447_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons '%#ref __tmp134736)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134732
                                                    (let ((__tmp134733
                                                           (let ((__tmp134734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons _id133448_ '()))))
                     (declare (not safe))
                     (cons '%#quote __tmp134734))))
              (declare (not safe))
              (cons __tmp134733 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134735
                                                     __tmp134732))))
                                        (declare (not safe))
                                        (cons __tmp134737 __tmp134731))))
                                 (declare (not safe))
                                 (cons '%#call __tmp134730))))
                          (declare (not safe))
                          (cons __tmp134729 '()))))
                   (declare (not safe))
                   (cons __tmp134739 __tmp134728))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134727 '())))
                                                 (__tmp134707
                                                  (let ((__tmp134708
                                                         (let ((__tmp134709
                                                                (let ((__tmp134724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134725
                                      (let ()
                                        (declare (not safe))
                                        (cons _$tmp133451_ '()))))
                                 (declare (not safe))
                                 (cons '%#ref __tmp134725)))
                              (__tmp134710
                               (let ((__tmp134722
                                      (let ((__tmp134723
                                             (let ()
                                               (declare (not safe))
                                               (cons _$tmp133451_ '()))))
                                        (declare (not safe))
                                        (cons '%#ref __tmp134723)))
                                     (__tmp134711
                                      (let ((__tmp134712
                                             (let ((__tmp134713
                                                    (let ((__tmp134720
                                                           (let ((__tmp134721
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let () (declare (not safe)) (cons 'error '()))))
                     (declare (not safe))
                     (cons '%#ref __tmp134721)))
                  (__tmp134714
                   (let ((__tmp134718
                          (let ((__tmp134719
                                 (let ()
                                   (declare (not safe))
                                   (cons '"Unknown slot" '()))))
                            (declare (not safe))
                            (cons '%#quote __tmp134719)))
                         (__tmp134715
                          (let ((__tmp134716
                                 (let ((__tmp134717
                                        (let ()
                                          (declare (not safe))
                                          (cons _id133448_ '()))))
                                   (declare (not safe))
                                   (cons '%#quote __tmp134717))))
                            (declare (not safe))
                            (cons __tmp134716 '()))))
                     (declare (not safe))
                     (cons __tmp134718 __tmp134715))))
              (declare (not safe))
              (cons __tmp134720 __tmp134714))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '%#call __tmp134713))))
                                        (declare (not safe))
                                        (cons __tmp134712 '()))))
                                 (declare (not safe))
                                 (cons __tmp134722 __tmp134711))))
                          (declare (not safe))
                          (cons __tmp134724 __tmp134710))))
                   (declare (not safe))
                   (cons '%#if __tmp134709))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134708 '()))))
                                             (declare (not safe))
                                             (cons __tmp134726 __tmp134707))))
                                      (declare (not safe))
                                      (cons '%#let-values __tmp134706))))
                               (declare (not safe))
                               (cons __tmp134705 '()))))
                        (declare (not safe))
                        (cons __tmp134740 __tmp134704)))))
                 (_generate-specializer-impl130676_
                  (lambda (_$klass133441_
                           _$method-table133442_
                           _methods-bind133443_
                           _slots-bind133444_
                           _specializer-impl133445_)
                    (let ((__tmp134741
                           (let ((__tmp134742
                                  (let ((__tmp134748
                                         (let ((__tmp134749
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _$method-table133442_
                                                        '()))))
                                           (declare (not safe))
                                           (cons _$klass133441_ __tmp134749)))
                                        (__tmp134743
                                         (let ((__tmp134744
                                                (let ((__tmp134745
                                                       (let ((__tmp134747
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (foldr1 cons _slots-bind133444_ _methods-bind133443_)))
                     (__tmp134746
                      (let ()
                        (declare (not safe))
                        (cons _specializer-impl133445_ '()))))
                 (declare (not safe))
                 (cons __tmp134747 __tmp134746))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134745))))
                                           (declare (not safe))
                                           (cons __tmp134744 '()))))
                                    (declare (not safe))
                                    (cons __tmp134748 __tmp134743))))
                             (declare (not safe))
                             (cons '%#lambda __tmp134742))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134741 _stx130672_))))
                 (_generate-specializer-def130677_
                  (lambda (_id133437_
                           _specializer-id133438_
                           _specializer-impl133439_)
                    (let ((__tmp134750
                           (let ((__tmp134751
                                  (let ((__tmp134752
                                         (let ((__tmp134765
                                                (let ((__tmp134766
                                                       (let ((__tmp134767
                                                              (let ((__tmp134769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (cons _specializer-id133438_ '())))
                            (__tmp134768
                             (let ()
                               (declare (not safe))
                               (cons _specializer-impl133439_ '()))))
                        (declare (not safe))
                        (cons __tmp134769 __tmp134768))))
                 (declare (not safe))
                 (cons '%#define-values __tmp134767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (gxc#xform-wrap-source
                                                   __tmp134766
                                                   _stx130672_)))
                                               (__tmp134753
                                                (let ((__tmp134754
                                                       (let ((__tmp134755
                                                              (let ((__tmp134756
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134763
                                    (let ((__tmp134764
                                           (let ()
                                             (declare (not safe))
                                             (cons 'bind-specializer! '()))))
                                      (declare (not safe))
                                      (cons '%#ref __tmp134764)))
                                   (__tmp134757
                                    (let ((__tmp134761
                                           (let ((__tmp134762
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _id133437_ '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134762)))
                                          (__tmp134758
                                           (let ((__tmp134759
                                                  (let ((__tmp134760
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _specializer-id133438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref
                                                          __tmp134760))))
                                             (declare (not safe))
                                             (cons __tmp134759 '()))))
                                      (declare (not safe))
                                      (cons __tmp134761 __tmp134758))))
                               (declare (not safe))
                               (cons __tmp134763 __tmp134757))))
                        (declare (not safe))
                        (cons '%#call __tmp134756))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp134755 _stx130672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134754 '()))))
                                           (declare (not safe))
                                           (cons __tmp134765 __tmp134753))))
                                    (declare (not safe))
                                    (cons _stx130672_ __tmp134752))))
                             (declare (not safe))
                             (cons '%#begin __tmp134751))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp134750 _stx130672_)))))
          (let* ((___stx133606133607_ _stx130672_)
                 (_g130680130700_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx133606133607_)))))
            (let ((___kont133608133609_
                   (lambda (_L130744_ _L130745_)
                     (let ((_method-calls130764_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_slot-refs130765_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_empty130766_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_no-specializer?130768_
                                 (lambda ()
                                   (if (let ((__tmp134771
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _method-calls130764_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134771))
                                       (let ((__tmp134770
                                              (let ()
                                                (declare (not safe))
                                                (hash-length
                                                 _slot-refs130765_))))
                                         (declare (not safe))
                                         (fxzero? __tmp134770))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _L130744_))
                             (let* ((___stx133520133521_ _L130744_)
                                    (_g131155131173_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          ___stx133520133521_)))))
                               (let ((___kont133522133523_
                                      (lambda (_L131209_ _L131210_ _L131211_)
                                        (for-each
                                         (lambda (_g131226131228_)
                                           (let ()
                                             (declare (not safe))
                                             (gxc#apply-collect-object-refs
                                              _g131226131228_
                                              _L131211_
                                              _method-calls130764_
                                              _slot-refs130765_)))
                                         _L131209_)
                                        (if (let ()
                                              (declare (not safe))
                                              (_no-specializer?130768_))
                                            _stx130672_
                                            (let* ((_specializer-id131237_
                                                    (let* ((_id131231_
                                                            (let ((__tmp134893
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let () (declare (not safe)) (gx#stx-e _L130745_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp134893 '"::specialize")))
                   (_specializer-id131234_
                    (let ((__tmp134894
                           (let ()
                             (declare (not safe))
                             (gx#stx-source _stx130672_))))
                      (declare (not safe))
                      (gx#core-quote-syntax__1 _id131231_ __tmp134894))))
              (let ()
                (declare (not safe))
                (gx#core-bind-runtime!__0 _specializer-id131234_))
              _specializer-id131234_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_$klass131239_
                                                    (let ((__tmp134895
                                                           (gensym '__klass)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp134895)))
                                                   (_$method-table131241_
                                                    (let ((__tmp134896
                                                           (gensym '__method-table)))
                                                      (declare (not safe))
                                                      (make-symbol__0
                                                       __tmp134896)))
                                                   (_methods131243_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _method-calls130764_)))
                                                   (_$methods131247_
                                                    (map (lambda (_id131245_)
                                                           (let ((__tmp134897
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131245_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp134897)))
                 _methods131243_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g134898_
                                                    (for-each
                                                     (lambda (_g131248131251_
                                                              _g131249131253_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _method-calls130764_
                                                          _g131248131251_
                                                          _g131249131253_)))
                                                     _methods131243_
                                                     _$methods131247_))
                                                   (_methods-bind131264_
                                                    (map (lambda (_g131256131259_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131257131261_)
                   (let ()
                     (declare (not safe))
                     (_generate-method-bind130674_
                      _$klass131239_
                      _$method-table131241_
                      _g131256131259_
                      _g131257131261_)))
                 _methods131243_
                 _$methods131247_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_slots131266_
                                                    (let ()
                                                      (declare (not safe))
                                                      (hash-keys
                                                       _slot-refs130765_)))
                                                   (_$slots131270_
                                                    (map (lambda (_id131268_)
                                                           (let ((__tmp134899
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gensym _id131268_)))
                     (declare (not safe))
                     (make-symbol__1 '"__" __tmp134899)))
                 _slots131266_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g134900_
                                                    (for-each
                                                     (lambda (_g131271131274_
                                                              _g131272131276_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (hash-put!
                                                          _slot-refs130765_
                                                          _g131271131274_
                                                          _g131272131276_)))
                                                     _slots131266_
                                                     _$slots131270_))
                                                   (_slots-bind131287_
                                                    (map (lambda (_g131279131282_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g131280131284_)
                   (let ()
                     (declare (not safe))
                     (_generate-slot-bind130675_
                      _$klass131239_
                      _g131279131282_
                      _g131280131284_)))
                 _slots131266_
                 _$slots131270_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-body131293_
                                                    (map (lambda (_g131288131290_)
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gxc#apply-subst-object-refs
                                                              _g131288131290_
                                                              _L131211_
                                                              _$klass131239_
                                                              _method-calls130764_
                                                              _slot-refs130765_)))
                                                         _L131209_))
                                                   (_specializer-impl131295_
                                                    (let ((__tmp134901
                                                           (let ((__tmp134902
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134903
                                 (let ()
                                   (declare (not safe))
                                   (cons _L131211_ _L131210_))))
                            (declare (not safe))
                            (cons __tmp134903 _specializer-body131293_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp134902))))
              (declare (not safe))
              (gxc#xform-wrap-source __tmp134901 _stx130672_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_specializer-impl131297_
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-impl130676_
                                                       _$klass131239_
                                                       _$method-table131241_
                                                       _methods-bind131264_
                                                       _slots-bind131287_
                                                       _specializer-impl131295_))))
                                              (let ((__tmp134905
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e _L130745_)))
                                                    (__tmp134904
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _specializer-id131237_))))
                                                (declare (not safe))
                                                (gxc#verbose
                                                 '"generate method specializer "
                                                 __tmp134905
                                                 '" => "
                                                 __tmp134904))
                                              (let ()
                                                (declare (not safe))
                                                (_generate-specializer-def130677_
                                                 _L130745_
                                                 _specializer-id131237_
                                                 _specializer-impl131297_))))))
                                     (___kont133524133525_
                                      (lambda () _stx130672_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? ___stx133520133521_))
                                     (let ((_e131162131185_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e ___stx133520133521_))))
                                       (let ((_tl131160131190_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _e131162131185_)))
                                             (_hd131161131188_
                                              (let ()
                                                (declare (not safe))
                                                (##car _e131162131185_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair? _tl131160131190_))
                                             (let ((_e131165131193_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _tl131160131190_))))
                                               (let ((_tl131163131198_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e131165131193_)))
                                                     (_hd131164131196_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e131165131193_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _hd131164131196_))
                                                     (let ((_e131168131201_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _hd131164131196_))))
                                                       (let ((_tl131166131206_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e131168131201_)))
                     (_hd131167131204_
                      (let () (declare (not safe)) (##car _e131168131201_))))
                 (___kont133522133523_
                  _tl131163131198_
                  _tl131166131206_
                  _hd131167131204_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont133524133525_))))
                                             (___kont133524133525_))))
                                     (___kont133524133525_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _L130744_))
                                 (let* ((_g131303131322_
                                         (lambda (_g131304131319_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131304131319_))))
                                        (_g131302131605_
                                         (lambda (_g131304131325_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _g131304131325_))
                                               (let ((_e131308131327_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _g131304131325_))))
                                                 (let ((_hd131307131330_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e131308131327_)))
                                                       (_tl131306131332_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e131308131327_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _tl131306131332_))
                                                       (let ((_g134876_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _tl131306131332_ '0))))
                 (begin
                   (let ((_g134877_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g134876_)
                                (##vector-length _g134876_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g134877_ 2)))
                         (error "Context expects 2 values" _g134877_)))
                   (let ((_target131309131335_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g134876_ 0)))
                         (_tl131311131337_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _g134876_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _tl131311131337_))
                         (letrec ((_loop131312131340_
                                   (lambda (_hd131310131343_
                                            _clause131316131345_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131310131343_))
                                         (let ((_e131313131348_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131310131343_))))
                                           (let ((_lp-hd131314131351_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131313131348_)))
                                                 (_lp-tl131315131353_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131313131348_))))
                                             (let ((__tmp134892
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _lp-hd131314131351_
                                                            _clause131316131345_))))
                                               (declare (not safe))
                                               (_loop131312131340_
                                                _lp-tl131315131353_
                                                __tmp134892))))
                                         (let ((_clause131317131356_
                                                (reverse _clause131316131345_)))
                                           ((lambda (_L131359_)
                                              (for-each
                                               (lambda (_clause131372_)
                                                 (let* ((___stx133546133547_
                                                         _clause131372_)
                                                        (_g131375131390_
                                                         (lambda ()
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              ___stx133546133547_)))))
                                                   (let ((___kont133548133549_
                                                          (lambda (_L131418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131419_
                           _L131420_)
                    (for-each
                     (lambda (_g131435131437_)
                       (let ()
                         (declare (not safe))
                         (gxc#apply-collect-object-refs
                          _g131435131437_
                          _L131420_
                          _method-calls130764_
                          _slot-refs130765_)))
                     _L131418_)))
                 (___kont133550133551_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            ___stx133546133547_))
                                                         (let ((_e131382131402_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e ___stx133546133547_))))
                   (let ((_tl131380131407_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131382131402_)))
                         (_hd131381131405_
                          (let ()
                            (declare (not safe))
                            (##car _e131382131402_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _hd131381131405_))
                         (let ((_e131385131410_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _hd131381131405_))))
                           (let ((_tl131383131415_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _e131385131410_)))
                                 (_hd131384131413_
                                  (let ()
                                    (declare (not safe))
                                    (##car _e131385131410_))))
                             (___kont133548133549_
                              _tl131380131407_
                              _tl131383131415_
                              _hd131384131413_)))
                         (___kont133550133551_))))
                 (___kont133550133551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((__tmp134878
                                                      (lambda (_g131442131445_
                                                               _g131443131447_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g131442131445_
                                                                _g131443131447_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp134878
                                                         '()
                                                         _L131359_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130768_))
                                                  _stx130672_
                                                  (let* ((_specializer-id131456_
                                                          (let* ((_id131450_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134879
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130745_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134879 '"::specialize")))
                         (_specializer-id131453_
                          (let ((__tmp134880
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130672_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id131450_ __tmp134880))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id131453_))
                    _specializer-id131453_))
                 (_$klass131458_
                  (let ((__tmp134881 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134881)))
                 (_$method-table131460_
                  (let ((__tmp134882 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134882)))
                 (_methods131462_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130764_)))
                 (_$methods131466_
                  (map (lambda (_id131464_)
                         (let ((__tmp134883 (gensym _id131464_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134883)))
                       _methods131462_))
                 (_g134884_
                  (for-each
                   (lambda (_g131467131470_ _g131468131472_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130764_
                        _g131467131470_
                        _g131468131472_)))
                   _methods131462_
                   _$methods131466_))
                 (_methods-bind131483_
                  (map (lambda (_g131475131478_ _g131476131480_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130674_
                            _$klass131458_
                            _$method-table131460_
                            _g131475131478_
                            _g131476131480_)))
                       _methods131462_
                       _$methods131466_))
                 (_slots131485_
                  (let () (declare (not safe)) (hash-keys _slot-refs130765_)))
                 (_$slots131489_
                  (map (lambda (_id131487_)
                         (let ((__tmp134885 (gensym _id131487_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134885)))
                       _slots131485_))
                 (_g134886_
                  (for-each
                   (lambda (_g131490131493_ _g131491131495_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130765_
                        _g131490131493_
                        _g131491131495_)))
                   _slots131485_
                   _$slots131489_))
                 (_slots-bind131506_
                  (map (lambda (_g131498131501_ _g131499131503_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130675_
                            _$klass131458_
                            _g131498131501_
                            _g131499131503_)))
                       _slots131485_
                       _$slots131489_))
                 (_specializer-clauses131598_
                  (map (lambda (_clause131508_)
                         (let* ((___stx133566133567_ _clause131508_)
                                (_g131511131526_
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      ___stx133566133567_)))))
                           (let ((___kont133568133569_
                                  (lambda (_L131554_ _L131555_ _L131556_)
                                    (let* ((_body131586_
                                            (map (lambda (_g131581131583_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#apply-subst-object-refs
                                                      _g131581131583_
                                                      _L131556_
                                                      _$klass131458_
                                                      _method-calls130764_
                                                      _slot-refs130765_)))
                                                 _L131554_))
                                           (__tmp134887
                                            (let ()
                                              (declare (not safe))
                                              (cons _L131556_ _L131555_))))
                                      (declare (not safe))
                                      (cons __tmp134887 _body131586_))))
                                 (___kont133570133571_
                                  (lambda () _clause131508_)))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? ___stx133566133567_))
                                 (let ((_e131518131538_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e ___stx133566133567_))))
                                   (let ((_tl131516131543_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e131518131538_)))
                                         (_hd131517131541_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e131518131538_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _hd131517131541_))
                                         (let ((_e131521131546_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _hd131517131541_))))
                                           (let ((_tl131519131551_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131521131546_)))
                                                 (_hd131520131549_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131521131546_))))
                                             (___kont133568133569_
                                              _tl131516131543_
                                              _tl131519131551_
                                              _hd131520131549_)))
                                         (___kont133570133571_))))
                                 (___kont133570133571_)))))
                       (let ((__tmp134888
                              (lambda (_g131590131593_ _g131591131595_)
                                (let ()
                                  (declare (not safe))
                                  (cons _g131590131593_ _g131591131595_)))))
                         (declare (not safe))
                         (foldr1 __tmp134888 '() _L131359_))))
                 (_specializer-impl131600_
                  (let ((__tmp134889
                         (let ()
                           (declare (not safe))
                           (cons '%#case-lambda _specializer-clauses131598_))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134889 _stx130672_)))
                 (_specializer-impl131602_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130676_
                     _$klass131458_
                     _$method-table131460_
                     _methods-bind131483_
                     _slots-bind131506_
                     _specializer-impl131600_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134891
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130745_)))
                                                          (__tmp134890
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id131456_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134891
                                                       '" => "
                                                       __tmp134890))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130677_
                                                       _L130745_
                                                       _specializer-id131456_
                                                       _specializer-impl131602_)))))
                                            _clause131317131356_))))))
                           (let ()
                             (declare (not safe))
                             (_loop131312131340_ _target131309131335_ '())))
                         (let ()
                           (declare (not safe))
                           (_g131303131322_ _g131304131325_))))))
               (let ()
                 (declare (not safe))
                 (_g131303131322_ _g131304131325_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g131303131322_
                                                  _g131304131325_))))))
                                   (declare (not safe))
                                   (_g131302131605_ _L130744_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr? _L130744_))
                                     (let* ((_g131608131638_
                                             (lambda (_g131609131635_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g131609131635_))))
                                            (_g131607132243_
                                             (lambda (_g131609131641_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g131609131641_))
                                                   (let ((_e131615131643_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g131609131641_))))
                                                     (let ((_hd131614131646_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e131615131643_)))
                                                           (_tl131613131648_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e131615131643_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl131613131648_))
                                                           (let ((_e131618131651_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl131613131648_))))
                     (let ((_hd131617131654_
                            (let ()
                              (declare (not safe))
                              (##car _e131618131651_)))
                           (_tl131616131656_
                            (let ()
                              (declare (not safe))
                              (##cdr _e131618131651_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd131617131654_))
                           (let ((_e131621131659_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd131617131654_))))
                             (let ((_hd131620131662_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e131621131659_)))
                                   (_tl131619131664_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e131621131659_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd131620131662_))
                                   (let ((_e131624131667_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd131620131662_))))
                                     (let ((_hd131623131670_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e131624131667_)))
                                           (_tl131622131672_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e131624131667_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _hd131623131670_))
                                           (let ((_e131627131675_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _hd131623131670_))))
                                             (let ((_hd131626131678_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e131627131675_)))
                                                   (_tl131625131680_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e131627131675_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl131625131680_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _tl131622131672_))
                                                       (let ((_e131630131683_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _tl131622131672_))))
                 (let ((_hd131629131686_
                        (let () (declare (not safe)) (##car _e131630131683_)))
                       (_tl131628131688_
                        (let () (declare (not safe)) (##cdr _e131630131683_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl131628131688_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl131619131664_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl131616131656_))
                               (let ((_e131633131691_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl131616131656_))))
                                 (let ((_hd131632131694_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e131633131691_)))
                                       (_tl131631131696_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e131633131691_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl131631131696_))
                                       ((lambda (_L131699_ _L131700_ _L131701_)
                                          (let* ((_g131724131742_
                                                  (lambda (_g131725131739_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131725131739_))))
                                                 (_g131723131793_
                                                  (lambda (_g131725131745_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131725131745_))
                                                        (let ((_e131731131747_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131725131745_))))
                  (let ((_hd131730131750_
                         (let () (declare (not safe)) (##car _e131731131747_)))
                        (_tl131729131752_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131731131747_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl131729131752_))
                        (let ((_e131734131755_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl131729131752_))))
                          (let ((_hd131733131758_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e131734131755_)))
                                (_tl131732131760_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e131734131755_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd131733131758_))
                                (let ((_e131737131763_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd131733131758_))))
                                  (let ((_hd131736131766_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131737131763_)))
                                        (_tl131735131768_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131737131763_))))
                                    ((lambda (_L131771_ _L131772_ _L131773_)
                                       (for-each
                                        (lambda (_g131788131790_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-collect-object-refs
                                             _g131788131790_
                                             _L131773_
                                             _method-calls130764_
                                             _slot-refs130765_)))
                                        _L131771_))
                                     _tl131732131760_
                                     _tl131735131768_
                                     _hd131736131766_)))
                                (let ()
                                  (declare (not safe))
                                  (_g131724131742_ _g131725131745_)))))
                        (let ()
                          (declare (not safe))
                          (_g131724131742_ _g131725131745_)))))
                (let ()
                  (declare (not safe))
                  (_g131724131742_ _g131725131745_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131723131793_ _L131700_))
                                          (let* ((_g131796131815_
                                                  (lambda (_g131797131812_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       _g131797131812_))))
                                                 (_g131795131934_
                                                  (lambda (_g131797131818_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _g131797131818_))
                                                        (let ((_e131801131820_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _g131797131818_))))
                  (let ((_hd131800131823_
                         (let () (declare (not safe)) (##car _e131801131820_)))
                        (_tl131799131825_
                         (let ()
                           (declare (not safe))
                           (##cdr _e131801131820_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl131799131825_))
                        (let ((_g134846_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl131799131825_
                                  '0))))
                          (begin
                            (let ((_g134847_
                                   (let ()
                                     (declare (not safe))
                                     (if (##values? _g134846_)
                                         (##vector-length _g134846_)
                                         1))))
                              (if (not (let ()
                                         (declare (not safe))
                                         (##fx= _g134847_ 2)))
                                  (error "Context expects 2 values"
                                         _g134847_)))
                            (let ((_target131802131828_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g134846_ 0)))
                                  (_tl131804131830_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref _g134846_ 1))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl131804131830_))
                                  (letrec ((_loop131805131833_
                                            (lambda (_hd131803131836_
                                                     _clause131809131838_)
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd131803131836_))
                                                  (let ((_e131806131841_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd131803131836_))))
                                                    (let ((_lp-hd131807131844_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e131806131841_)))
                                                          (_lp-tl131808131846_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e131806131841_))))
                                                      (let ((__tmp134849
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (cons _lp-hd131807131844_ _clause131809131838_))))
                (declare (not safe))
                (_loop131805131833_ _lp-tl131808131846_ __tmp134849))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_clause131810131849_
                                                         (reverse _clause131809131838_)))
                                                    ((lambda (_L131852_)
                                                       (for-each
                                                        (lambda (_clause131865_)
                                                          (let* ((_g131867131882_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g131868131879_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g131868131879_))))
                         (_g131866131924_
                          (lambda (_g131868131885_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g131868131885_))
                                (let ((_e131874131887_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g131868131885_))))
                                  (let ((_hd131873131890_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e131874131887_)))
                                        (_tl131872131892_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e131874131887_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd131873131890_))
                                        (let ((_e131877131895_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd131873131890_))))
                                          (let ((_hd131876131898_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131877131895_)))
                                                (_tl131875131900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131877131895_))))
                                            ((lambda (_L131903_
                                                      _L131904_
                                                      _L131905_)
                                               (for-each
                                                (lambda (_g131919131921_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (gxc#apply-collect-object-refs
                                                     _g131919131921_
                                                     _L131905_
                                                     _method-calls130764_
                                                     _slot-refs130765_)))
                                                _L131903_))
                                             _tl131872131892_
                                             _tl131875131900_
                                             _hd131876131898_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g131867131882_ _g131868131885_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g131867131882_ _g131868131885_))))))
                    (declare (not safe))
                    (_g131866131924_ _clause131865_)))
                (let ((__tmp134848
                       (lambda (_g131926131929_ _g131927131931_)
                         (let ()
                           (declare (not safe))
                           (cons _g131926131929_ _g131927131931_)))))
                  (declare (not safe))
                  (foldr1 __tmp134848 '() _L131852_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _clause131810131849_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_loop131805131833_
                                       _target131802131828_
                                       '())))
                                  (let ()
                                    (declare (not safe))
                                    (_g131796131815_ _g131797131818_))))))
                        (let ()
                          (declare (not safe))
                          (_g131796131815_ _g131797131818_)))))
                (let ()
                  (declare (not safe))
                  (_g131796131815_ _g131797131818_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (declare (not safe))
                                            (_g131795131934_ _L131699_))
                                          (if (let ()
                                                (declare (not safe))
                                                (_no-specializer?130768_))
                                              _stx130672_
                                              (let* ((_specializer-id131943_
                                                      (let* ((_id131937_
                                                              (let ((__tmp134850
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _L130745_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp134850 '"::specialize")))
                     (_specializer-id131940_
                      (let ((__tmp134851
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _stx130672_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _id131937_ __tmp134851))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _specializer-id131940_))
                _specializer-id131940_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_$klass131945_
                                                      (let ((__tmp134852
                                                             (gensym '__klass)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp134852)))
                                                     (_$method-table131947_
                                                      (let ((__tmp134853
                                                             (gensym '__method-table)))
                                                        (declare (not safe))
                                                        (make-symbol__0
                                                         __tmp134853)))
                                                     (_methods131949_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _method-calls130764_)))
                                                     (_$methods131953_
                                                      (map (lambda (_id131951_)
                                                             (let ((__tmp134854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131951_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp134854)))
                   _methods131949_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g134855_
                                                      (for-each
                                                       (lambda (_g131954131957_
                                                                _g131955131959_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _method-calls130764_
                                                            _g131954131957_
                                                            _g131955131959_)))
                                                       _methods131949_
                                                       _$methods131953_))
                                                     (_methods-bind131970_
                                                      (map (lambda (_g131962131965_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131963131967_)
                     (let ()
                       (declare (not safe))
                       (_generate-method-bind130674_
                        _$klass131945_
                        _$method-table131947_
                        _g131962131965_
                        _g131963131967_)))
                   _methods131949_
                   _$methods131953_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_slots131972_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash-keys
                                                         _slot-refs130765_)))
                                                     (_$slots131976_
                                                      (map (lambda (_id131974_)
                                                             (let ((__tmp134856
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gensym _id131974_)))
                       (declare (not safe))
                       (make-symbol__1 '"__" __tmp134856)))
                   _slots131972_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g134857_
                                                      (for-each
                                                       (lambda (_g131977131980_
                                                                _g131978131982_)
                                                         (let ()
                                                           (declare (not safe))
                                                           (hash-put!
                                                            _slot-refs130765_
                                                            _g131977131980_
                                                            _g131978131982_)))
                                                       _slots131972_
                                                       _$slots131976_))
                                                     (_slots-bind131993_
                                                      (map (lambda (_g131985131988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g131986131990_)
                     (let ()
                       (declare (not safe))
                       (_generate-slot-bind130675_
                        _$klass131945_
                        _g131985131988_
                        _g131986131990_)))
                   _slots131972_
                   _$slots131976_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-lambda-expr132079_
                                                      (let* ((_g131995132013_
                                                              (lambda (_g131996132010_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g131996132010_))))
                     (_g131994132076_
                      (lambda (_g131996132016_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g131996132016_))
                            (let ((_e132002132018_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g131996132016_))))
                              (let ((_hd132001132021_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132002132018_)))
                                    (_tl132000132023_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132002132018_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132000132023_))
                                    (let ((_e132005132026_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132000132023_))))
                                      (let ((_hd132004132029_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132005132026_)))
                                            (_tl132003132031_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132005132026_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132004132029_))
                                            (let ((_e132008132034_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132004132029_))))
                                              (let ((_hd132007132037_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132008132034_)))
                                                    (_tl132006132039_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132008132034_))))
                                                ((lambda (_L132042_
                                                          _L132043_
                                                          _L132044_)
                                                   (let* ((_body132074_
                                                           (map (lambda (_g132069132071_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gxc#apply-subst-object-refs
                             _g132069132071_
                             _L132044_
                             _$klass131945_
                             _method-calls130764_
                             _slot-refs130765_)))
                        _L132042_))
                  (__tmp134858
                   (let ((__tmp134859
                          (let ((__tmp134860
                                 (let ()
                                   (declare (not safe))
                                   (cons _L132044_ _L132043_))))
                            (declare (not safe))
                            (cons __tmp134860 _body132074_))))
                     (declare (not safe))
                     (cons '%#lambda __tmp134859))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp134858
                                                      _L131700_)))
                                                 _tl132003132031_
                                                 _tl132006132039_
                                                 _hd132007132037_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g131995132013_
                                               _g131996132016_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g131995132013_ _g131996132016_)))))
                            (let ()
                              (declare (not safe))
                              (_g131995132013_ _g131996132016_))))))
                (declare (not safe))
                (_g131994132076_ _L131700_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-case-lambda-expr132236_
                                                      (let* ((_g132081132100_
                                                              (lambda (_g132082132097_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132082132097_))))
                     (_g132080132233_
                      (lambda (_g132082132103_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132082132103_))
                            (let ((_e132086132105_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132082132103_))))
                              (let ((_hd132085132108_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132086132105_)))
                                    (_tl132084132110_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132086132105_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl132084132110_))
                                    (let ((_g134861_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl132084132110_
                                              '0))))
                                      (begin
                                        (let ((_g134862_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134861_)
                                                     (##vector-length
                                                      _g134861_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134862_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134862_)))
                                        (let ((_target132087132113_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134861_ 0)))
                                              (_tl132089132115_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134861_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132089132115_))
                                              (letrec ((_loop132090132118_
                                                        (lambda (_hd132088132121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _clause132094132123_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132088132121_))
                      (let ((_e132091132126_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132088132121_))))
                        (let ((_lp-hd132092132129_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132091132126_)))
                              (_lp-tl132093132131_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132091132126_))))
                          (let ((__tmp134866
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132092132129_
                                         _clause132094132123_))))
                            (declare (not safe))
                            (_loop132090132118_
                             _lp-tl132093132131_
                             __tmp134866))))
                      (let ((_clause132095132134_
                             (reverse _clause132094132123_)))
                        ((lambda (_L132137_)
                           (let* ((_clauses132231_
                                   (map (lambda (_clause132151_)
                                          (let* ((___stx133586133587_
                                                  _clause132151_)
                                                 (_g132154132169_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx133586133587_)))))
                                            (let ((___kont133588133589_
                                                   (lambda (_L132197_
                                                            _L132198_
                                                            _L132199_)
                                                     (let* ((_body132219_
                                                             (map (lambda (_g132214132216_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gxc#apply-subst-object-refs
                               _g132214132216_
                               _L132199_
                               _$klass131945_
                               _method-calls130764_
                               _slot-refs130765_)))
                          _L132197_))
                    (__tmp134863
                     (let () (declare (not safe)) (cons _L132199_ _L132198_))))
               (declare (not safe))
               (cons __tmp134863 _body132219_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133590133591_
                                                   (lambda () _clause132151_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     ___stx133586133587_))
                                                  (let ((_e132161132181_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            ___stx133586133587_))))
                                                    (let ((_tl132159132186_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e132161132181_)))
                                                          (_hd132160132184_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e132161132181_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _hd132160132184_))
                                                          (let ((_e132164132189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _hd132160132184_))))
                    (let ((_tl132162132194_
                           (let ()
                             (declare (not safe))
                             (##cdr _e132164132189_)))
                          (_hd132163132192_
                           (let ()
                             (declare (not safe))
                             (##car _e132164132189_))))
                      (___kont133588133589_
                       _tl132159132186_
                       _tl132162132194_
                       _hd132163132192_)))
                  (___kont133590133591_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133590133591_)))))
                                        (let ((__tmp134864
                                               (lambda (_g132223132226_
                                                        _g132224132228_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g132223132226_
                                                         _g132224132228_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp134864 '() _L132137_))))
                                  (__tmp134865
                                   (let ()
                                     (declare (not safe))
                                     (cons '%#case-lambda _clauses132231_))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp134865 _L131699_)))
                         _clause132095132134_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132090132118_
                                                   _target132087132113_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132081132100_
                                                 _g132082132103_))))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132081132100_ _g132082132103_)))))
                            (let ()
                              (declare (not safe))
                              (_g132081132100_ _g132082132103_))))))
                (declare (not safe))
                (_g132080132233_ _L131699_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132238_
                                                      (let ((__tmp134867
                                                             (let ((__tmp134868
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ((__tmp134870
                                   (let ((__tmp134871
                                          (let ((__tmp134873
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _L131701_ '())))
                                                (__tmp134872
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _specializer-lambda-expr132079_
                                                         '()))))
                                            (declare (not safe))
                                            (cons __tmp134873 __tmp134872))))
                                     (declare (not safe))
                                     (cons __tmp134871 '())))
                                  (__tmp134869
                                   (let ()
                                     (declare (not safe))
                                     (cons _specializer-case-lambda-expr132236_
                                           '()))))
                              (declare (not safe))
                              (cons __tmp134870 __tmp134869))))
                       (declare (not safe))
                       (cons '%#let-values __tmp134868))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp134867 _stx130672_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_specializer-impl132240_
                                                      (let ()
                                                        (declare (not safe))
                                                        (_generate-specializer-impl130676_
                                                         _$klass131945_
                                                         _$method-table131947_
                                                         _methods-bind131970_
                                                         _slots-bind131993_
                                                         _specializer-impl132238_))))
                                                (let ((__tmp134875
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e _L130745_)))
                                                      (__tmp134874
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _specializer-id131943_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp134875
                                                   '" => "
                                                   __tmp134874))
                                                (let ()
                                                  (declare (not safe))
                                                  (_generate-specializer-def130677_
                                                   _L130745_
                                                   _specializer-id131943_
                                                   _specializer-impl132240_)))))
                                        _hd131632131694_
                                        _hd131629131686_
                                        _hd131626131678_)
                                       (let ()
                                         (declare (not safe))
                                         (_g131608131638_ _g131609131641_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g131608131638_ _g131609131641_)))
                           (let ()
                             (declare (not safe))
                             (_g131608131638_ _g131609131641_)))
                       (let ()
                         (declare (not safe))
                         (_g131608131638_ _g131609131641_)))))
               (let () (declare (not safe)) (_g131608131638_ _g131609131641_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131608131638_
                                                      _g131609131641_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g131608131638_
                                              _g131609131641_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g131608131638_ _g131609131641_)))))
                           (let ()
                             (declare (not safe))
                             (_g131608131638_ _g131609131641_)))))
                   (let ()
                     (declare (not safe))
                     (_g131608131638_ _g131609131641_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g131608131638_
                                                      _g131609131641_))))))
                                       (declare (not safe))
                                       (_g131607132243_ _L130744_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr? _L130744_))
                                         (let* ((_g132246132299_
                                                 (lambda (_g132247132296_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132247132296_))))
                                                (_g132245133430_
                                                 (lambda (_g132247132302_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132247132302_))
                                                       (let ((_e132255132304_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132247132302_))))
                 (let ((_hd132254132307_
                        (let () (declare (not safe)) (##car _e132255132304_)))
                       (_tl132253132309_
                        (let () (declare (not safe)) (##cdr _e132255132304_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _hd132254132307_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _hd132254132307_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _tl132253132309_))
                               (let ((_e132258132312_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _tl132253132309_))))
                                 (let ((_hd132257132315_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132258132312_)))
                                       (_tl132256132317_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132258132312_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132257132315_))
                                       (let ((_e132261132320_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132257132315_))))
                                         (let ((_hd132260132323_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132261132320_)))
                                               (_tl132259132325_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132261132320_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132260132323_))
                                               (let ((_e132264132328_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132260132323_))))
                                                 (let ((_hd132263132331_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132264132328_)))
                                                       (_tl132262132333_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132264132328_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _hd132263132331_))
                                                       (let ((_e132267132336_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _hd132263132331_))))
                 (let ((_hd132266132339_
                        (let () (declare (not safe)) (##car _e132267132336_)))
                       (_tl132265132341_
                        (let () (declare (not safe)) (##cdr _e132267132336_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _tl132265132341_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _tl132262132333_))
                           (let ((_e132270132344_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _tl132262132333_))))
                             (let ((_hd132269132347_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132270132344_)))
                                   (_tl132268132349_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132270132344_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132269132347_))
                                   (let ((_e132273132352_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132269132347_))))
                                     (let ((_hd132272132355_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132273132352_)))
                                           (_tl132271132357_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132273132352_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier? _hd132272132355_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _hd132272132355_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _tl132271132357_))
                                                   (let ((_e132276132360_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _tl132271132357_))))
                                                     (let ((_hd132275132363_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132276132360_)))
                                                           (_tl132274132365_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132276132360_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _hd132275132363_))
                                                           (let ((_e132279132368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _hd132275132363_))))
                     (let ((_hd132278132371_
                            (let ()
                              (declare (not safe))
                              (##car _e132279132368_)))
                           (_tl132277132373_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132279132368_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _hd132278132371_))
                           (let ((_e132282132376_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _hd132278132371_))))
                             (let ((_hd132281132379_
                                    (let ()
                                      (declare (not safe))
                                      (##car _e132282132376_)))
                                   (_tl132280132381_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _e132282132376_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd132281132379_))
                                   (let ((_e132285132384_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _hd132281132379_))))
                                     (let ((_hd132284132387_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132285132384_)))
                                           (_tl132283132389_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132285132384_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132283132389_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _tl132280132381_))
                                               (let ((_e132288132392_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _tl132280132381_))))
                                                 (let ((_hd132287132395_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132288132392_)))
                                                       (_tl132286132397_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132288132392_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132286132397_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _tl132277132373_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _tl132274132365_))
                       (let ((_e132291132400_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132274132365_))))
                         (let ((_hd132290132403_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132291132400_)))
                               (_tl132289132405_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132291132400_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132289132405_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _tl132268132349_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _tl132259132325_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair? _tl132256132317_))
                                           (let ((_e132294132408_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _tl132256132317_))))
                                             (let ((_hd132293132411_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _e132294132408_)))
                                                   (_tl132292132413_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _e132294132408_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _tl132292132413_))
                                                   ((lambda (_L132416_
                                                             _L132417_
                                                             _L132418_
                                                             _L132419_
                                                             _L132420_)
                                                      (let* ((_g132459132521_
                                                              (lambda (_g132460132518_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g132460132518_))))
                     (_g132458133427_
                      (lambda (_g132460132524_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _g132460132524_))
                            (let ((_e132468132526_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _g132460132524_))))
                              (let ((_hd132467132529_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132468132526_)))
                                    (_tl132466132531_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132468132526_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd132467132529_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#lambda
                                           _hd132467132529_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl132466132531_))
                                            (let ((_e132471132534_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl132466132531_))))
                                              (let ((_hd132470132537_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132471132534_)))
                                                    (_tl132469132539_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132471132534_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132469132539_))
                                                    (let ((_e132474132542_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132469132539_))))
                                                      (let ((_hd132473132545_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132474132542_)))
                    (_tl132472132547_
                     (let () (declare (not safe)) (##cdr _e132474132542_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _hd132473132545_))
                    (let ((_e132477132550_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd132473132545_))))
                      (let ((_hd132476132553_
                             (let ()
                               (declare (not safe))
                               (##car _e132477132550_)))
                            (_tl132475132555_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132477132550_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#identifier? _hd132476132553_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-eq? '%#call _hd132476132553_))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl132475132555_))
                                    (let ((_e132480132558_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _tl132475132555_))))
                                      (let ((_hd132479132561_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132480132558_)))
                                            (_tl132478132563_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132480132558_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _hd132479132561_))
                                            (let ((_e132483132566_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _hd132479132561_))))
                                              (let ((_hd132482132569_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e132483132566_)))
                                                    (_tl132481132571_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e132483132566_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#identifier?
                                                       _hd132482132569_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-eq?
                                                           '%#ref
                                                           _hd132482132569_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl132481132571_))
                                                            (let ((_e132486132574_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl132481132571_))))
                      (let ((_hd132485132577_
                             (let ()
                               (declare (not safe))
                               (##car _e132486132574_)))
                            (_tl132484132579_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132486132574_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132484132579_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl132478132563_))
                                (let ((_e132489132582_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl132478132563_))))
                                  (let ((_hd132488132585_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e132489132582_)))
                                        (_tl132487132587_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e132489132582_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd132488132585_))
                                        (let ((_e132492132590_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd132488132585_))))
                                          (let ((_hd132491132593_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e132492132590_)))
                                                (_tl132490132595_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e132492132590_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#identifier?
                                                   _hd132491132593_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-eq?
                                                       '%#ref
                                                       _hd132491132593_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl132490132595_))
                                                        (let ((_e132495132598_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-e _tl132490132595_))))
                  (let ((_hd132494132601_
                         (let () (declare (not safe)) (##car _e132495132598_)))
                        (_tl132493132603_
                         (let ()
                           (declare (not safe))
                           (##cdr _e132495132598_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl132493132603_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132487132587_))
                            (let ((_e132498132606_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132487132587_))))
                              (let ((_hd132497132609_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132498132606_)))
                                    (_tl132496132611_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132498132606_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd132497132609_))
                                    (let ((_e132501132614_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd132497132609_))))
                                      (let ((_hd132500132617_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e132501132614_)))
                                            (_tl132499132619_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e132501132614_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd132500132617_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd132500132617_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl132499132619_))
                                                    (let ((_e132504132622_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl132499132619_))))
                                                      (let ((_hd132503132625_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e132504132622_)))
                    (_tl132502132627_
                     (let () (declare (not safe)) (##cdr _e132504132622_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl132502132627_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl132496132611_))
                        (if (fx>= (let ()
                                    (declare (not safe))
                                    (gx#stx-length _tl132496132611_))
                                  '1)
                            (let ((_g134772_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl132496132611_
                                      '1))))
                              (begin
                                (let ((_g134773_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134772_)
                                             (##vector-length _g134772_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134773_ 2)))
                                      (error "Context expects 2 values"
                                             _g134773_)))
                                (let ((_target132505132630_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134772_ 0)))
                                      (_tl132507132632_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134772_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl132507132632_))
                                      (let ((_e132516132635_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _tl132507132632_))))
                                        (let ((_hd132515132638_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e132516132635_)))
                                              (_tl132514132640_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e132516132635_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl132514132640_))
                                              (letrec ((_loop132508132643_
                                                        (lambda (_hd132506132646_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _kw-ref132512132648_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd132506132646_))
                      (let ((_e132509132651_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _hd132506132646_))))
                        (let ((_lp-hd132510132654_
                               (let ()
                                 (declare (not safe))
                                 (##car _e132509132651_)))
                              (_lp-tl132511132656_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e132509132651_))))
                          (let ((__tmp134845
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd132510132654_
                                         _kw-ref132512132648_))))
                            (declare (not safe))
                            (_loop132508132643_
                             _lp-tl132511132656_
                             __tmp134845))))
                      (let ((_kw-ref132513132659_
                             (reverse _kw-ref132512132648_)))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl132472132547_))
                            ((lambda (_L132662_
                                      _L132663_
                                      _L132664_
                                      _L132665_
                                      _L132666_)
                               (let* ((_kw-count132717_
                                       (length (let ((__tmp134774
                                                      (lambda (_g132709132712_
                                                               _g132710132714_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _g132709132712_
                                                                _g132710132714_)))))
                                                 (declare (not safe))
                                                 (foldr1 __tmp134774
                                                         '()
                                                         _L132663_))))
                                      (_self-index132719_
                                       (let ()
                                         (declare (not safe))
                                         (fx+ _kw-count132717_ '1))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#lambda-expr? _L132418_))
                                     (let* ((_g132722132736_
                                             (lambda (_g132723132733_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _g132723132733_))))
                                            (_g132721132849_
                                             (lambda (_g132723132739_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _g132723132739_))
                                                   (let ((_e132728132741_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _g132723132739_))))
                                                     (let ((_hd132727132744_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _e132728132741_)))
                                                           (_tl132726132746_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _e132728132741_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132726132746_))
                                                           (let ((_e132731132749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132726132746_))))
                     (let ((_hd132730132752_
                            (let ()
                              (declare (not safe))
                              (##car _e132731132749_)))
                           (_tl132729132754_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132731132749_))))
                       ((lambda (_L132757_ _L132758_)
                          (let ((_self132774_
                                 (list-ref _L132758_ _self-index132719_)))
                            (for-each
                             (lambda (_g132775132777_)
                               (let ()
                                 (declare (not safe))
                                 (gxc#apply-collect-object-refs
                                  _g132775132777_
                                  _self132774_
                                  _method-calls130764_
                                  _slot-refs130765_)))
                             _L132757_)
                            (if (let ()
                                  (declare (not safe))
                                  (_no-specializer?130768_))
                                _stx130672_
                                (let* ((_specializer-id132786_
                                        (let* ((_id132780_
                                                (let ((__tmp134818
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _L130745_))))
                                                  (declare (not safe))
                                                  (make-symbol__1
                                                   __tmp134818
                                                   '"::specialize")))
                                               (_specializer-id132783_
                                                (let ((__tmp134819
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-source
                                                          _stx130672_))))
                                                  (declare (not safe))
                                                  (gx#core-quote-syntax__1
                                                   _id132780_
                                                   __tmp134819))))
                                          (let ()
                                            (declare (not safe))
                                            (gx#core-bind-runtime!__0
                                             _specializer-id132783_))
                                          _specializer-id132783_))
                                       (_$klass132788_
                                        (let ((__tmp134820 (gensym '__klass)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134820)))
                                       (_$method-table132790_
                                        (let ((__tmp134821
                                               (gensym '__method-table)))
                                          (declare (not safe))
                                          (make-symbol__0 __tmp134821)))
                                       (_methods132792_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _method-calls130764_)))
                                       (_$methods132796_
                                        (map (lambda (_id132794_)
                                               (let ((__tmp134822
                                                      (gensym _id132794_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134822)))
                                             _methods132792_))
                                       (_g134823_
                                        (for-each
                                         (lambda (_g132797132800_
                                                  _g132798132802_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _method-calls130764_
                                              _g132797132800_
                                              _g132798132802_)))
                                         _methods132792_
                                         _$methods132796_))
                                       (_methods-bind132813_
                                        (map (lambda (_g132805132808_
                                                      _g132806132810_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-method-bind130674_
                                                  _$klass132788_
                                                  _$method-table132790_
                                                  _g132805132808_
                                                  _g132806132810_)))
                                             _methods132792_
                                             _$methods132796_))
                                       (_slots132815_
                                        (let ()
                                          (declare (not safe))
                                          (hash-keys _slot-refs130765_)))
                                       (_$slots132819_
                                        (map (lambda (_id132817_)
                                               (let ((__tmp134824
                                                      (gensym _id132817_)))
                                                 (declare (not safe))
                                                 (make-symbol__1
                                                  '"__"
                                                  __tmp134824)))
                                             _slots132815_))
                                       (_g134825_
                                        (for-each
                                         (lambda (_g132820132823_
                                                  _g132821132825_)
                                           (let ()
                                             (declare (not safe))
                                             (hash-put!
                                              _slot-refs130765_
                                              _g132820132823_
                                              _g132821132825_)))
                                         _slots132815_
                                         _$slots132819_))
                                       (_slots-bind132836_
                                        (map (lambda (_g132828132831_
                                                      _g132829132833_)
                                               (let ()
                                                 (declare (not safe))
                                                 (_generate-slot-bind130675_
                                                  _$klass132788_
                                                  _g132828132831_
                                                  _g132829132833_)))
                                             _slots132815_
                                             _$slots132819_))
                                       (_specializer-impl132844_
                                        (let* ((_specializer-body132842_
                                                (map (lambda (_g132837132839_)
                                                       (let ()
                                                         (declare (not safe))
                                                         (gxc#apply-subst-object-refs
                                                          _g132837132839_
                                                          _self132774_
                                                          _$klass132788_
                                                          _method-calls130764_
                                                          _slot-refs130765_)))
                                                     _L132757_))
                                               (__tmp134826
                                                (let ((__tmp134827
                                                       (let ((__tmp134829
                                                              (let ((__tmp134830
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134842
                                    (let ()
                                      (declare (not safe))
                                      (cons _L132420_ '())))
                                   (__tmp134831
                                    (let ((__tmp134832
                                           (let ((__tmp134833
                                                  (let ((__tmp134835
                                                         (let ((__tmp134836
                                                                (let ((__tmp134841
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L132419_ '())))
                              (__tmp134837
                               (let ((__tmp134838
                                      (let ((__tmp134839
                                             (let ((__tmp134840
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L132758_
                                                            _specializer-body132842_))))
                                               (declare (not safe))
                                               (cons '%#lambda __tmp134840))))
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp134839
                                         _L132418_))))
                                 (declare (not safe))
                                 (cons __tmp134838 '()))))
                          (declare (not safe))
                          (cons __tmp134841 __tmp134837))))
                   (declare (not safe))
                   (cons __tmp134836 '())))
                (__tmp134834
                 (let () (declare (not safe)) (cons _L132417_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134835
                                                          __tmp134834))))
                                             (declare (not safe))
                                             (cons '%#let-values
                                                   __tmp134833))))
                                      (declare (not safe))
                                      (cons __tmp134832 '()))))
                               (declare (not safe))
                               (cons __tmp134842 __tmp134831))))
                        (declare (not safe))
                        (cons __tmp134830 '())))
                     (__tmp134828
                      (let () (declare (not safe)) (cons _L132416_ '()))))
                 (declare (not safe))
                 (cons __tmp134829 __tmp134828))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons '%#let-values
                                                        __tmp134827))))
                                          (declare (not safe))
                                          (gxc#xform-wrap-source
                                           __tmp134826
                                           _stx130672_)))
                                       (_specializer-impl132846_
                                        (let ()
                                          (declare (not safe))
                                          (_generate-specializer-impl130676_
                                           _$klass132788_
                                           _$method-table132790_
                                           _methods-bind132813_
                                           _slots-bind132836_
                                           _specializer-impl132844_))))
                                  (let ((__tmp134844
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _L130745_)))
                                        (__tmp134843
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _specializer-id132786_))))
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate method specializer "
                                     __tmp134844
                                     '" => "
                                     __tmp134843))
                                  (let ()
                                    (declare (not safe))
                                    (_generate-specializer-def130677_
                                     _L130745_
                                     _specializer-id132786_
                                     _specializer-impl132846_))))))
                        _tl132729132754_
                        _hd132730132752_)))
                   (let ()
                     (declare (not safe))
                     (_g132722132736_ _g132723132739_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132722132736_
                                                      _g132723132739_))))))
                                       (declare (not safe))
                                       (_g132721132849_ _L132418_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#opt-lambda-expr? _L132418_))
                                         (let* ((_g132852132882_
                                                 (lambda (_g132853132879_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _g132853132879_))))
                                                (_g132851133424_
                                                 (lambda (_g132853132885_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _g132853132885_))
                                                       (let ((_e132859132887_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _g132853132885_))))
                 (let ((_hd132858132890_
                        (let () (declare (not safe)) (##car _e132859132887_)))
                       (_tl132857132892_
                        (let () (declare (not safe)) (##cdr _e132859132887_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _tl132857132892_))
                       (let ((_e132862132895_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _tl132857132892_))))
                         (let ((_hd132861132898_
                                (let ()
                                  (declare (not safe))
                                  (##car _e132862132895_)))
                               (_tl132860132900_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e132862132895_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _hd132861132898_))
                               (let ((_e132865132903_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _hd132861132898_))))
                                 (let ((_hd132864132906_
                                        (let ()
                                          (declare (not safe))
                                          (##car _e132865132903_)))
                                       (_tl132863132908_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _e132865132903_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _hd132864132906_))
                                       (let ((_e132868132911_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e _hd132864132906_))))
                                         (let ((_hd132867132914_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _e132868132911_)))
                                               (_tl132866132916_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _e132868132911_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _hd132867132914_))
                                               (let ((_e132871132919_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _hd132867132914_))))
                                                 (let ((_hd132870132922_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _e132871132919_)))
                                                       (_tl132869132924_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _e132871132919_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _tl132869132924_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _tl132866132916_))
                                                           (let ((_e132874132927_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _tl132866132916_))))
                     (let ((_hd132873132930_
                            (let ()
                              (declare (not safe))
                              (##car _e132874132927_)))
                           (_tl132872132932_
                            (let ()
                              (declare (not safe))
                              (##cdr _e132874132927_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _tl132872132932_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _tl132863132908_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _tl132860132900_))
                                   (let ((_e132877132935_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _tl132860132900_))))
                                     (let ((_hd132876132938_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e132877132935_)))
                                           (_tl132875132940_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e132877132935_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null? _tl132875132940_))
                                           ((lambda (_L132943_
                                                     _L132944_
                                                     _L132945_)
                                              (let* ((_g132968132982_
                                                      (lambda (_g132969132979_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g132969132979_))))
                                                     (_g132967133023_
                                                      (lambda (_g132969132985_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g132969132985_))
                                                            (let ((_e132974132987_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g132969132985_))))
                      (let ((_hd132973132990_
                             (let ()
                               (declare (not safe))
                               (##car _e132974132987_)))
                            (_tl132972132992_
                             (let ()
                               (declare (not safe))
                               (##cdr _e132974132987_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl132972132992_))
                            (let ((_e132977132995_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl132972132992_))))
                              (let ((_hd132976132998_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e132977132995_)))
                                    (_tl132975133000_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e132977132995_))))
                                ((lambda (_L133003_ _L133004_)
                                   (let ((_self133017_
                                          (list-ref
                                           _L133004_
                                           _self-index132719_)))
                                     (for-each
                                      (lambda (_g133018133020_)
                                        (let ()
                                          (declare (not safe))
                                          (gxc#apply-collect-object-refs
                                           _g133018133020_
                                           _self133017_
                                           _method-calls130764_
                                           _slot-refs130765_)))
                                      _L133003_)))
                                 _tl132975133000_
                                 _hd132976132998_)))
                            (let ()
                              (declare (not safe))
                              (_g132968132982_ _g132969132985_)))))
                    (let ()
                      (declare (not safe))
                      (_g132968132982_ _g132969132985_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g132967133023_ _L132944_))
                                              (let* ((_g133026133045_
                                                      (lambda (_g133027133042_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133027133042_))))
                                                     (_g133025133150_
                                                      (lambda (_g133027133048_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133027133048_))
                                                            (let ((_e133031133050_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133027133048_))))
                      (let ((_hd133030133053_
                             (let ()
                               (declare (not safe))
                               (##car _e133031133050_)))
                            (_tl133029133055_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133031133050_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl133029133055_))
                            (let ((_g134775_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl133029133055_
                                      '0))))
                              (begin
                                (let ((_g134776_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g134775_)
                                             (##vector-length _g134775_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g134776_ 2)))
                                      (error "Context expects 2 values"
                                             _g134776_)))
                                (let ((_target133032133058_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134775_ 0)))
                                      (_tl133034133060_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g134775_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl133034133060_))
                                      (letrec ((_loop133035133063_
                                                (lambda (_hd133033133066_
                                                         _clause133039133068_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd133033133066_))
                                                      (let ((_e133036133071_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _hd133033133066_))))
                (let ((_lp-hd133037133074_
                       (let () (declare (not safe)) (##car _e133036133071_)))
                      (_lp-tl133038133076_
                       (let () (declare (not safe)) (##cdr _e133036133071_))))
                  (let ((__tmp134778
                         (let ()
                           (declare (not safe))
                           (cons _lp-hd133037133074_ _clause133039133068_))))
                    (declare (not safe))
                    (_loop133035133063_ _lp-tl133038133076_ __tmp134778))))
              (let ((_clause133040133079_ (reverse _clause133039133068_)))
                ((lambda (_L133082_)
                   (for-each
                    (lambda (_clause133095_)
                      (let* ((_g133097133108_
                              (lambda (_g133098133105_)
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _g133098133105_))))
                             (_g133096133140_
                              (lambda (_g133098133111_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _g133098133111_))
                                    (let ((_e133103133113_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _g133098133111_))))
                                      (let ((_hd133102133116_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e133103133113_)))
                                            (_tl133101133118_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e133103133113_))))
                                        ((lambda (_L133121_ _L133122_)
                                           (let ((_self133134_
                                                  (list-ref
                                                   _L133122_
                                                   _self-index132719_)))
                                             (for-each
                                              (lambda (_g133135133137_)
                                                (let ()
                                                  (declare (not safe))
                                                  (gxc#apply-collect-object-refs
                                                   _g133135133137_
                                                   _self133134_
                                                   _method-calls130764_
                                                   _slot-refs130765_)))
                                              _L133121_)))
                                         _tl133101133118_
                                         _hd133102133116_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g133097133108_ _g133098133111_))))))
                        (declare (not safe))
                        (_g133096133140_ _clause133095_)))
                    (let ((__tmp134777
                           (lambda (_g133142133145_ _g133143133147_)
                             (let ()
                               (declare (not safe))
                               (cons _g133142133145_ _g133143133147_)))))
                      (declare (not safe))
                      (foldr1 __tmp134777 '() _L133082_))))
                 _clause133040133079_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (let ()
                                          (declare (not safe))
                                          (_loop133035133063_
                                           _target133032133058_
                                           '())))
                                      (let ()
                                        (declare (not safe))
                                        (_g133026133045_ _g133027133048_))))))
                            (let ()
                              (declare (not safe))
                              (_g133026133045_ _g133027133048_)))))
                    (let ()
                      (declare (not safe))
                      (_g133026133045_ _g133027133048_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133025133150_ _L132943_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (_no-specializer?130768_))
                                                  _stx130672_
                                                  (let* ((_specializer-id133159_
                                                          (let* ((_id133153_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp134779
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _L130745_))))
                            (declare (not safe))
                            (make-symbol__1 __tmp134779 '"::specialize")))
                         (_specializer-id133156_
                          (let ((__tmp134780
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-source _stx130672_))))
                            (declare (not safe))
                            (gx#core-quote-syntax__1 _id133153_ __tmp134780))))
                    (let ()
                      (declare (not safe))
                      (gx#core-bind-runtime!__0 _specializer-id133156_))
                    _specializer-id133156_))
                 (_$klass133161_
                  (let ((__tmp134781 (gensym '__klass)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134781)))
                 (_$method-table133163_
                  (let ((__tmp134782 (gensym '__method-table)))
                    (declare (not safe))
                    (make-symbol__0 __tmp134782)))
                 (_methods133165_
                  (let ()
                    (declare (not safe))
                    (hash-keys _method-calls130764_)))
                 (_$methods133169_
                  (map (lambda (_id133167_)
                         (let ((__tmp134783 (gensym _id133167_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134783)))
                       _methods133165_))
                 (_g134784_
                  (for-each
                   (lambda (_g133170133173_ _g133171133175_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _method-calls130764_
                        _g133170133173_
                        _g133171133175_)))
                   _methods133165_
                   _$methods133169_))
                 (_methods-bind133186_
                  (map (lambda (_g133178133181_ _g133179133183_)
                         (let ()
                           (declare (not safe))
                           (_generate-method-bind130674_
                            _$klass133161_
                            _$method-table133163_
                            _g133178133181_
                            _g133179133183_)))
                       _methods133165_
                       _$methods133169_))
                 (_slots133188_
                  (let () (declare (not safe)) (hash-keys _slot-refs130765_)))
                 (_$slots133192_
                  (map (lambda (_id133190_)
                         (let ((__tmp134785 (gensym _id133190_)))
                           (declare (not safe))
                           (make-symbol__1 '"__" __tmp134785)))
                       _slots133188_))
                 (_g134786_
                  (for-each
                   (lambda (_g133193133196_ _g133194133198_)
                     (let ()
                       (declare (not safe))
                       (hash-put!
                        _slot-refs130765_
                        _g133193133196_
                        _g133194133198_)))
                   _slots133188_
                   _$slots133192_))
                 (_slots-bind133209_
                  (map (lambda (_g133201133204_ _g133202133206_)
                         (let ()
                           (declare (not safe))
                           (_generate-slot-bind130675_
                            _$klass133161_
                            _g133201133204_
                            _g133202133206_)))
                       _slots133188_
                       _$slots133192_))
                 (_specializer-lambda-expr133282_
                  (let* ((_g133211133225_
                          (lambda (_g133212133222_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133212133222_))))
                         (_g133210133279_
                          (lambda (_g133212133228_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133212133228_))
                                (let ((_e133217133230_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133212133228_))))
                                  (let ((_hd133216133233_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133217133230_)))
                                        (_tl133215133235_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133217133230_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl133215133235_))
                                        (let ((_e133220133238_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _tl133215133235_))))
                                          (let ((_hd133219133241_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e133220133238_)))
                                                (_tl133218133243_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e133220133238_))))
                                            ((lambda (_L133246_ _L133247_)
                                               (let* ((_self133270_
                                                       (list-ref
                                                        _L133247_
                                                        _self-index132719_))
                                                      (_body133276_
                                                       (map (lambda (_g133271133273_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gxc#apply-subst-object-refs
                         _g133271133273_
                         _self133270_
                         _$klass133161_
                         _method-calls130764_
                         _slot-refs130765_)))
                    _L133246_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp134787
                                                        (let ((__tmp134788
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _L133247_ _body133276_))))
                  (declare (not safe))
                  (cons '%#lambda __tmp134788))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (gxc#xform-wrap-source
                                                    __tmp134787
                                                    _L132944_))))
                                             _tl133218133243_
                                             _hd133219133241_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g133211133225_ _g133212133228_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133211133225_ _g133212133228_))))))
                    (declare (not safe))
                    (_g133210133279_ _L132944_)))
                 (_specializer-case-lambda-expr133417_
                  (let* ((_g133284133303_
                          (lambda (_g133285133300_)
                            (let ()
                              (declare (not safe))
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g133285133300_))))
                         (_g133283133414_
                          (lambda (_g133285133306_)
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _g133285133306_))
                                (let ((_e133289133308_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _g133285133306_))))
                                  (let ((_hd133288133311_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e133289133308_)))
                                        (_tl133287133313_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e133289133308_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl133287133313_))
                                        (let ((_g134789_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl133287133313_
                                                  '0))))
                                          (begin
                                            (let ((_g134790_
                                                   (let ()
                                                     (declare (not safe))
                                                     (if (##values? _g134789_)
                                                         (##vector-length
                                                          _g134789_)
                                                         1))))
                                              (if (not (let ()
                                                         (declare (not safe))
                                                         (##fx= _g134790_ 2)))
                                                  (error "Context expects 2 values"
                                                         _g134790_)))
                                            (let ((_target133290133316_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g134789_
                                                      0)))
                                                  (_tl133292133318_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _g134789_
                                                      1))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl133292133318_))
                                                  (letrec ((_loop133293133321_
                                                            (lambda (_hd133291133324_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _clause133297133326_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd133291133324_))
                          (let ((_e133294133329_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd133291133324_))))
                            (let ((_lp-hd133295133332_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e133294133329_)))
                                  (_lp-tl133296133334_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e133294133329_))))
                              (let ((__tmp134793
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd133295133332_
                                             _clause133297133326_))))
                                (declare (not safe))
                                (_loop133293133321_
                                 _lp-tl133296133334_
                                 __tmp134793))))
                          (let ((_clause133298133337_
                                 (reverse _clause133297133326_)))
                            ((lambda (_L133340_)
                               (let* ((_clauses133412_
                                       (map (lambda (_clause133354_)
                                              (let* ((_g133356133367_
                                                      (lambda (_g133357133364_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _g133357133364_))))
                                                     (_g133355133402_
                                                      (lambda (_g133357133370_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _g133357133370_))
                                                            (let ((_e133362133372_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _g133357133370_))))
                      (let ((_hd133361133375_
                             (let ()
                               (declare (not safe))
                               (##car _e133362133372_)))
                            (_tl133360133377_
                             (let ()
                               (declare (not safe))
                               (##cdr _e133362133372_))))
                        ((lambda (_L133380_ _L133381_)
                           (let* ((_self133393_
                                   (list-ref _L133381_ _self-index132719_))
                                  (_body133399_
                                   (map (lambda (_g133394133396_)
                                          (let ()
                                            (declare (not safe))
                                            (gxc#apply-subst-object-refs
                                             _g133394133396_
                                             _self133393_
                                             _$klass133161_
                                             _method-calls130764_
                                             _slot-refs130765_)))
                                        _L133380_)))
                             (let ()
                               (declare (not safe))
                               (cons _L133381_ _body133399_))))
                         _tl133360133377_
                         _hd133361133375_)))
                    (let ()
                      (declare (not safe))
                      (_g133356133367_ _g133357133370_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (_g133355133402_
                                                 _clause133354_)))
                                            (let ((__tmp134791
                                                   (lambda (_g133404133407_
                                                            _g133405133409_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _g133404133407_
                                                             _g133405133409_)))))
                                              (declare (not safe))
                                              (foldr1 __tmp134791
                                                      '()
                                                      _L133340_))))
                                      (__tmp134792
                                       (let ()
                                         (declare (not safe))
                                         (cons '%#case-lambda
                                               _clauses133412_))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp134792
                                  _L132943_)))
                             _clause133298133337_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_loop133293133321_
                                                       _target133290133316_
                                                       '())))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g133284133303_
                                                     _g133285133306_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g133284133303_ _g133285133306_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g133284133303_ _g133285133306_))))))
                    (declare (not safe))
                    (_g133283133414_ _L132943_)))
                 (_specializer-impl133419_
                  (let ((__tmp134794
                         (let ((__tmp134795
                                (let ((__tmp134797
                                       (let ((__tmp134798
                                              (let ((__tmp134815
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L132420_ '())))
                                                    (__tmp134799
                                                     (let ((__tmp134800
                                                            (let ((__tmp134801
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134803
                                  (let ((__tmp134804
                                         (let ((__tmp134814
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L132419_ '())))
                                               (__tmp134805
                                                (let ((__tmp134806
                                                       (let ((__tmp134807
                                                              (let ((__tmp134808
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134810
                                    (let ((__tmp134811
                                           (let ((__tmp134813
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L132945_ '())))
                                                 (__tmp134812
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _specializer-lambda-expr133282_
                                                          '()))))
                                             (declare (not safe))
                                             (cons __tmp134813 __tmp134812))))
                                      (declare (not safe))
                                      (cons __tmp134811 '())))
                                   (__tmp134809
                                    (let ()
                                      (declare (not safe))
                                      (cons _specializer-case-lambda-expr133417_
                                            '()))))
                               (declare (not safe))
                               (cons __tmp134810 __tmp134809))))
                        (declare (not safe))
                        (cons '%#let-values __tmp134808))))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp134807 _stx130672_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134806 '()))))
                                           (declare (not safe))
                                           (cons __tmp134814 __tmp134805))))
                                    (declare (not safe))
                                    (cons __tmp134804 '())))
                                 (__tmp134802
                                  (let ()
                                    (declare (not safe))
                                    (cons _L132417_ '()))))
                             (declare (not safe))
                             (cons __tmp134803 __tmp134802))))
                      (declare (not safe))
                      (cons '%#let-values __tmp134801))))
               (declare (not safe))
               (cons __tmp134800 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134815
                                                      __tmp134799))))
                                         (declare (not safe))
                                         (cons __tmp134798 '())))
                                      (__tmp134796
                                       (let ()
                                         (declare (not safe))
                                         (cons _L132416_ '()))))
                                  (declare (not safe))
                                  (cons __tmp134797 __tmp134796))))
                           (declare (not safe))
                           (cons '%#let-values __tmp134795))))
                    (declare (not safe))
                    (gxc#xform-wrap-source __tmp134794 _stx130672_)))
                 (_specializer-impl133421_
                  (let ()
                    (declare (not safe))
                    (_generate-specializer-impl130676_
                     _$klass133161_
                     _$method-table133163_
                     _methods-bind133186_
                     _slots-bind133209_
                     _specializer-impl133419_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp134817
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _L130745_)))
                                                          (__tmp134816
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _specializer-id133159_))))
                                                      (declare (not safe))
                                                      (gxc#verbose
                                                       '"generate method specializer "
                                                       __tmp134817
                                                       '" => "
                                                       __tmp134816))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_generate-specializer-def130677_
                                                       _L130745_
                                                       _specializer-id133159_
                                                       _specializer-impl133421_)))))
                                            _hd132876132938_
                                            _hd132873132930_
                                            _hd132870132922_)
                                           (let ()
                                             (declare (not safe))
                                             (_g132852132882_
                                              _g132853132885_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132852132882_ _g132853132885_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132852132882_ _g132853132885_)))
                           (let ()
                             (declare (not safe))
                             (_g132852132882_ _g132853132885_)))))
                   (let ()
                     (declare (not safe))
                     (_g132852132882_ _g132853132885_)))
               (let ()
                 (declare (not safe))
                 (_g132852132882_ _g132853132885_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132852132882_
                                                  _g132853132885_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132852132882_ _g132853132885_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132852132882_ _g132853132885_)))))
                       (let ()
                         (declare (not safe))
                         (_g132852132882_ _g132853132885_)))))
               (let ()
                 (declare (not safe))
                 (_g132852132882_ _g132853132885_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132851133424_ _L132418_))
                                         _stx130672_))))
                             _hd132515132638_
                             _kw-ref132513132659_
                             _hd132503132625_
                             _hd132494132601_
                             _hd132485132577_)
                            (let ()
                              (declare (not safe))
                              (_g132459132521_ _g132460132524_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let ()
                                                  (declare (not safe))
                                                  (_loop132508132643_
                                                   _target132505132630_
                                                   '())))
                                              (let ()
                                                (declare (not safe))
                                                (_g132459132521_
                                                 _g132460132524_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g132459132521_ _g132460132524_))))))
                            (let ()
                              (declare (not safe))
                              (_g132459132521_ _g132460132524_)))
                        (let ()
                          (declare (not safe))
                          (_g132459132521_ _g132460132524_)))
                    (let ()
                      (declare (not safe))
                      (_g132459132521_ _g132460132524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132459132521_
                                                       _g132460132524_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132459132521_
                                                   _g132460132524_)))
                                            (let ()
                                              (declare (not safe))
                                              (_g132459132521_
                                               _g132460132524_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132459132521_ _g132460132524_)))))
                            (let ()
                              (declare (not safe))
                              (_g132459132521_ _g132460132524_)))
                        (let ()
                          (declare (not safe))
                          (_g132459132521_ _g132460132524_)))))
                (let ()
                  (declare (not safe))
                  (_g132459132521_ _g132460132524_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132459132521_
                                                       _g132460132524_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g132459132521_
                                                   _g132460132524_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_g132459132521_ _g132460132524_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g132459132521_ _g132460132524_)))
                            (let ()
                              (declare (not safe))
                              (_g132459132521_ _g132460132524_)))))
                    (let ()
                      (declare (not safe))
                      (_g132459132521_ _g132460132524_)))
                (let ()
                  (declare (not safe))
                  (_g132459132521_ _g132460132524_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132459132521_
                                                       _g132460132524_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132459132521_
                                               _g132460132524_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g132459132521_ _g132460132524_)))
                                (let ()
                                  (declare (not safe))
                                  (_g132459132521_ _g132460132524_)))
                            (let ()
                              (declare (not safe))
                              (_g132459132521_ _g132460132524_)))))
                    (let ()
                      (declare (not safe))
                      (_g132459132521_ _g132460132524_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g132459132521_
                                                       _g132460132524_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g132459132521_
                                               _g132460132524_)))
                                        (let ()
                                          (declare (not safe))
                                          (_g132459132521_ _g132460132524_)))
                                    (let ()
                                      (declare (not safe))
                                      (_g132459132521_ _g132460132524_)))))
                            (let ()
                              (declare (not safe))
                              (_g132459132521_ _g132460132524_))))))
                (declare (not safe))
                (_g132458133427_ _L132417_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _hd132293132411_
                                                    _hd132290132403_
                                                    _hd132287132395_
                                                    _hd132284132387_
                                                    _hd132266132339_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132246132299_
                                                      _g132247132302_)))))
                                           (let ()
                                             (declare (not safe))
                                             (_g132246132299_
                                              _g132247132302_)))
                                       (let ()
                                         (declare (not safe))
                                         (_g132246132299_ _g132247132302_)))
                                   (let ()
                                     (declare (not safe))
                                     (_g132246132299_ _g132247132302_)))
                               (let ()
                                 (declare (not safe))
                                 (_g132246132299_ _g132247132302_)))))
                       (let ()
                         (declare (not safe))
                         (_g132246132299_ _g132247132302_)))
                   (let ()
                     (declare (not safe))
                     (_g132246132299_ _g132247132302_)))
               (let ()
                 (declare (not safe))
                 (_g132246132299_ _g132247132302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132246132299_
                                                  _g132247132302_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132246132299_
                                              _g132247132302_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132246132299_ _g132247132302_)))))
                           (let ()
                             (declare (not safe))
                             (_g132246132299_ _g132247132302_)))))
                   (let ()
                     (declare (not safe))
                     (_g132246132299_ _g132247132302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ()
                                                     (declare (not safe))
                                                     (_g132246132299_
                                                      _g132247132302_)))
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132246132299_
                                                  _g132247132302_)))
                                           (let ()
                                             (declare (not safe))
                                             (_g132246132299_
                                              _g132247132302_)))))
                                   (let ()
                                     (declare (not safe))
                                     (_g132246132299_ _g132247132302_)))))
                           (let ()
                             (declare (not safe))
                             (_g132246132299_ _g132247132302_)))
                       (let ()
                         (declare (not safe))
                         (_g132246132299_ _g132247132302_)))))
               (let ()
                 (declare (not safe))
                 (_g132246132299_ _g132247132302_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ()
                                                 (declare (not safe))
                                                 (_g132246132299_
                                                  _g132247132302_)))))
                                       (let ()
                                         (declare (not safe))
                                         (_g132246132299_ _g132247132302_)))))
                               (let ()
                                 (declare (not safe))
                                 (_g132246132299_ _g132247132302_)))
                           (let ()
                             (declare (not safe))
                             (_g132246132299_ _g132247132302_)))
                       (let ()
                         (declare (not safe))
                         (_g132246132299_ _g132247132302_)))))
               (let ()
                 (declare (not safe))
                 (_g132246132299_ _g132247132302_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (declare (not safe))
                                           (_g132245133430_ _L130744_))
                                         _stx130672_))))))))
                  (___kont133610133611_ (lambda () _stx130672_)))
              (let ((___match133639133640_
                     (lambda (_e130686130712_
                              _hd130685130715_
                              _tl130684130717_
                              _e130689130720_
                              _hd130688130723_
                              _tl130687130725_
                              _e130692130728_
                              _hd130691130731_
                              _tl130690130733_
                              _e130695130736_
                              _hd130694130739_
                              _tl130693130741_)
                       (let ((_L130744_ _hd130694130739_)
                             (_L130745_ _hd130691130731_))
                         (if (let ((__tmp134906
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L130745_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp134906))
                             (___kont133608133609_ _L130744_ _L130745_)
                             (___kont133610133611_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx133606133607_))
                    (let ((_e130686130712_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx133606133607_))))
                      (let ((_tl130684130717_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130686130712_)))
                            (_hd130685130715_
                             (let ()
                               (declare (not safe))
                               (##car _e130686130712_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl130684130717_))
                            (let ((_e130689130720_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl130684130717_))))
                              (let ((_tl130687130725_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e130689130720_)))
                                    (_hd130688130723_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e130689130720_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd130688130723_))
                                    (let ((_e130692130728_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd130688130723_))))
                                      (let ((_tl130690130733_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e130692130728_)))
                                            (_hd130691130731_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e130692130728_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl130690130733_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl130687130725_))
                                                (let ((_e130695130736_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl130687130725_))))
                                                  (let ((_tl130693130741_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130695130736_)))
                                                        (_hd130694130739_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130695130736_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl130693130741_))
                                                        (___match133639133640_
                                                         _e130686130712_
                                                         _hd130685130715_
                                                         _tl130684130717_
                                                         _e130689130720_
                                                         _hd130688130723_
                                                         _tl130687130725_
                                                         _e130692130728_
                                                         _hd130691130731_
                                                         _tl130690130733_
                                                         _e130695130736_
                                                         _hd130694130739_
                                                         _tl130693130741_)
                                                        (___kont133610133611_))))
                                                (___kont133610133611_))
                                            (___kont133610133611_))))
                                    (___kont133610133611_))))
                            (___kont133610133611_))))
                    (___kont133610133611_))))))))
    (define gxc#collect-object-refs-call%
      (lambda (_stx129631_ _self129632_ _methods129633_ _slots129634_)
        (let* ((___stx133642133643_ _stx129631_)
               (_g129642129864_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     ___stx133642133643_)))))
          (let ((___kont133644133645_
                 (lambda (_L130621_ _L130622_ _L130623_ _L130624_)
                   (let ((__tmp134907
                          (let () (declare (not safe)) (gx#stx-e _L130622_))))
                     (declare (not safe))
                     (hash-put! _methods129633_ __tmp134907 '#t))
                   (for-each
                    (lambda (_g130657130659_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130657130659_
                         _self129632_
                         _methods129633_
                         _slots129634_)))
                    (let ((__tmp134908
                           (lambda (_g130661130664_ _g130662130666_)
                             (let ()
                               (declare (not safe))
                               (cons _g130661130664_ _g130662130666_)))))
                      (declare (not safe))
                      (foldr1 __tmp134908 '() _L130621_)))))
                (___kont133648133649_
                 (lambda (_L130456_ _L130457_ _L130458_ _L130459_ _L130460_)
                   (let ((__tmp134909
                          (let () (declare (not safe)) (gx#stx-e _L130457_))))
                     (declare (not safe))
                     (hash-put! _methods129633_ __tmp134909 '#t))
                   (for-each
                    (lambda (_g130500130502_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__3
                         _g130500130502_
                         _self129632_
                         _methods129633_
                         _slots129634_)))
                    (let ((__tmp134910
                           (lambda (_g130504130507_ _g130505130509_)
                             (let ()
                               (declare (not safe))
                               (cons _g130504130507_ _g130505130509_)))))
                      (declare (not safe))
                      (foldr1 __tmp134910 '() _L130456_)))))
                (___kont133652133653_
                 (lambda (_L130289_ _L130290_ _L130291_)
                   (let ((__tmp134911
                          (let () (declare (not safe)) (gx#stx-e _L130289_))))
                     (declare (not safe))
                     (hash-put! _slots129634_ __tmp134911 '#t))))
                (___kont133654133655_
                 (lambda (_L130166_ _L130167_ _L130168_ _L130169_)
                   (let ((__tmp134912
                          (let () (declare (not safe)) (gx#stx-e _L130167_))))
                     (declare (not safe))
                     (hash-put! _slots129634_ __tmp134912 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__3
                      _L130166_
                      _self129632_
                      _methods129633_
                      _slots129634_))))
                (___kont133656133657_
                 (lambda (_L130040_ _L130041_)
                   (let* ((_accessor130063_
                           (let ((__tmp134913
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L130041_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp134913)))
                          (_klass130065_
                           (let ((__tmp134914
                                  (##structure-ref
                                   _accessor130063_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129631_
                              __tmp134914)))
                          (_slot130067_
                           (##structure-ref
                            _accessor130063_
                            '2
                            gxc#!accessor::t
                            '#f)))
                     (if (and (let ((__tmp134916
                                     (##structure-ref
                                      _accessor130063_
                                      '3
                                      gxc#!accessor::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp134916))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass130065_
                                     _slot130067_))
                                  (##structure-ref
                                   _klass130065_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ((__tmp134915
                                (##structure-ref
                                 _accessor130063_
                                 '2
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! _slots129634_ __tmp134915 '#t))))))
                (___kont133658133659_
                 (lambda (_L129940_ _L129941_ _L129942_)
                   (let* ((_mutator129969_
                           (let ((__tmp134917
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol _L129942_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp134917)))
                          (_klass129971_
                           (let ((__tmp134918
                                  (##structure-ref
                                   _mutator129969_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _stx129631_
                              __tmp134918)))
                          (_slot129973_
                           (##structure-ref
                            _mutator129969_
                            '2
                            gxc#!mutator::t
                            '#f)))
                     (if (and (let ((__tmp134919
                                     (##structure-ref
                                      _mutator129969_
                                      '3
                                      gxc#!mutator::t
                                      '#f)))
                                (declare (not safe))
                                (not __tmp134919))
                              (or (let ()
                                    (declare (not safe))
                                    (gxc#!class-struct-slot?
                                     _klass129971_
                                     _slot129973_))
                                  (##structure-ref
                                   _klass129971_
                                   '8
                                   gxc#!class::t
                                   '#f)))
                         '#!void
                         (let ()
                           (declare (not safe))
                           (hash-put! _slots129634_ _slot129973_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__3
                        _L129940_
                        _self129632_
                        _methods129633_
                        _slots129634_)))))
                (___kont133660133661_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#collect-operands
                      _stx129631_
                      _self129632_
                      _methods129633_
                      _slots129634_)))))
            (let* ((___match134141134142_
                    (lambda (_e129838129876_
                             _hd129837129879_
                             _tl129836129881_
                             _e129841129884_
                             _hd129840129887_
                             _tl129839129889_
                             _e129844129892_
                             _hd129843129895_
                             _tl129842129897_
                             _e129847129900_
                             _hd129846129903_
                             _tl129845129905_
                             _e129850129908_
                             _hd129849129911_
                             _tl129848129913_
                             _e129853129916_
                             _hd129852129919_
                             _tl129851129921_
                             _e129856129924_
                             _hd129855129927_
                             _tl129854129929_
                             _e129859129932_
                             _hd129858129935_
                             _tl129857129937_)
                      (let ((_L129940_ _hd129858129935_)
                            (_L129941_ _hd129855129927_)
                            (_L129942_ _hd129846129903_))
                        (if (and (let ((__tmp134920
                                        (let ((__tmp134921
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L129942_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp134921))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp134920
                                    'gxc#!mutator::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L129941_
                                    _self129632_)))
                            (___kont133658133659_
                             _L129940_
                             _L129941_
                             _L129942_)
                            (___kont133660133661_)))))
                   (___match134139134140_
                    (lambda (_e129838129876_
                             _hd129837129879_
                             _tl129836129881_
                             _e129841129884_
                             _hd129840129887_
                             _tl129839129889_
                             _e129844129892_
                             _hd129843129895_
                             _tl129842129897_
                             _e129847129900_
                             _hd129846129903_
                             _tl129845129905_
                             _e129850129908_
                             _hd129849129911_
                             _tl129848129913_
                             _e129853129916_
                             _hd129852129919_
                             _tl129851129921_
                             _e129856129924_
                             _hd129855129927_
                             _tl129854129929_
                             _e129859129932_
                             _hd129858129935_
                             _tl129857129937_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129857129937_))
                          (___match134141134142_
                           _e129838129876_
                           _hd129837129879_
                           _tl129836129881_
                           _e129841129884_
                           _hd129840129887_
                           _tl129839129889_
                           _e129844129892_
                           _hd129843129895_
                           _tl129842129897_
                           _e129847129900_
                           _hd129846129903_
                           _tl129845129905_
                           _e129850129908_
                           _hd129849129911_
                           _tl129848129913_
                           _e129853129916_
                           _hd129852129919_
                           _tl129851129921_
                           _e129856129924_
                           _hd129855129927_
                           _tl129854129929_
                           _e129859129932_
                           _hd129858129935_
                           _tl129857129937_)
                          (___kont133660133661_))))
                   (___match134133134134_
                    (lambda (_e129838129876_
                             _hd129837129879_
                             _tl129836129881_
                             _e129841129884_
                             _hd129840129887_
                             _tl129839129889_
                             _e129844129892_
                             _hd129843129895_
                             _tl129842129897_
                             _e129847129900_
                             _hd129846129903_
                             _tl129845129905_
                             _e129850129908_
                             _hd129849129911_
                             _tl129848129913_
                             _e129853129916_
                             _hd129852129919_
                             _tl129851129921_
                             _e129856129924_
                             _hd129855129927_
                             _tl129854129929_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129848129913_))
                          (let ((_e129859129932_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129848129913_))))
                            (let ((_tl129857129937_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129859129932_)))
                                  (_hd129858129935_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129859129932_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129857129937_))
                                  (___match134141134142_
                                   _e129838129876_
                                   _hd129837129879_
                                   _tl129836129881_
                                   _e129841129884_
                                   _hd129840129887_
                                   _tl129839129889_
                                   _e129844129892_
                                   _hd129843129895_
                                   _tl129842129897_
                                   _e129847129900_
                                   _hd129846129903_
                                   _tl129845129905_
                                   _e129850129908_
                                   _hd129849129911_
                                   _tl129848129913_
                                   _e129853129916_
                                   _hd129852129919_
                                   _tl129851129921_
                                   _e129856129924_
                                   _hd129855129927_
                                   _tl129854129929_
                                   _e129859129932_
                                   _hd129858129935_
                                   _tl129857129937_)
                                  (___kont133660133661_))))
                          (___kont133660133661_))))
                   (___match134079134080_
                    (lambda (_e129814129984_
                             _hd129813129987_
                             _tl129812129989_
                             _e129817129992_
                             _hd129816129995_
                             _tl129815129997_
                             _e129820130000_
                             _hd129819130003_
                             _tl129818130005_
                             _e129823130008_
                             _hd129822130011_
                             _tl129821130013_
                             _e129826130016_
                             _hd129825130019_
                             _tl129824130021_
                             _e129829130024_
                             _hd129828130027_
                             _tl129827130029_
                             _e129832130032_
                             _hd129831130035_
                             _tl129830130037_)
                      (let ((_L130040_ _hd129831130035_)
                            (_L130041_ _hd129822130011_))
                        (if (and (let ((__tmp134922
                                        (let ((__tmp134923
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _L130041_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp134923))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp134922
                                    'gxc#!accessor::t))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130040_
                                    _self129632_)))
                            (___kont133656133657_ _L130040_ _L130041_)
                            (___kont133660133661_)))))
                   (___match134077134078_
                    (lambda (_e129814129984_
                             _hd129813129987_
                             _tl129812129989_
                             _e129817129992_
                             _hd129816129995_
                             _tl129815129997_
                             _e129820130000_
                             _hd129819130003_
                             _tl129818130005_
                             _e129823130008_
                             _hd129822130011_
                             _tl129821130013_
                             _e129826130016_
                             _hd129825130019_
                             _tl129824130021_
                             _e129829130024_
                             _hd129828130027_
                             _tl129827130029_
                             _e129832130032_
                             _hd129831130035_
                             _tl129830130037_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129824130021_))
                          (___match134079134080_
                           _e129814129984_
                           _hd129813129987_
                           _tl129812129989_
                           _e129817129992_
                           _hd129816129995_
                           _tl129815129997_
                           _e129820130000_
                           _hd129819130003_
                           _tl129818130005_
                           _e129823130008_
                           _hd129822130011_
                           _tl129821130013_
                           _e129826130016_
                           _hd129825130019_
                           _tl129824130021_
                           _e129829130024_
                           _hd129828130027_
                           _tl129827130029_
                           _e129832130032_
                           _hd129831130035_
                           _tl129830130037_)
                          (___match134133134134_
                           _e129814129984_
                           _hd129813129987_
                           _tl129812129989_
                           _e129817129992_
                           _hd129816129995_
                           _tl129815129997_
                           _e129820130000_
                           _hd129819130003_
                           _tl129818130005_
                           _e129823130008_
                           _hd129822130011_
                           _tl129821130013_
                           _e129826130016_
                           _hd129825130019_
                           _tl129824130021_
                           _e129829130024_
                           _hd129828130027_
                           _tl129827130029_
                           _e129832130032_
                           _hd129831130035_
                           _tl129830130037_))))
                   (___match134023134024_
                    (lambda (_e129779130078_
                             _hd129778130081_
                             _tl129777130083_
                             _e129782130086_
                             _hd129781130089_
                             _tl129780130091_
                             _e129785130094_
                             _hd129784130097_
                             _tl129783130099_
                             _e129788130102_
                             _hd129787130105_
                             _tl129786130107_
                             _e129791130110_
                             _hd129790130113_
                             _tl129789130115_
                             _e129794130118_
                             _hd129793130121_
                             _tl129792130123_
                             _e129797130126_
                             _hd129796130129_
                             _tl129795130131_
                             _e129800130134_
                             _hd129799130137_
                             _tl129798130139_
                             _e129803130142_
                             _hd129802130145_
                             _tl129801130147_
                             _e129806130150_
                             _hd129805130153_
                             _tl129804130155_
                             _e129809130158_
                             _hd129808130161_
                             _tl129807130163_)
                      (let ((_L130166_ _hd129808130161_)
                            (_L130167_ _hd129805130153_)
                            (_L130168_ _hd129796130129_)
                            (_L130169_ _hd129787130105_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130169_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130169_
                                        'unchecked-slot-set!)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130168_
                                    _self129632_)))
                            (___kont133654133655_
                             _L130166_
                             _L130167_
                             _L130168_
                             _L130169_)
                            (___kont133660133661_)))))
                   (___match134015134016_
                    (lambda (_e129779130078_
                             _hd129778130081_
                             _tl129777130083_
                             _e129782130086_
                             _hd129781130089_
                             _tl129780130091_
                             _e129785130094_
                             _hd129784130097_
                             _tl129783130099_
                             _e129788130102_
                             _hd129787130105_
                             _tl129786130107_
                             _e129791130110_
                             _hd129790130113_
                             _tl129789130115_
                             _e129794130118_
                             _hd129793130121_
                             _tl129792130123_
                             _e129797130126_
                             _hd129796130129_
                             _tl129795130131_
                             _e129800130134_
                             _hd129799130137_
                             _tl129798130139_
                             _e129803130142_
                             _hd129802130145_
                             _tl129801130147_
                             _e129806130150_
                             _hd129805130153_
                             _tl129804130155_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129798130139_))
                          (let ((_e129809130158_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129798130139_))))
                            (let ((_tl129807130163_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129809130158_)))
                                  (_hd129808130161_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129809130158_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129807130163_))
                                  (___match134023134024_
                                   _e129779130078_
                                   _hd129778130081_
                                   _tl129777130083_
                                   _e129782130086_
                                   _hd129781130089_
                                   _tl129780130091_
                                   _e129785130094_
                                   _hd129784130097_
                                   _tl129783130099_
                                   _e129788130102_
                                   _hd129787130105_
                                   _tl129786130107_
                                   _e129791130110_
                                   _hd129790130113_
                                   _tl129789130115_
                                   _e129794130118_
                                   _hd129793130121_
                                   _tl129792130123_
                                   _e129797130126_
                                   _hd129796130129_
                                   _tl129795130131_
                                   _e129800130134_
                                   _hd129799130137_
                                   _tl129798130139_
                                   _e129803130142_
                                   _hd129802130145_
                                   _tl129801130147_
                                   _e129806130150_
                                   _hd129805130153_
                                   _tl129804130155_
                                   _e129809130158_
                                   _hd129808130161_
                                   _tl129807130163_)
                                  (___kont133660133661_))))
                          (___match134139134140_
                           _e129779130078_
                           _hd129778130081_
                           _tl129777130083_
                           _e129782130086_
                           _hd129781130089_
                           _tl129780130091_
                           _e129785130094_
                           _hd129784130097_
                           _tl129783130099_
                           _e129788130102_
                           _hd129787130105_
                           _tl129786130107_
                           _e129791130110_
                           _hd129790130113_
                           _tl129789130115_
                           _e129794130118_
                           _hd129793130121_
                           _tl129792130123_
                           _e129797130126_
                           _hd129796130129_
                           _tl129795130131_
                           _e129800130134_
                           _hd129799130137_
                           _tl129798130139_))))
                   (___match133937133938_
                    (lambda (_e129745130209_
                             _hd129744130212_
                             _tl129743130214_
                             _e129748130217_
                             _hd129747130220_
                             _tl129746130222_
                             _e129751130225_
                             _hd129750130228_
                             _tl129749130230_
                             _e129754130233_
                             _hd129753130236_
                             _tl129752130238_
                             _e129757130241_
                             _hd129756130244_
                             _tl129755130246_
                             _e129760130249_
                             _hd129759130252_
                             _tl129758130254_
                             _e129763130257_
                             _hd129762130260_
                             _tl129761130262_
                             _e129766130265_
                             _hd129765130268_
                             _tl129764130270_
                             _e129769130273_
                             _hd129768130276_
                             _tl129767130278_
                             _e129772130281_
                             _hd129771130284_
                             _tl129770130286_)
                      (let ((_L130289_ _hd129771130284_)
                            (_L130290_ _hd129762130260_)
                            (_L130291_ _hd129753130236_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130291_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _L130291_
                                        'unchecked-slot-ref)))
                                 (let ()
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _L130290_
                                    _self129632_)))
                            (___kont133652133653_
                             _L130289_
                             _L130290_
                             _L130291_)
                            (___match134141134142_
                             _e129745130209_
                             _hd129744130212_
                             _tl129743130214_
                             _e129748130217_
                             _hd129747130220_
                             _tl129746130222_
                             _e129751130225_
                             _hd129750130228_
                             _tl129749130230_
                             _e129754130233_
                             _hd129753130236_
                             _tl129752130238_
                             _e129757130241_
                             _hd129756130244_
                             _tl129755130246_
                             _e129760130249_
                             _hd129759130252_
                             _tl129758130254_
                             _e129763130257_
                             _hd129762130260_
                             _tl129761130262_
                             _e129766130265_
                             _hd129765130268_
                             _tl129764130270_)))))
                   (___match133935133936_
                    (lambda (_e129745130209_
                             _hd129744130212_
                             _tl129743130214_
                             _e129748130217_
                             _hd129747130220_
                             _tl129746130222_
                             _e129751130225_
                             _hd129750130228_
                             _tl129749130230_
                             _e129754130233_
                             _hd129753130236_
                             _tl129752130238_
                             _e129757130241_
                             _hd129756130244_
                             _tl129755130246_
                             _e129760130249_
                             _hd129759130252_
                             _tl129758130254_
                             _e129763130257_
                             _hd129762130260_
                             _tl129761130262_
                             _e129766130265_
                             _hd129765130268_
                             _tl129764130270_
                             _e129769130273_
                             _hd129768130276_
                             _tl129767130278_
                             _e129772130281_
                             _hd129771130284_
                             _tl129770130286_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl129764130270_))
                          (___match133937133938_
                           _e129745130209_
                           _hd129744130212_
                           _tl129743130214_
                           _e129748130217_
                           _hd129747130220_
                           _tl129746130222_
                           _e129751130225_
                           _hd129750130228_
                           _tl129749130230_
                           _e129754130233_
                           _hd129753130236_
                           _tl129752130238_
                           _e129757130241_
                           _hd129756130244_
                           _tl129755130246_
                           _e129760130249_
                           _hd129759130252_
                           _tl129758130254_
                           _e129763130257_
                           _hd129762130260_
                           _tl129761130262_
                           _e129766130265_
                           _hd129765130268_
                           _tl129764130270_
                           _e129769130273_
                           _hd129768130276_
                           _tl129767130278_
                           _e129772130281_
                           _hd129771130284_
                           _tl129770130286_)
                          (___match134015134016_
                           _e129745130209_
                           _hd129744130212_
                           _tl129743130214_
                           _e129748130217_
                           _hd129747130220_
                           _tl129746130222_
                           _e129751130225_
                           _hd129750130228_
                           _tl129749130230_
                           _e129754130233_
                           _hd129753130236_
                           _tl129752130238_
                           _e129757130241_
                           _hd129756130244_
                           _tl129755130246_
                           _e129760130249_
                           _hd129759130252_
                           _tl129758130254_
                           _e129763130257_
                           _hd129762130260_
                           _tl129761130262_
                           _e129766130265_
                           _hd129765130268_
                           _tl129764130270_
                           _e129769130273_
                           _hd129768130276_
                           _tl129767130278_
                           _e129772130281_
                           _hd129771130284_
                           _tl129770130286_))))
                   (___match133925133926_
                    (lambda (_e129745130209_
                             _hd129744130212_
                             _tl129743130214_
                             _e129748130217_
                             _hd129747130220_
                             _tl129746130222_
                             _e129751130225_
                             _hd129750130228_
                             _tl129749130230_
                             _e129754130233_
                             _hd129753130236_
                             _tl129752130238_
                             _e129757130241_
                             _hd129756130244_
                             _tl129755130246_
                             _e129760130249_
                             _hd129759130252_
                             _tl129758130254_
                             _e129763130257_
                             _hd129762130260_
                             _tl129761130262_
                             _e129766130265_
                             _hd129765130268_
                             _tl129764130270_
                             _e129769130273_
                             _hd129768130276_
                             _tl129767130278_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _hd129768130276_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129767130278_))
                              (let ((_e129772130281_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129767130278_))))
                                (let ((_tl129770130286_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129772130281_)))
                                      (_hd129771130284_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129772130281_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129770130286_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl129764130270_))
                                          (___match133937133938_
                                           _e129745130209_
                                           _hd129744130212_
                                           _tl129743130214_
                                           _e129748130217_
                                           _hd129747130220_
                                           _tl129746130222_
                                           _e129751130225_
                                           _hd129750130228_
                                           _tl129749130230_
                                           _e129754130233_
                                           _hd129753130236_
                                           _tl129752130238_
                                           _e129757130241_
                                           _hd129756130244_
                                           _tl129755130246_
                                           _e129760130249_
                                           _hd129759130252_
                                           _tl129758130254_
                                           _e129763130257_
                                           _hd129762130260_
                                           _tl129761130262_
                                           _e129766130265_
                                           _hd129765130268_
                                           _tl129764130270_
                                           _e129769130273_
                                           _hd129768130276_
                                           _tl129767130278_
                                           _e129772130281_
                                           _hd129771130284_
                                           _tl129770130286_)
                                          (___match134015134016_
                                           _e129745130209_
                                           _hd129744130212_
                                           _tl129743130214_
                                           _e129748130217_
                                           _hd129747130220_
                                           _tl129746130222_
                                           _e129751130225_
                                           _hd129750130228_
                                           _tl129749130230_
                                           _e129754130233_
                                           _hd129753130236_
                                           _tl129752130238_
                                           _e129757130241_
                                           _hd129756130244_
                                           _tl129755130246_
                                           _e129760130249_
                                           _hd129759130252_
                                           _tl129758130254_
                                           _e129763130257_
                                           _hd129762130260_
                                           _tl129761130262_
                                           _e129766130265_
                                           _hd129765130268_
                                           _tl129764130270_
                                           _e129769130273_
                                           _hd129768130276_
                                           _tl129767130278_
                                           _e129772130281_
                                           _hd129771130284_
                                           _tl129770130286_))
                                      (___match134139134140_
                                       _e129745130209_
                                       _hd129744130212_
                                       _tl129743130214_
                                       _e129748130217_
                                       _hd129747130220_
                                       _tl129746130222_
                                       _e129751130225_
                                       _hd129750130228_
                                       _tl129749130230_
                                       _e129754130233_
                                       _hd129753130236_
                                       _tl129752130238_
                                       _e129757130241_
                                       _hd129756130244_
                                       _tl129755130246_
                                       _e129760130249_
                                       _hd129759130252_
                                       _tl129758130254_
                                       _e129763130257_
                                       _hd129762130260_
                                       _tl129761130262_
                                       _e129766130265_
                                       _hd129765130268_
                                       _tl129764130270_))))
                              (___match134139134140_
                               _e129745130209_
                               _hd129744130212_
                               _tl129743130214_
                               _e129748130217_
                               _hd129747130220_
                               _tl129746130222_
                               _e129751130225_
                               _hd129750130228_
                               _tl129749130230_
                               _e129754130233_
                               _hd129753130236_
                               _tl129752130238_
                               _e129757130241_
                               _hd129756130244_
                               _tl129755130246_
                               _e129760130249_
                               _hd129759130252_
                               _tl129758130254_
                               _e129763130257_
                               _hd129762130260_
                               _tl129761130262_
                               _e129766130265_
                               _hd129765130268_
                               _tl129764130270_))
                          (___match134139134140_
                           _e129745130209_
                           _hd129744130212_
                           _tl129743130214_
                           _e129748130217_
                           _hd129747130220_
                           _tl129746130222_
                           _e129751130225_
                           _hd129750130228_
                           _tl129749130230_
                           _e129754130233_
                           _hd129753130236_
                           _tl129752130238_
                           _e129757130241_
                           _hd129756130244_
                           _tl129755130246_
                           _e129760130249_
                           _hd129759130252_
                           _tl129758130254_
                           _e129763130257_
                           _hd129762130260_
                           _tl129761130262_
                           _e129766130265_
                           _hd129765130268_
                           _tl129764130270_))))
                   (___match133857133858_
                    (lambda (_e129694130328_
                             _hd129693130331_
                             _tl129692130333_
                             _e129697130336_
                             _hd129696130339_
                             _tl129695130341_
                             _e129700130344_
                             _hd129699130347_
                             _tl129698130349_
                             _e129703130352_
                             _hd129702130355_
                             _tl129701130357_
                             _e129706130360_
                             _hd129705130363_
                             _tl129704130365_
                             _e129709130368_
                             _hd129708130371_
                             _tl129707130373_
                             _e129712130376_
                             _hd129711130379_
                             _tl129710130381_
                             _e129715130384_
                             _hd129714130387_
                             _tl129713130389_
                             _e129718130392_
                             _hd129717130395_
                             _tl129716130397_
                             _e129721130400_
                             _hd129720130403_
                             _tl129719130405_
                             _e129724130408_
                             _hd129723130411_
                             _tl129722130413_
                             _e129727130416_
                             _hd129726130419_
                             _tl129725130421_
                             _e129730130424_
                             _hd129729130427_
                             _tl129728130429_
                             ___splice133650133651_
                             _target129731130432_
                             _tl129733130434_)
                      (letrec ((_loop129734130437_
                                (lambda (_hd129732130440_ _args129738130442_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129732130440_))
                                      (let ((_e129735130445_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129732130440_))))
                                        (let ((_lp-tl129737130450_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129735130445_)))
                                              (_lp-hd129736130448_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129735130445_))))
                                          (let ((__tmp134924
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129736130448_
                                                         _args129738130442_))))
                                            (declare (not safe))
                                            (_loop129734130437_
                                             _lp-tl129737130450_
                                             __tmp134924))))
                                      (let ((_args129739130453_
                                             (reverse _args129738130442_)))
                                        (let ((_L130456_ _args129739130453_)
                                              (_L130457_ _hd129729130427_)
                                              (_L130458_ _hd129720130403_)
                                              (_L130459_ _hd129711130379_)
                                              (_L130460_ _hd129702130355_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130460_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130459_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130458_
                                                      _self129632_)))
                                              (___kont133648133649_
                                               _L130456_
                                               _L130457_
                                               _L130458_
                                               _L130459_
                                               _L130460_)
                                              (___kont133660133661_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129734130437_ _target129731130432_ '())))))
                   (___match133815133816_
                    (lambda (_e129694130328_
                             _hd129693130331_
                             _tl129692130333_
                             _e129697130336_
                             _hd129696130339_
                             _tl129695130341_
                             _e129700130344_
                             _hd129699130347_
                             _tl129698130349_
                             _e129703130352_
                             _hd129702130355_
                             _tl129701130357_
                             _e129706130360_
                             _hd129705130363_
                             _tl129704130365_
                             _e129709130368_
                             _hd129708130371_
                             _tl129707130373_
                             _e129712130376_
                             _hd129711130379_
                             _tl129710130381_
                             _e129715130384_
                             _hd129714130387_
                             _tl129713130389_
                             _e129718130392_
                             _hd129717130395_
                             _tl129716130397_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _hd129717130395_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl129716130397_))
                              (let ((_e129721130400_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _tl129716130397_))))
                                (let ((_tl129719130405_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129721130400_)))
                                      (_hd129720130403_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129721130400_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl129719130405_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129713130389_))
                                          (let ((_e129724130408_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129713130389_))))
                                            (let ((_tl129722130413_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129724130408_)))
                                                  (_hd129723130411_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129724130408_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _hd129723130411_))
                                                  (let ((_e129727130416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _hd129723130411_))))
                                                    (let ((_tl129725130421_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129727130416_)))
                                                          (_hd129726130419_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129727130416_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _hd129726130419_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _hd129726130419_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129725130421_))
                          (let ((_e129730130424_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129725130421_))))
                            (let ((_tl129728130429_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129730130424_)))
                                  (_hd129729130427_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129730130424_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl129728130429_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null? _tl129722130413_))
                                      (let ((___splice133650133651_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice
                                                _tl129722130413_
                                                '0))))
                                        (let ((_tl129733130434_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133650133651_
                                                  '1)))
                                              (_target129731130432_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice133650133651_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl129733130434_))
                                              (___match133857133858_
                                               _e129694130328_
                                               _hd129693130331_
                                               _tl129692130333_
                                               _e129697130336_
                                               _hd129696130339_
                                               _tl129695130341_
                                               _e129700130344_
                                               _hd129699130347_
                                               _tl129698130349_
                                               _e129703130352_
                                               _hd129702130355_
                                               _tl129701130357_
                                               _e129706130360_
                                               _hd129705130363_
                                               _tl129704130365_
                                               _e129709130368_
                                               _hd129708130371_
                                               _tl129707130373_
                                               _e129712130376_
                                               _hd129711130379_
                                               _tl129710130381_
                                               _e129715130384_
                                               _hd129714130387_
                                               _tl129713130389_
                                               _e129718130392_
                                               _hd129717130395_
                                               _tl129716130397_
                                               _e129721130400_
                                               _hd129720130403_
                                               _tl129719130405_
                                               _e129724130408_
                                               _hd129723130411_
                                               _tl129722130413_
                                               _e129727130416_
                                               _hd129726130419_
                                               _tl129725130421_
                                               _e129730130424_
                                               _hd129729130427_
                                               _tl129728130429_
                                               ___splice133650133651_
                                               _target129731130432_
                                               _tl129733130434_)
                                              (___kont133660133661_))))
                                      (___kont133660133661_))
                                  (___kont133660133661_))))
                          (___kont133660133661_))
                      (___kont133660133661_))
                  (___kont133660133661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133660133661_))))
                                          (___match134139134140_
                                           _e129694130328_
                                           _hd129693130331_
                                           _tl129692130333_
                                           _e129697130336_
                                           _hd129696130339_
                                           _tl129695130341_
                                           _e129700130344_
                                           _hd129699130347_
                                           _tl129698130349_
                                           _e129703130352_
                                           _hd129702130355_
                                           _tl129701130357_
                                           _e129706130360_
                                           _hd129705130363_
                                           _tl129704130365_
                                           _e129709130368_
                                           _hd129708130371_
                                           _tl129707130373_
                                           _e129712130376_
                                           _hd129711130379_
                                           _tl129710130381_
                                           _e129715130384_
                                           _hd129714130387_
                                           _tl129713130389_))
                                      (___match134139134140_
                                       _e129694130328_
                                       _hd129693130331_
                                       _tl129692130333_
                                       _e129697130336_
                                       _hd129696130339_
                                       _tl129695130341_
                                       _e129700130344_
                                       _hd129699130347_
                                       _tl129698130349_
                                       _e129703130352_
                                       _hd129702130355_
                                       _tl129701130357_
                                       _e129706130360_
                                       _hd129705130363_
                                       _tl129704130365_
                                       _e129709130368_
                                       _hd129708130371_
                                       _tl129707130373_
                                       _e129712130376_
                                       _hd129711130379_
                                       _tl129710130381_
                                       _e129715130384_
                                       _hd129714130387_
                                       _tl129713130389_))))
                              (___match134139134140_
                               _e129694130328_
                               _hd129693130331_
                               _tl129692130333_
                               _e129697130336_
                               _hd129696130339_
                               _tl129695130341_
                               _e129700130344_
                               _hd129699130347_
                               _tl129698130349_
                               _e129703130352_
                               _hd129702130355_
                               _tl129701130357_
                               _e129706130360_
                               _hd129705130363_
                               _tl129704130365_
                               _e129709130368_
                               _hd129708130371_
                               _tl129707130373_
                               _e129712130376_
                               _hd129711130379_
                               _tl129710130381_
                               _e129715130384_
                               _hd129714130387_
                               _tl129713130389_))
                          (___match133925133926_
                           _e129694130328_
                           _hd129693130331_
                           _tl129692130333_
                           _e129697130336_
                           _hd129696130339_
                           _tl129695130341_
                           _e129700130344_
                           _hd129699130347_
                           _tl129698130349_
                           _e129703130352_
                           _hd129702130355_
                           _tl129701130357_
                           _e129706130360_
                           _hd129705130363_
                           _tl129704130365_
                           _e129709130368_
                           _hd129708130371_
                           _tl129707130373_
                           _e129712130376_
                           _hd129711130379_
                           _tl129710130381_
                           _e129715130384_
                           _hd129714130387_
                           _tl129713130389_
                           _e129718130392_
                           _hd129717130395_
                           _tl129716130397_))))
                   (___match133747133748_
                    (lambda (_e129650130517_
                             _hd129649130520_
                             _tl129648130522_
                             _e129653130525_
                             _hd129652130528_
                             _tl129651130530_
                             _e129656130533_
                             _hd129655130536_
                             _tl129654130538_
                             _e129659130541_
                             _hd129658130544_
                             _tl129657130546_
                             _e129662130549_
                             _hd129661130552_
                             _tl129660130554_
                             _e129665130557_
                             _hd129664130560_
                             _tl129663130562_
                             _e129668130565_
                             _hd129667130568_
                             _tl129666130570_
                             _e129671130573_
                             _hd129670130576_
                             _tl129669130578_
                             _e129674130581_
                             _hd129673130584_
                             _tl129672130586_
                             _e129677130589_
                             _hd129676130592_
                             _tl129675130594_
                             ___splice133646133647_
                             _target129678130597_
                             _tl129680130599_)
                      (letrec ((_loop129681130602_
                                (lambda (_hd129679130605_ _args129685130607_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _hd129679130605_))
                                      (let ((_e129682130610_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd129679130605_))))
                                        (let ((_lp-tl129684130615_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e129682130610_)))
                                              (_lp-hd129683130613_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e129682130610_))))
                                          (let ((__tmp134925
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _lp-hd129683130613_
                                                         _args129685130607_))))
                                            (declare (not safe))
                                            (_loop129681130602_
                                             _lp-tl129684130615_
                                             __tmp134925))))
                                      (let ((_args129686130618_
                                             (reverse _args129685130607_)))
                                        (let ((_L130621_ _args129686130618_)
                                              (_L130622_ _hd129676130592_)
                                              (_L130623_ _hd129667130568_)
                                              (_L130624_ _hd129658130544_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _L130624_
                                                      'call-method))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _L130623_
                                                      _self129632_)))
                                              (___kont133644133645_
                                               _L130621_
                                               _L130622_
                                               _L130623_
                                               _L130624_)
                                              (___match133935133936_
                                               _e129650130517_
                                               _hd129649130520_
                                               _tl129648130522_
                                               _e129653130525_
                                               _hd129652130528_
                                               _tl129651130530_
                                               _e129656130533_
                                               _hd129655130536_
                                               _tl129654130538_
                                               _e129659130541_
                                               _hd129658130544_
                                               _tl129657130546_
                                               _e129662130549_
                                               _hd129661130552_
                                               _tl129660130554_
                                               _e129665130557_
                                               _hd129664130560_
                                               _tl129663130562_
                                               _e129668130565_
                                               _hd129667130568_
                                               _tl129666130570_
                                               _e129671130573_
                                               _hd129670130576_
                                               _tl129669130578_
                                               _e129674130581_
                                               _hd129673130584_
                                               _tl129672130586_
                                               _e129677130589_
                                               _hd129676130592_
                                               _tl129675130594_))))))))
                        (let ()
                          (declare (not safe))
                          (_loop129681130602_ _target129678130597_ '()))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? ___stx133642133643_))
                  (let ((_e129650130517_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e ___stx133642133643_))))
                    (let ((_tl129648130522_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129650130517_)))
                          (_hd129649130520_
                           (let ()
                             (declare (not safe))
                             (##car _e129650130517_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _tl129648130522_))
                          (let ((_e129653130525_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _tl129648130522_))))
                            (let ((_tl129651130530_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129653130525_)))
                                  (_hd129652130528_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129653130525_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _hd129652130528_))
                                  (let ((_e129656130533_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd129652130528_))))
                                    (let ((_tl129654130538_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e129656130533_)))
                                          (_hd129655130536_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e129656130533_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier? _hd129655130536_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _hd129655130536_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl129654130538_))
                                                  (let ((_e129659130541_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _tl129654130538_))))
                                                    (let ((_tl129657130546_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e129659130541_)))
                                                          (_hd129658130544_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e129659130541_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl129657130546_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl129651130530_))
                      (let ((_e129662130549_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _tl129651130530_))))
                        (let ((_tl129660130554_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129662130549_)))
                              (_hd129661130552_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129662130549_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _hd129661130552_))
                              (let ((_e129665130557_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _hd129661130552_))))
                                (let ((_tl129663130562_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129665130557_)))
                                      (_hd129664130560_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129665130557_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _hd129664130560_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _hd129664130560_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _tl129663130562_))
                                              (let ((_e129668130565_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _tl129663130562_))))
                                                (let ((_tl129666130570_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e129668130565_)))
                                                      (_hd129667130568_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e129668130565_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl129666130570_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _tl129660130554_))
                                                          (let ((_e129671130573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _tl129660130554_))))
                    (let ((_tl129669130578_
                           (let ()
                             (declare (not safe))
                             (##cdr _e129671130573_)))
                          (_hd129670130576_
                           (let ()
                             (declare (not safe))
                             (##car _e129671130573_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _hd129670130576_))
                          (let ((_e129674130581_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _hd129670130576_))))
                            (let ((_tl129672130586_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e129674130581_)))
                                  (_hd129673130584_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e129674130581_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _hd129673130584_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq? '%#quote _hd129673130584_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair? _tl129672130586_))
                                          (let ((_e129677130589_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _tl129672130586_))))
                                            (let ((_tl129675130594_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e129677130589_)))
                                                  (_hd129676130592_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e129677130589_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl129675130594_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl129669130578_))
                                                      (let ((___splice133646133647_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl129669130578_ '0))))
                (let ((_tl129680130599_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133646133647_ '1)))
                      (_target129678130597_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice133646133647_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl129680130599_))
                      (___match133747133748_
                       _e129650130517_
                       _hd129649130520_
                       _tl129648130522_
                       _e129653130525_
                       _hd129652130528_
                       _tl129651130530_
                       _e129656130533_
                       _hd129655130536_
                       _tl129654130538_
                       _e129659130541_
                       _hd129658130544_
                       _tl129657130546_
                       _e129662130549_
                       _hd129661130552_
                       _tl129660130554_
                       _e129665130557_
                       _hd129664130560_
                       _tl129663130562_
                       _e129668130565_
                       _hd129667130568_
                       _tl129666130570_
                       _e129671130573_
                       _hd129670130576_
                       _tl129669130578_
                       _e129674130581_
                       _hd129673130584_
                       _tl129672130586_
                       _e129677130589_
                       _hd129676130592_
                       _tl129675130594_
                       ___splice133646133647_
                       _target129678130597_
                       _tl129680130599_)
                      (___match133935133936_
                       _e129650130517_
                       _hd129649130520_
                       _tl129648130522_
                       _e129653130525_
                       _hd129652130528_
                       _tl129651130530_
                       _e129656130533_
                       _hd129655130536_
                       _tl129654130538_
                       _e129659130541_
                       _hd129658130544_
                       _tl129657130546_
                       _e129662130549_
                       _hd129661130552_
                       _tl129660130554_
                       _e129665130557_
                       _hd129664130560_
                       _tl129663130562_
                       _e129668130565_
                       _hd129667130568_
                       _tl129666130570_
                       _e129671130573_
                       _hd129670130576_
                       _tl129669130578_
                       _e129674130581_
                       _hd129673130584_
                       _tl129672130586_
                       _e129677130589_
                       _hd129676130592_
                       _tl129675130594_))))
              (___match133935133936_
               _e129650130517_
               _hd129649130520_
               _tl129648130522_
               _e129653130525_
               _hd129652130528_
               _tl129651130530_
               _e129656130533_
               _hd129655130536_
               _tl129654130538_
               _e129659130541_
               _hd129658130544_
               _tl129657130546_
               _e129662130549_
               _hd129661130552_
               _tl129660130554_
               _e129665130557_
               _hd129664130560_
               _tl129663130562_
               _e129668130565_
               _hd129667130568_
               _tl129666130570_
               _e129671130573_
               _hd129670130576_
               _tl129669130578_
               _e129674130581_
               _hd129673130584_
               _tl129672130586_
               _e129677130589_
               _hd129676130592_
               _tl129675130594_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___match134139134140_
                                                   _e129650130517_
                                                   _hd129649130520_
                                                   _tl129648130522_
                                                   _e129653130525_
                                                   _hd129652130528_
                                                   _tl129651130530_
                                                   _e129656130533_
                                                   _hd129655130536_
                                                   _tl129654130538_
                                                   _e129659130541_
                                                   _hd129658130544_
                                                   _tl129657130546_
                                                   _e129662130549_
                                                   _hd129661130552_
                                                   _tl129660130554_
                                                   _e129665130557_
                                                   _hd129664130560_
                                                   _tl129663130562_
                                                   _e129668130565_
                                                   _hd129667130568_
                                                   _tl129666130570_
                                                   _e129671130573_
                                                   _hd129670130576_
                                                   _tl129669130578_))))
                                          (___match134139134140_
                                           _e129650130517_
                                           _hd129649130520_
                                           _tl129648130522_
                                           _e129653130525_
                                           _hd129652130528_
                                           _tl129651130530_
                                           _e129656130533_
                                           _hd129655130536_
                                           _tl129654130538_
                                           _e129659130541_
                                           _hd129658130544_
                                           _tl129657130546_
                                           _e129662130549_
                                           _hd129661130552_
                                           _tl129660130554_
                                           _e129665130557_
                                           _hd129664130560_
                                           _tl129663130562_
                                           _e129668130565_
                                           _hd129667130568_
                                           _tl129666130570_
                                           _e129671130573_
                                           _hd129670130576_
                                           _tl129669130578_))
                                      (___match133815133816_
                                       _e129650130517_
                                       _hd129649130520_
                                       _tl129648130522_
                                       _e129653130525_
                                       _hd129652130528_
                                       _tl129651130530_
                                       _e129656130533_
                                       _hd129655130536_
                                       _tl129654130538_
                                       _e129659130541_
                                       _hd129658130544_
                                       _tl129657130546_
                                       _e129662130549_
                                       _hd129661130552_
                                       _tl129660130554_
                                       _e129665130557_
                                       _hd129664130560_
                                       _tl129663130562_
                                       _e129668130565_
                                       _hd129667130568_
                                       _tl129666130570_
                                       _e129671130573_
                                       _hd129670130576_
                                       _tl129669130578_
                                       _e129674130581_
                                       _hd129673130584_
                                       _tl129672130586_))
                                  (___match134139134140_
                                   _e129650130517_
                                   _hd129649130520_
                                   _tl129648130522_
                                   _e129653130525_
                                   _hd129652130528_
                                   _tl129651130530_
                                   _e129656130533_
                                   _hd129655130536_
                                   _tl129654130538_
                                   _e129659130541_
                                   _hd129658130544_
                                   _tl129657130546_
                                   _e129662130549_
                                   _hd129661130552_
                                   _tl129660130554_
                                   _e129665130557_
                                   _hd129664130560_
                                   _tl129663130562_
                                   _e129668130565_
                                   _hd129667130568_
                                   _tl129666130570_
                                   _e129671130573_
                                   _hd129670130576_
                                   _tl129669130578_))))
                          (___match134139134140_
                           _e129650130517_
                           _hd129649130520_
                           _tl129648130522_
                           _e129653130525_
                           _hd129652130528_
                           _tl129651130530_
                           _e129656130533_
                           _hd129655130536_
                           _tl129654130538_
                           _e129659130541_
                           _hd129658130544_
                           _tl129657130546_
                           _e129662130549_
                           _hd129661130552_
                           _tl129660130554_
                           _e129665130557_
                           _hd129664130560_
                           _tl129663130562_
                           _e129668130565_
                           _hd129667130568_
                           _tl129666130570_
                           _e129671130573_
                           _hd129670130576_
                           _tl129669130578_))))
                  (___match134077134078_
                   _e129650130517_
                   _hd129649130520_
                   _tl129648130522_
                   _e129653130525_
                   _hd129652130528_
                   _tl129651130530_
                   _e129656130533_
                   _hd129655130536_
                   _tl129654130538_
                   _e129659130541_
                   _hd129658130544_
                   _tl129657130546_
                   _e129662130549_
                   _hd129661130552_
                   _tl129660130554_
                   _e129665130557_
                   _hd129664130560_
                   _tl129663130562_
                   _e129668130565_
                   _hd129667130568_
                   _tl129666130570_))
              (___kont133660133661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (___kont133660133661_))
                                          (___kont133660133661_))
                                      (___kont133660133661_))))
                              (___kont133660133661_))))
                      (___kont133660133661_))
                  (___kont133660133661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (___kont133660133661_))
                                              (___kont133660133661_))
                                          (___kont133660133661_))))
                                  (___kont133660133661_))))
                          (___kont133660133661_))))
                  (___kont133660133661_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_stx128566_
               _self128567_
               _$klass128568_
               _methods128569_
               _slots128570_)
        (letrec ((_force-e128572_
                  (lambda (_target129629_)
                    (let ((__tmp134926
                           (let ((__tmp134930
                                  (let ((__tmp134931
                                         (let ()
                                           (declare (not safe))
                                           (cons 'force '()))))
                                    (declare (not safe))
                                    (cons '%#ref __tmp134931)))
                                 (__tmp134927
                                  (let ((__tmp134928
                                         (let ((__tmp134929
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _target129629_ '()))))
                                           (declare (not safe))
                                           (cons '%#ref __tmp134929))))
                                    (declare (not safe))
                                    (cons __tmp134928 '()))))
                             (declare (not safe))
                             (cons __tmp134930 __tmp134927))))
                      (declare (not safe))
                      (cons '%#call __tmp134926)))))
          (let* ((___stx134144134145_ _stx128566_)
                 (_g128580128802_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       ___stx134144134145_)))))
            (let ((___kont134146134147_
                   (lambda (_L129575_ _L129576_ _L129577_ _L129578_)
                     (let ((_$method129623_
                            (let ((__tmp134932
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129576_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128569_ __tmp134932)))
                           (_args129624_
                            (map (lambda (_g129611129613_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129611129613_
                                      _self128567_
                                      _$klass128568_
                                      _methods128569_
                                      _slots128570_)))
                                 (let ((__tmp134933
                                        (lambda (_g129615129618_
                                                 _g129616129620_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129615129618_
                                                  _g129616129620_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp134933 '() _L129575_)))))
                       (let ((__tmp134934
                              (let ((__tmp134935
                                     (let ((__tmp134939
                                            (let ()
                                              (declare (not safe))
                                              (_force-e128572_
                                               _$method129623_)))
                                           (__tmp134936
                                            (let ((__tmp134937
                                                   (let ((__tmp134938
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _self128567_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp134938))))
                                              (declare (not safe))
                                              (cons __tmp134937
                                                    _args129624_))))
                                       (declare (not safe))
                                       (cons __tmp134939 __tmp134936))))
                                (declare (not safe))
                                (cons '%#call __tmp134935))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134934 _stx128566_)))))
                  (___kont134150134151_
                   (lambda (_L129407_ _L129408_ _L129409_ _L129410_ _L129411_)
                     (let ((_$method129463_
                            (let ((__tmp134940
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129408_))))
                              (declare (not safe))
                              (hash-ref__0 _methods128569_ __tmp134940)))
                           (_args129464_
                            (map (lambda (_g129451129453_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__3
                                      _g129451129453_
                                      _self128567_
                                      _$klass128568_
                                      _methods128569_
                                      _slots128570_)))
                                 (let ((__tmp134941
                                        (lambda (_g129455129458_
                                                 _g129456129460_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g129455129458_
                                                  _g129456129460_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp134941 '() _L129407_)))))
                       (let ((__tmp134942
                              (let ((__tmp134943
                                     (let ((__tmp134949
                                            (let ((__tmp134950
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons 'apply '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp134950)))
                                           (__tmp134944
                                            (let ((__tmp134948
                                                   (let ()
                                                     (declare (not safe))
                                                     (_force-e128572_
                                                      _$method129463_)))
                                                  (__tmp134945
                                                   (let ((__tmp134946
                                                          (let ((__tmp134947
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128567_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp134947))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134946
                                                           _args129464_))))
                                              (declare (not safe))
                                              (cons __tmp134948 __tmp134945))))
                                       (declare (not safe))
                                       (cons __tmp134949 __tmp134944))))
                                (declare (not safe))
                                (cons '%#call __tmp134943))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134942 _stx128566_)))))
                  (___kont134154134155_
                   (lambda (_L129238_ _L129239_ _L129240_)
                     (let* ((_$field129272_
                             (let ((__tmp134951
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _L129238_))))
                               (declare (not safe))
                               (hash-ref__0 _slots128570_ __tmp134951)))
                            (__tmp134952
                             (let ((__tmp134953
                                    (let ((__tmp134960
                                           (let ((__tmp134961
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _$klass128568_
                                                          '()))))
                                             (declare (not safe))
                                             (cons '%#ref __tmp134961)))
                                          (__tmp134954
                                           (let ((__tmp134958
                                                  (let ((__tmp134959
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _$field129272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons '%#ref __tmp134959)))
                                                 (__tmp134955
                                                  (let ((__tmp134956
                                                         (let ((__tmp134957
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _self128567_ '()))))
                   (declare (not safe))
                   (cons '%#ref __tmp134957))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134956 '()))))
                                             (declare (not safe))
                                             (cons __tmp134958 __tmp134955))))
                                      (declare (not safe))
                                      (cons __tmp134960 __tmp134954))))
                               (declare (not safe))
                               (cons '%#struct-unchecked-ref __tmp134953))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp134952 _stx128566_))))
                  (___kont134156134157_
                   (lambda (_L129112_ _L129113_ _L129114_ _L129115_)
                     (let ((_$field129150_
                            (let ((__tmp134962
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _L129113_))))
                              (declare (not safe))
                              (hash-ref__0 _slots128570_ __tmp134962)))
                           (_expr129151_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__3
                               _L129112_
                               _self128567_
                               _$klass128568_
                               _methods128569_
                               _slots128570_))))
                       (let ((__tmp134963
                              (let ((__tmp134964
                                     (let ((__tmp134972
                                            (let ((__tmp134973
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _$klass128568_
                                                           '()))))
                                              (declare (not safe))
                                              (cons '%#ref __tmp134973)))
                                           (__tmp134965
                                            (let ((__tmp134970
                                                   (let ((__tmp134971
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _$field129150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '%#ref
                                                           __tmp134971)))
                                                  (__tmp134966
                                                   (let ((__tmp134968
                                                          (let ((__tmp134969
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _self128567_ '()))))
                    (declare (not safe))
                    (cons '%#ref __tmp134969)))
                 (__tmp134967
                  (let () (declare (not safe)) (cons _expr129151_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134968
                                                           __tmp134967))))
                                              (declare (not safe))
                                              (cons __tmp134970 __tmp134966))))
                                       (declare (not safe))
                                       (cons __tmp134972 __tmp134965))))
                                (declare (not safe))
                                (cons '%#struct-unchecked-set! __tmp134964))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp134963 _stx128566_)))))
                  (___kont134158134159_
                   (lambda (_L128984_ _L128985_)
                     (let* ((_accessor129007_
                             (let ((__tmp134974
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L128985_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp134974)))
                            (_klass129009_
                             (let ((__tmp134975
                                    (##structure-ref
                                     _accessor129007_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128566_
                                __tmp134975)))
                            (_slot129011_
                             (##structure-ref
                              _accessor129007_
                              '2
                              gxc#!accessor::t
                              '#f)))
                       (if (and (let ((__tmp134986
                                       (##structure-ref
                                        _accessor129007_
                                        '3
                                        gxc#!accessor::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp134986))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass129009_
                                       _slot129011_))
                                    (##structure-ref
                                     _klass129009_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           _stx128566_
                           (let* ((_$field129017_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots128570_ _slot129011_)))
                                  (__tmp134976
                                   (let ((__tmp134977
                                          (let ((__tmp134984
                                                 (let ((__tmp134985
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass128568_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp134985)))
                                                (__tmp134978
                                                 (let ((__tmp134982
                                                        (let ((__tmp134983
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field129017_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp134983)))
               (__tmp134979
                (let ((__tmp134980
                       (let ((__tmp134981
                              (let ()
                                (declare (not safe))
                                (cons _self128567_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp134981))))
                  (declare (not safe))
                  (cons __tmp134980 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp134982
                                                         __tmp134979))))
                                            (declare (not safe))
                                            (cons __tmp134984 __tmp134978))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-ref
                                           __tmp134977))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp134976
                              _stx128566_))))))
                  (___kont134160134161_
                   (lambda (_L128878_ _L128879_ _L128880_)
                     (let* ((_mutator128909_
                             (let ((__tmp134987
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol _L128880_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp134987)))
                            (_klass128911_
                             (let ((__tmp134988
                                    (##structure-ref
                                     _mutator128909_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _stx128566_
                                __tmp134988)))
                            (_slot128913_
                             (##structure-ref
                              _mutator128909_
                              '2
                              gxc#!mutator::t
                              '#f))
                            (_expr128915_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__3
                                _L128878_
                                _self128567_
                                _$klass128568_
                                _methods128569_
                                _slots128570_))))
                       (if (and (let ((__tmp135004
                                       (##structure-ref
                                        _mutator128909_
                                        '3
                                        gxc#!mutator::t
                                        '#f)))
                                  (declare (not safe))
                                  (not __tmp135004))
                                (or (let ()
                                      (declare (not safe))
                                      (gxc#!class-struct-slot?
                                       _klass128911_
                                       _slot128913_))
                                    (##structure-ref
                                     _klass128911_
                                     '8
                                     gxc#!class::t
                                     '#f)))
                           (let ((__tmp135000
                                  (let ((__tmp135001
                                         (let ((__tmp135002
                                                (let ((__tmp135003
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _expr128915_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons '(%#ref -self)
                                                        __tmp135003))))
                                           (declare (not safe))
                                           (cons '(%#ref setf) __tmp135002))))
                                    (declare (not safe))
                                    (cons '%#call __tmp135001))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp135000 _stx128566_))
                           (let* ((_$field128921_
                                   (let ()
                                     (declare (not safe))
                                     (hash-ref__0 _slots128570_ _slot128913_)))
                                  (__tmp134989
                                   (let ((__tmp134990
                                          (let ((__tmp134998
                                                 (let ((__tmp134999
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _$klass128568_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons '%#ref __tmp134999)))
                                                (__tmp134991
                                                 (let ((__tmp134996
                                                        (let ((__tmp134997
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (cons _$field128921_ '()))))
                  (declare (not safe))
                  (cons '%#ref __tmp134997)))
               (__tmp134992
                (let ((__tmp134994
                       (let ((__tmp134995
                              (let ()
                                (declare (not safe))
                                (cons _self128567_ '()))))
                         (declare (not safe))
                         (cons '%#ref __tmp134995)))
                      (__tmp134993
                       (let () (declare (not safe)) (cons _expr128915_ '()))))
                  (declare (not safe))
                  (cons __tmp134994 __tmp134993))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp134996
                                                         __tmp134992))))
                                            (declare (not safe))
                                            (cons __tmp134998 __tmp134991))))
                                     (declare (not safe))
                                     (cons '%#struct-unchecked-set!
                                           __tmp134990))))
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp134989
                              _stx128566_))))))
                  (___kont134162134163_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands
                        _stx128566_
                        _self128567_
                        _$klass128568_
                        _methods128569_
                        _slots128570_)))))
              (let* ((___match134643134644_
                      (lambda (_e128776128814_
                               _hd128775128817_
                               _tl128774128819_
                               _e128779128822_
                               _hd128778128825_
                               _tl128777128827_
                               _e128782128830_
                               _hd128781128833_
                               _tl128780128835_
                               _e128785128838_
                               _hd128784128841_
                               _tl128783128843_
                               _e128788128846_
                               _hd128787128849_
                               _tl128786128851_
                               _e128791128854_
                               _hd128790128857_
                               _tl128789128859_
                               _e128794128862_
                               _hd128793128865_
                               _tl128792128867_
                               _e128797128870_
                               _hd128796128873_
                               _tl128795128875_)
                        (let ((_L128878_ _hd128796128873_)
                              (_L128879_ _hd128793128865_)
                              (_L128880_ _hd128784128841_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128879_
                                      _self128567_))
                                   (let ((__tmp135005
                                          (let ((__tmp135006
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128880_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135006))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135005
                                      'gxc#!mutator::t)))
                              (___kont134160134161_
                               _L128878_
                               _L128879_
                               _L128880_)
                              (___kont134162134163_)))))
                     (___match134641134642_
                      (lambda (_e128776128814_
                               _hd128775128817_
                               _tl128774128819_
                               _e128779128822_
                               _hd128778128825_
                               _tl128777128827_
                               _e128782128830_
                               _hd128781128833_
                               _tl128780128835_
                               _e128785128838_
                               _hd128784128841_
                               _tl128783128843_
                               _e128788128846_
                               _hd128787128849_
                               _tl128786128851_
                               _e128791128854_
                               _hd128790128857_
                               _tl128789128859_
                               _e128794128862_
                               _hd128793128865_
                               _tl128792128867_
                               _e128797128870_
                               _hd128796128873_
                               _tl128795128875_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128795128875_))
                            (___match134643134644_
                             _e128776128814_
                             _hd128775128817_
                             _tl128774128819_
                             _e128779128822_
                             _hd128778128825_
                             _tl128777128827_
                             _e128782128830_
                             _hd128781128833_
                             _tl128780128835_
                             _e128785128838_
                             _hd128784128841_
                             _tl128783128843_
                             _e128788128846_
                             _hd128787128849_
                             _tl128786128851_
                             _e128791128854_
                             _hd128790128857_
                             _tl128789128859_
                             _e128794128862_
                             _hd128793128865_
                             _tl128792128867_
                             _e128797128870_
                             _hd128796128873_
                             _tl128795128875_)
                            (___kont134162134163_))))
                     (___match134635134636_
                      (lambda (_e128776128814_
                               _hd128775128817_
                               _tl128774128819_
                               _e128779128822_
                               _hd128778128825_
                               _tl128777128827_
                               _e128782128830_
                               _hd128781128833_
                               _tl128780128835_
                               _e128785128838_
                               _hd128784128841_
                               _tl128783128843_
                               _e128788128846_
                               _hd128787128849_
                               _tl128786128851_
                               _e128791128854_
                               _hd128790128857_
                               _tl128789128859_
                               _e128794128862_
                               _hd128793128865_
                               _tl128792128867_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128786128851_))
                            (let ((_e128797128870_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128786128851_))))
                              (let ((_tl128795128875_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128797128870_)))
                                    (_hd128796128873_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128797128870_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128795128875_))
                                    (___match134643134644_
                                     _e128776128814_
                                     _hd128775128817_
                                     _tl128774128819_
                                     _e128779128822_
                                     _hd128778128825_
                                     _tl128777128827_
                                     _e128782128830_
                                     _hd128781128833_
                                     _tl128780128835_
                                     _e128785128838_
                                     _hd128784128841_
                                     _tl128783128843_
                                     _e128788128846_
                                     _hd128787128849_
                                     _tl128786128851_
                                     _e128791128854_
                                     _hd128790128857_
                                     _tl128789128859_
                                     _e128794128862_
                                     _hd128793128865_
                                     _tl128792128867_
                                     _e128797128870_
                                     _hd128796128873_
                                     _tl128795128875_)
                                    (___kont134162134163_))))
                            (___kont134162134163_))))
                     (___match134581134582_
                      (lambda (_e128752128928_
                               _hd128751128931_
                               _tl128750128933_
                               _e128755128936_
                               _hd128754128939_
                               _tl128753128941_
                               _e128758128944_
                               _hd128757128947_
                               _tl128756128949_
                               _e128761128952_
                               _hd128760128955_
                               _tl128759128957_
                               _e128764128960_
                               _hd128763128963_
                               _tl128762128965_
                               _e128767128968_
                               _hd128766128971_
                               _tl128765128973_
                               _e128770128976_
                               _hd128769128979_
                               _tl128768128981_)
                        (let ((_L128984_ _hd128769128979_)
                              (_L128985_ _hd128760128955_))
                          (if (and (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L128984_
                                      _self128567_))
                                   (let ((__tmp135007
                                          (let ((__tmp135008
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _L128985_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp135008))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp135007
                                      'gxc#!accessor::t)))
                              (___kont134158134159_ _L128984_ _L128985_)
                              (___kont134162134163_)))))
                     (___match134579134580_
                      (lambda (_e128752128928_
                               _hd128751128931_
                               _tl128750128933_
                               _e128755128936_
                               _hd128754128939_
                               _tl128753128941_
                               _e128758128944_
                               _hd128757128947_
                               _tl128756128949_
                               _e128761128952_
                               _hd128760128955_
                               _tl128759128957_
                               _e128764128960_
                               _hd128763128963_
                               _tl128762128965_
                               _e128767128968_
                               _hd128766128971_
                               _tl128765128973_
                               _e128770128976_
                               _hd128769128979_
                               _tl128768128981_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128762128965_))
                            (___match134581134582_
                             _e128752128928_
                             _hd128751128931_
                             _tl128750128933_
                             _e128755128936_
                             _hd128754128939_
                             _tl128753128941_
                             _e128758128944_
                             _hd128757128947_
                             _tl128756128949_
                             _e128761128952_
                             _hd128760128955_
                             _tl128759128957_
                             _e128764128960_
                             _hd128763128963_
                             _tl128762128965_
                             _e128767128968_
                             _hd128766128971_
                             _tl128765128973_
                             _e128770128976_
                             _hd128769128979_
                             _tl128768128981_)
                            (___match134635134636_
                             _e128752128928_
                             _hd128751128931_
                             _tl128750128933_
                             _e128755128936_
                             _hd128754128939_
                             _tl128753128941_
                             _e128758128944_
                             _hd128757128947_
                             _tl128756128949_
                             _e128761128952_
                             _hd128760128955_
                             _tl128759128957_
                             _e128764128960_
                             _hd128763128963_
                             _tl128762128965_
                             _e128767128968_
                             _hd128766128971_
                             _tl128765128973_
                             _e128770128976_
                             _hd128769128979_
                             _tl128768128981_))))
                     (___match134525134526_
                      (lambda (_e128717129024_
                               _hd128716129027_
                               _tl128715129029_
                               _e128720129032_
                               _hd128719129035_
                               _tl128718129037_
                               _e128723129040_
                               _hd128722129043_
                               _tl128721129045_
                               _e128726129048_
                               _hd128725129051_
                               _tl128724129053_
                               _e128729129056_
                               _hd128728129059_
                               _tl128727129061_
                               _e128732129064_
                               _hd128731129067_
                               _tl128730129069_
                               _e128735129072_
                               _hd128734129075_
                               _tl128733129077_
                               _e128738129080_
                               _hd128737129083_
                               _tl128736129085_
                               _e128741129088_
                               _hd128740129091_
                               _tl128739129093_
                               _e128744129096_
                               _hd128743129099_
                               _tl128742129101_
                               _e128747129104_
                               _hd128746129107_
                               _tl128745129109_)
                        (let ((_L129112_ _hd128746129107_)
                              (_L129113_ _hd128743129099_)
                              (_L129114_ _hd128734129075_)
                              (_L129115_ _hd128725129051_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129115_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129115_
                                          'unchecked-slot-set!)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129114_
                                      _self128567_)))
                              (___kont134156134157_
                               _L129112_
                               _L129113_
                               _L129114_
                               _L129115_)
                              (___kont134162134163_)))))
                     (___match134517134518_
                      (lambda (_e128717129024_
                               _hd128716129027_
                               _tl128715129029_
                               _e128720129032_
                               _hd128719129035_
                               _tl128718129037_
                               _e128723129040_
                               _hd128722129043_
                               _tl128721129045_
                               _e128726129048_
                               _hd128725129051_
                               _tl128724129053_
                               _e128729129056_
                               _hd128728129059_
                               _tl128727129061_
                               _e128732129064_
                               _hd128731129067_
                               _tl128730129069_
                               _e128735129072_
                               _hd128734129075_
                               _tl128733129077_
                               _e128738129080_
                               _hd128737129083_
                               _tl128736129085_
                               _e128741129088_
                               _hd128740129091_
                               _tl128739129093_
                               _e128744129096_
                               _hd128743129099_
                               _tl128742129101_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128736129085_))
                            (let ((_e128747129104_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128736129085_))))
                              (let ((_tl128745129109_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128747129104_)))
                                    (_hd128746129107_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128747129104_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128745129109_))
                                    (___match134525134526_
                                     _e128717129024_
                                     _hd128716129027_
                                     _tl128715129029_
                                     _e128720129032_
                                     _hd128719129035_
                                     _tl128718129037_
                                     _e128723129040_
                                     _hd128722129043_
                                     _tl128721129045_
                                     _e128726129048_
                                     _hd128725129051_
                                     _tl128724129053_
                                     _e128729129056_
                                     _hd128728129059_
                                     _tl128727129061_
                                     _e128732129064_
                                     _hd128731129067_
                                     _tl128730129069_
                                     _e128735129072_
                                     _hd128734129075_
                                     _tl128733129077_
                                     _e128738129080_
                                     _hd128737129083_
                                     _tl128736129085_
                                     _e128741129088_
                                     _hd128740129091_
                                     _tl128739129093_
                                     _e128744129096_
                                     _hd128743129099_
                                     _tl128742129101_
                                     _e128747129104_
                                     _hd128746129107_
                                     _tl128745129109_)
                                    (___kont134162134163_))))
                            (___match134641134642_
                             _e128717129024_
                             _hd128716129027_
                             _tl128715129029_
                             _e128720129032_
                             _hd128719129035_
                             _tl128718129037_
                             _e128723129040_
                             _hd128722129043_
                             _tl128721129045_
                             _e128726129048_
                             _hd128725129051_
                             _tl128724129053_
                             _e128729129056_
                             _hd128728129059_
                             _tl128727129061_
                             _e128732129064_
                             _hd128731129067_
                             _tl128730129069_
                             _e128735129072_
                             _hd128734129075_
                             _tl128733129077_
                             _e128738129080_
                             _hd128737129083_
                             _tl128736129085_))))
                     (___match134439134440_
                      (lambda (_e128683129158_
                               _hd128682129161_
                               _tl128681129163_
                               _e128686129166_
                               _hd128685129169_
                               _tl128684129171_
                               _e128689129174_
                               _hd128688129177_
                               _tl128687129179_
                               _e128692129182_
                               _hd128691129185_
                               _tl128690129187_
                               _e128695129190_
                               _hd128694129193_
                               _tl128693129195_
                               _e128698129198_
                               _hd128697129201_
                               _tl128696129203_
                               _e128701129206_
                               _hd128700129209_
                               _tl128699129211_
                               _e128704129214_
                               _hd128703129217_
                               _tl128702129219_
                               _e128707129222_
                               _hd128706129225_
                               _tl128705129227_
                               _e128710129230_
                               _hd128709129233_
                               _tl128708129235_)
                        (let ((_L129238_ _hd128709129233_)
                              (_L129239_ _hd128700129209_)
                              (_L129240_ _hd128691129185_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129240_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _L129240_
                                          'unchecked-slot-ref)))
                                   (let ()
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _L129239_
                                      _self128567_)))
                              (___kont134154134155_
                               _L129238_
                               _L129239_
                               _L129240_)
                              (___match134643134644_
                               _e128683129158_
                               _hd128682129161_
                               _tl128681129163_
                               _e128686129166_
                               _hd128685129169_
                               _tl128684129171_
                               _e128689129174_
                               _hd128688129177_
                               _tl128687129179_
                               _e128692129182_
                               _hd128691129185_
                               _tl128690129187_
                               _e128695129190_
                               _hd128694129193_
                               _tl128693129195_
                               _e128698129198_
                               _hd128697129201_
                               _tl128696129203_
                               _e128701129206_
                               _hd128700129209_
                               _tl128699129211_
                               _e128704129214_
                               _hd128703129217_
                               _tl128702129219_)))))
                     (___match134437134438_
                      (lambda (_e128683129158_
                               _hd128682129161_
                               _tl128681129163_
                               _e128686129166_
                               _hd128685129169_
                               _tl128684129171_
                               _e128689129174_
                               _hd128688129177_
                               _tl128687129179_
                               _e128692129182_
                               _hd128691129185_
                               _tl128690129187_
                               _e128695129190_
                               _hd128694129193_
                               _tl128693129195_
                               _e128698129198_
                               _hd128697129201_
                               _tl128696129203_
                               _e128701129206_
                               _hd128700129209_
                               _tl128699129211_
                               _e128704129214_
                               _hd128703129217_
                               _tl128702129219_
                               _e128707129222_
                               _hd128706129225_
                               _tl128705129227_
                               _e128710129230_
                               _hd128709129233_
                               _tl128708129235_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl128702129219_))
                            (___match134439134440_
                             _e128683129158_
                             _hd128682129161_
                             _tl128681129163_
                             _e128686129166_
                             _hd128685129169_
                             _tl128684129171_
                             _e128689129174_
                             _hd128688129177_
                             _tl128687129179_
                             _e128692129182_
                             _hd128691129185_
                             _tl128690129187_
                             _e128695129190_
                             _hd128694129193_
                             _tl128693129195_
                             _e128698129198_
                             _hd128697129201_
                             _tl128696129203_
                             _e128701129206_
                             _hd128700129209_
                             _tl128699129211_
                             _e128704129214_
                             _hd128703129217_
                             _tl128702129219_
                             _e128707129222_
                             _hd128706129225_
                             _tl128705129227_
                             _e128710129230_
                             _hd128709129233_
                             _tl128708129235_)
                            (___match134517134518_
                             _e128683129158_
                             _hd128682129161_
                             _tl128681129163_
                             _e128686129166_
                             _hd128685129169_
                             _tl128684129171_
                             _e128689129174_
                             _hd128688129177_
                             _tl128687129179_
                             _e128692129182_
                             _hd128691129185_
                             _tl128690129187_
                             _e128695129190_
                             _hd128694129193_
                             _tl128693129195_
                             _e128698129198_
                             _hd128697129201_
                             _tl128696129203_
                             _e128701129206_
                             _hd128700129209_
                             _tl128699129211_
                             _e128704129214_
                             _hd128703129217_
                             _tl128702129219_
                             _e128707129222_
                             _hd128706129225_
                             _tl128705129227_
                             _e128710129230_
                             _hd128709129233_
                             _tl128708129235_))))
                     (___match134427134428_
                      (lambda (_e128683129158_
                               _hd128682129161_
                               _tl128681129163_
                               _e128686129166_
                               _hd128685129169_
                               _tl128684129171_
                               _e128689129174_
                               _hd128688129177_
                               _tl128687129179_
                               _e128692129182_
                               _hd128691129185_
                               _tl128690129187_
                               _e128695129190_
                               _hd128694129193_
                               _tl128693129195_
                               _e128698129198_
                               _hd128697129201_
                               _tl128696129203_
                               _e128701129206_
                               _hd128700129209_
                               _tl128699129211_
                               _e128704129214_
                               _hd128703129217_
                               _tl128702129219_
                               _e128707129222_
                               _hd128706129225_
                               _tl128705129227_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _hd128706129225_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128705129227_))
                                (let ((_e128710129230_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128705129227_))))
                                  (let ((_tl128708129235_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128710129230_)))
                                        (_hd128709129233_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128710129230_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128708129235_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl128702129219_))
                                            (___match134439134440_
                                             _e128683129158_
                                             _hd128682129161_
                                             _tl128681129163_
                                             _e128686129166_
                                             _hd128685129169_
                                             _tl128684129171_
                                             _e128689129174_
                                             _hd128688129177_
                                             _tl128687129179_
                                             _e128692129182_
                                             _hd128691129185_
                                             _tl128690129187_
                                             _e128695129190_
                                             _hd128694129193_
                                             _tl128693129195_
                                             _e128698129198_
                                             _hd128697129201_
                                             _tl128696129203_
                                             _e128701129206_
                                             _hd128700129209_
                                             _tl128699129211_
                                             _e128704129214_
                                             _hd128703129217_
                                             _tl128702129219_
                                             _e128707129222_
                                             _hd128706129225_
                                             _tl128705129227_
                                             _e128710129230_
                                             _hd128709129233_
                                             _tl128708129235_)
                                            (___match134517134518_
                                             _e128683129158_
                                             _hd128682129161_
                                             _tl128681129163_
                                             _e128686129166_
                                             _hd128685129169_
                                             _tl128684129171_
                                             _e128689129174_
                                             _hd128688129177_
                                             _tl128687129179_
                                             _e128692129182_
                                             _hd128691129185_
                                             _tl128690129187_
                                             _e128695129190_
                                             _hd128694129193_
                                             _tl128693129195_
                                             _e128698129198_
                                             _hd128697129201_
                                             _tl128696129203_
                                             _e128701129206_
                                             _hd128700129209_
                                             _tl128699129211_
                                             _e128704129214_
                                             _hd128703129217_
                                             _tl128702129219_
                                             _e128707129222_
                                             _hd128706129225_
                                             _tl128705129227_
                                             _e128710129230_
                                             _hd128709129233_
                                             _tl128708129235_))
                                        (___match134641134642_
                                         _e128683129158_
                                         _hd128682129161_
                                         _tl128681129163_
                                         _e128686129166_
                                         _hd128685129169_
                                         _tl128684129171_
                                         _e128689129174_
                                         _hd128688129177_
                                         _tl128687129179_
                                         _e128692129182_
                                         _hd128691129185_
                                         _tl128690129187_
                                         _e128695129190_
                                         _hd128694129193_
                                         _tl128693129195_
                                         _e128698129198_
                                         _hd128697129201_
                                         _tl128696129203_
                                         _e128701129206_
                                         _hd128700129209_
                                         _tl128699129211_
                                         _e128704129214_
                                         _hd128703129217_
                                         _tl128702129219_))))
                                (___match134641134642_
                                 _e128683129158_
                                 _hd128682129161_
                                 _tl128681129163_
                                 _e128686129166_
                                 _hd128685129169_
                                 _tl128684129171_
                                 _e128689129174_
                                 _hd128688129177_
                                 _tl128687129179_
                                 _e128692129182_
                                 _hd128691129185_
                                 _tl128690129187_
                                 _e128695129190_
                                 _hd128694129193_
                                 _tl128693129195_
                                 _e128698129198_
                                 _hd128697129201_
                                 _tl128696129203_
                                 _e128701129206_
                                 _hd128700129209_
                                 _tl128699129211_
                                 _e128704129214_
                                 _hd128703129217_
                                 _tl128702129219_))
                            (___match134641134642_
                             _e128683129158_
                             _hd128682129161_
                             _tl128681129163_
                             _e128686129166_
                             _hd128685129169_
                             _tl128684129171_
                             _e128689129174_
                             _hd128688129177_
                             _tl128687129179_
                             _e128692129182_
                             _hd128691129185_
                             _tl128690129187_
                             _e128695129190_
                             _hd128694129193_
                             _tl128693129195_
                             _e128698129198_
                             _hd128697129201_
                             _tl128696129203_
                             _e128701129206_
                             _hd128700129209_
                             _tl128699129211_
                             _e128704129214_
                             _hd128703129217_
                             _tl128702129219_))))
                     (___match134359134360_
                      (lambda (_e128632129279_
                               _hd128631129282_
                               _tl128630129284_
                               _e128635129287_
                               _hd128634129290_
                               _tl128633129292_
                               _e128638129295_
                               _hd128637129298_
                               _tl128636129300_
                               _e128641129303_
                               _hd128640129306_
                               _tl128639129308_
                               _e128644129311_
                               _hd128643129314_
                               _tl128642129316_
                               _e128647129319_
                               _hd128646129322_
                               _tl128645129324_
                               _e128650129327_
                               _hd128649129330_
                               _tl128648129332_
                               _e128653129335_
                               _hd128652129338_
                               _tl128651129340_
                               _e128656129343_
                               _hd128655129346_
                               _tl128654129348_
                               _e128659129351_
                               _hd128658129354_
                               _tl128657129356_
                               _e128662129359_
                               _hd128661129362_
                               _tl128660129364_
                               _e128665129367_
                               _hd128664129370_
                               _tl128663129372_
                               _e128668129375_
                               _hd128667129378_
                               _tl128666129380_
                               ___splice134152134153_
                               _target128669129383_
                               _tl128671129385_)
                        (letrec ((_loop128672129388_
                                  (lambda (_hd128670129391_ _args128676129393_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128670129391_))
                                        (let ((_e128673129396_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128670129391_))))
                                          (let ((_lp-tl128675129401_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128673129396_)))
                                                (_lp-hd128674129399_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128673129396_))))
                                            (let ((__tmp135009
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128674129399_
                                                           _args128676129393_))))
                                              (declare (not safe))
                                              (_loop128672129388_
                                               _lp-tl128675129401_
                                               __tmp135009))))
                                        (let ((_args128677129404_
                                               (reverse _args128676129393_)))
                                          (let ((_L129407_ _args128677129404_)
                                                (_L129408_ _hd128667129378_)
                                                (_L129409_ _hd128658129354_)
                                                (_L129410_ _hd128649129330_)
                                                (_L129411_ _hd128640129306_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129411_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129410_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129409_
                                                        _self128567_)))
                                                (___kont134150134151_
                                                 _L129407_
                                                 _L129408_
                                                 _L129409_
                                                 _L129410_
                                                 _L129411_)
                                                (___kont134162134163_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128672129388_ _target128669129383_ '())))))
                     (___match134317134318_
                      (lambda (_e128632129279_
                               _hd128631129282_
                               _tl128630129284_
                               _e128635129287_
                               _hd128634129290_
                               _tl128633129292_
                               _e128638129295_
                               _hd128637129298_
                               _tl128636129300_
                               _e128641129303_
                               _hd128640129306_
                               _tl128639129308_
                               _e128644129311_
                               _hd128643129314_
                               _tl128642129316_
                               _e128647129319_
                               _hd128646129322_
                               _tl128645129324_
                               _e128650129327_
                               _hd128649129330_
                               _tl128648129332_
                               _e128653129335_
                               _hd128652129338_
                               _tl128651129340_
                               _e128656129343_
                               _hd128655129346_
                               _tl128654129348_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _hd128655129346_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl128654129348_))
                                (let ((_e128659129351_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _tl128654129348_))))
                                  (let ((_tl128657129356_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128659129351_)))
                                        (_hd128658129354_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128659129351_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl128657129356_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128651129340_))
                                            (let ((_e128662129359_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128651129340_))))
                                              (let ((_tl128660129364_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128662129359_)))
                                                    (_hd128661129362_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128662129359_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _hd128661129362_))
                                                    (let ((_e128665129367_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd128661129362_))))
                                                      (let ((_tl128663129372_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128665129367_)))
                    (_hd128664129370_
                     (let () (declare (not safe)) (##car _e128665129367_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _hd128664129370_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _hd128664129370_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128663129372_))
                            (let ((_e128668129375_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128663129372_))))
                              (let ((_tl128666129380_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128668129375_)))
                                    (_hd128667129378_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128668129375_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl128666129380_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null? _tl128660129364_))
                                        (let ((___splice134152134153_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice
                                                  _tl128660129364_
                                                  '0))))
                                          (let ((_tl128671129385_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134152134153_
                                                    '1)))
                                                (_target128669129383_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    ___splice134152134153_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _tl128671129385_))
                                                (___match134359134360_
                                                 _e128632129279_
                                                 _hd128631129282_
                                                 _tl128630129284_
                                                 _e128635129287_
                                                 _hd128634129290_
                                                 _tl128633129292_
                                                 _e128638129295_
                                                 _hd128637129298_
                                                 _tl128636129300_
                                                 _e128641129303_
                                                 _hd128640129306_
                                                 _tl128639129308_
                                                 _e128644129311_
                                                 _hd128643129314_
                                                 _tl128642129316_
                                                 _e128647129319_
                                                 _hd128646129322_
                                                 _tl128645129324_
                                                 _e128650129327_
                                                 _hd128649129330_
                                                 _tl128648129332_
                                                 _e128653129335_
                                                 _hd128652129338_
                                                 _tl128651129340_
                                                 _e128656129343_
                                                 _hd128655129346_
                                                 _tl128654129348_
                                                 _e128659129351_
                                                 _hd128658129354_
                                                 _tl128657129356_
                                                 _e128662129359_
                                                 _hd128661129362_
                                                 _tl128660129364_
                                                 _e128665129367_
                                                 _hd128664129370_
                                                 _tl128663129372_
                                                 _e128668129375_
                                                 _hd128667129378_
                                                 _tl128666129380_
                                                 ___splice134152134153_
                                                 _target128669129383_
                                                 _tl128671129385_)
                                                (___kont134162134163_))))
                                        (___kont134162134163_))
                                    (___kont134162134163_))))
                            (___kont134162134163_))
                        (___kont134162134163_))
                    (___kont134162134163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134162134163_))))
                                            (___match134641134642_
                                             _e128632129279_
                                             _hd128631129282_
                                             _tl128630129284_
                                             _e128635129287_
                                             _hd128634129290_
                                             _tl128633129292_
                                             _e128638129295_
                                             _hd128637129298_
                                             _tl128636129300_
                                             _e128641129303_
                                             _hd128640129306_
                                             _tl128639129308_
                                             _e128644129311_
                                             _hd128643129314_
                                             _tl128642129316_
                                             _e128647129319_
                                             _hd128646129322_
                                             _tl128645129324_
                                             _e128650129327_
                                             _hd128649129330_
                                             _tl128648129332_
                                             _e128653129335_
                                             _hd128652129338_
                                             _tl128651129340_))
                                        (___match134641134642_
                                         _e128632129279_
                                         _hd128631129282_
                                         _tl128630129284_
                                         _e128635129287_
                                         _hd128634129290_
                                         _tl128633129292_
                                         _e128638129295_
                                         _hd128637129298_
                                         _tl128636129300_
                                         _e128641129303_
                                         _hd128640129306_
                                         _tl128639129308_
                                         _e128644129311_
                                         _hd128643129314_
                                         _tl128642129316_
                                         _e128647129319_
                                         _hd128646129322_
                                         _tl128645129324_
                                         _e128650129327_
                                         _hd128649129330_
                                         _tl128648129332_
                                         _e128653129335_
                                         _hd128652129338_
                                         _tl128651129340_))))
                                (___match134641134642_
                                 _e128632129279_
                                 _hd128631129282_
                                 _tl128630129284_
                                 _e128635129287_
                                 _hd128634129290_
                                 _tl128633129292_
                                 _e128638129295_
                                 _hd128637129298_
                                 _tl128636129300_
                                 _e128641129303_
                                 _hd128640129306_
                                 _tl128639129308_
                                 _e128644129311_
                                 _hd128643129314_
                                 _tl128642129316_
                                 _e128647129319_
                                 _hd128646129322_
                                 _tl128645129324_
                                 _e128650129327_
                                 _hd128649129330_
                                 _tl128648129332_
                                 _e128653129335_
                                 _hd128652129338_
                                 _tl128651129340_))
                            (___match134427134428_
                             _e128632129279_
                             _hd128631129282_
                             _tl128630129284_
                             _e128635129287_
                             _hd128634129290_
                             _tl128633129292_
                             _e128638129295_
                             _hd128637129298_
                             _tl128636129300_
                             _e128641129303_
                             _hd128640129306_
                             _tl128639129308_
                             _e128644129311_
                             _hd128643129314_
                             _tl128642129316_
                             _e128647129319_
                             _hd128646129322_
                             _tl128645129324_
                             _e128650129327_
                             _hd128649129330_
                             _tl128648129332_
                             _e128653129335_
                             _hd128652129338_
                             _tl128651129340_
                             _e128656129343_
                             _hd128655129346_
                             _tl128654129348_))))
                     (___match134249134250_
                      (lambda (_e128588129471_
                               _hd128587129474_
                               _tl128586129476_
                               _e128591129479_
                               _hd128590129482_
                               _tl128589129484_
                               _e128594129487_
                               _hd128593129490_
                               _tl128592129492_
                               _e128597129495_
                               _hd128596129498_
                               _tl128595129500_
                               _e128600129503_
                               _hd128599129506_
                               _tl128598129508_
                               _e128603129511_
                               _hd128602129514_
                               _tl128601129516_
                               _e128606129519_
                               _hd128605129522_
                               _tl128604129524_
                               _e128609129527_
                               _hd128608129530_
                               _tl128607129532_
                               _e128612129535_
                               _hd128611129538_
                               _tl128610129540_
                               _e128615129543_
                               _hd128614129546_
                               _tl128613129548_
                               ___splice134148134149_
                               _target128616129551_
                               _tl128618129553_)
                        (letrec ((_loop128619129556_
                                  (lambda (_hd128617129559_ _args128623129561_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _hd128617129559_))
                                        (let ((_e128620129564_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd128617129559_))))
                                          (let ((_lp-tl128622129569_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128620129564_)))
                                                (_lp-hd128621129567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128620129564_))))
                                            (let ((__tmp135010
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _lp-hd128621129567_
                                                           _args128623129561_))))
                                              (declare (not safe))
                                              (_loop128619129556_
                                               _lp-tl128622129569_
                                               __tmp135010))))
                                        (let ((_args128624129572_
                                               (reverse _args128623129561_)))
                                          (let ((_L129575_ _args128624129572_)
                                                (_L129576_ _hd128614129546_)
                                                (_L129577_ _hd128605129522_)
                                                (_L129578_ _hd128596129498_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _L129578_
                                                        'call-method))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _L129577_
                                                        _self128567_)))
                                                (___kont134146134147_
                                                 _L129575_
                                                 _L129576_
                                                 _L129577_
                                                 _L129578_)
                                                (___match134437134438_
                                                 _e128588129471_
                                                 _hd128587129474_
                                                 _tl128586129476_
                                                 _e128591129479_
                                                 _hd128590129482_
                                                 _tl128589129484_
                                                 _e128594129487_
                                                 _hd128593129490_
                                                 _tl128592129492_
                                                 _e128597129495_
                                                 _hd128596129498_
                                                 _tl128595129500_
                                                 _e128600129503_
                                                 _hd128599129506_
                                                 _tl128598129508_
                                                 _e128603129511_
                                                 _hd128602129514_
                                                 _tl128601129516_
                                                 _e128606129519_
                                                 _hd128605129522_
                                                 _tl128604129524_
                                                 _e128609129527_
                                                 _hd128608129530_
                                                 _tl128607129532_
                                                 _e128612129535_
                                                 _hd128611129538_
                                                 _tl128610129540_
                                                 _e128615129543_
                                                 _hd128614129546_
                                                 _tl128613129548_))))))))
                          (let ()
                            (declare (not safe))
                            (_loop128619129556_ _target128616129551_ '()))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? ___stx134144134145_))
                    (let ((_e128588129471_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e ___stx134144134145_))))
                      (let ((_tl128586129476_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128588129471_)))
                            (_hd128587129474_
                             (let ()
                               (declare (not safe))
                               (##car _e128588129471_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl128586129476_))
                            (let ((_e128591129479_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _tl128586129476_))))
                              (let ((_tl128589129484_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128591129479_)))
                                    (_hd128590129482_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128591129479_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd128590129482_))
                                    (let ((_e128594129487_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _hd128590129482_))))
                                      (let ((_tl128592129492_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e128594129487_)))
                                            (_hd128593129490_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e128594129487_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _hd128593129490_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _hd128593129490_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl128592129492_))
                                                    (let ((_e128597129495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _tl128592129492_))))
                                                      (let ((_tl128595129500_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e128597129495_)))
                    (_hd128596129498_
                     (let () (declare (not safe)) (##car _e128597129495_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl128595129500_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl128589129484_))
                        (let ((_e128600129503_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _tl128589129484_))))
                          (let ((_tl128598129508_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128600129503_)))
                                (_hd128599129506_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128600129503_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _hd128599129506_))
                                (let ((_e128603129511_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd128599129506_))))
                                  (let ((_tl128601129516_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128603129511_)))
                                        (_hd128602129514_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128603129511_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier? _hd128602129514_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _hd128602129514_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl128601129516_))
                                                (let ((_e128606129519_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _tl128601129516_))))
                                                  (let ((_tl128604129524_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e128606129519_)))
                                                        (_hd128605129522_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e128606129519_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl128604129524_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _tl128598129508_))
                                                            (let ((_e128609129527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _tl128598129508_))))
                      (let ((_tl128607129532_
                             (let ()
                               (declare (not safe))
                               (##cdr _e128609129527_)))
                            (_hd128608129530_
                             (let ()
                               (declare (not safe))
                               (##car _e128609129527_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _hd128608129530_))
                            (let ((_e128612129535_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _hd128608129530_))))
                              (let ((_tl128610129540_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e128612129535_)))
                                    (_hd128611129538_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e128612129535_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _hd128611129538_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _hd128611129538_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl128610129540_))
                                            (let ((_e128615129543_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _tl128610129540_))))
                                              (let ((_tl128613129548_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e128615129543_)))
                                                    (_hd128614129546_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e128615129543_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl128613129548_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _tl128607129532_))
                                                        (let ((___splice134148134149_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice _tl128607129532_ '0))))
                  (let ((_tl128618129553_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134148134149_ '1)))
                        (_target128616129551_
                         (let ()
                           (declare (not safe))
                           (##vector-ref ___splice134148134149_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl128618129553_))
                        (___match134249134250_
                         _e128588129471_
                         _hd128587129474_
                         _tl128586129476_
                         _e128591129479_
                         _hd128590129482_
                         _tl128589129484_
                         _e128594129487_
                         _hd128593129490_
                         _tl128592129492_
                         _e128597129495_
                         _hd128596129498_
                         _tl128595129500_
                         _e128600129503_
                         _hd128599129506_
                         _tl128598129508_
                         _e128603129511_
                         _hd128602129514_
                         _tl128601129516_
                         _e128606129519_
                         _hd128605129522_
                         _tl128604129524_
                         _e128609129527_
                         _hd128608129530_
                         _tl128607129532_
                         _e128612129535_
                         _hd128611129538_
                         _tl128610129540_
                         _e128615129543_
                         _hd128614129546_
                         _tl128613129548_
                         ___splice134148134149_
                         _target128616129551_
                         _tl128618129553_)
                        (___match134437134438_
                         _e128588129471_
                         _hd128587129474_
                         _tl128586129476_
                         _e128591129479_
                         _hd128590129482_
                         _tl128589129484_
                         _e128594129487_
                         _hd128593129490_
                         _tl128592129492_
                         _e128597129495_
                         _hd128596129498_
                         _tl128595129500_
                         _e128600129503_
                         _hd128599129506_
                         _tl128598129508_
                         _e128603129511_
                         _hd128602129514_
                         _tl128601129516_
                         _e128606129519_
                         _hd128605129522_
                         _tl128604129524_
                         _e128609129527_
                         _hd128608129530_
                         _tl128607129532_
                         _e128612129535_
                         _hd128611129538_
                         _tl128610129540_
                         _e128615129543_
                         _hd128614129546_
                         _tl128613129548_))))
                (___match134437134438_
                 _e128588129471_
                 _hd128587129474_
                 _tl128586129476_
                 _e128591129479_
                 _hd128590129482_
                 _tl128589129484_
                 _e128594129487_
                 _hd128593129490_
                 _tl128592129492_
                 _e128597129495_
                 _hd128596129498_
                 _tl128595129500_
                 _e128600129503_
                 _hd128599129506_
                 _tl128598129508_
                 _e128603129511_
                 _hd128602129514_
                 _tl128601129516_
                 _e128606129519_
                 _hd128605129522_
                 _tl128604129524_
                 _e128609129527_
                 _hd128608129530_
                 _tl128607129532_
                 _e128612129535_
                 _hd128611129538_
                 _tl128610129540_
                 _e128615129543_
                 _hd128614129546_
                 _tl128613129548_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match134641134642_
                                                     _e128588129471_
                                                     _hd128587129474_
                                                     _tl128586129476_
                                                     _e128591129479_
                                                     _hd128590129482_
                                                     _tl128589129484_
                                                     _e128594129487_
                                                     _hd128593129490_
                                                     _tl128592129492_
                                                     _e128597129495_
                                                     _hd128596129498_
                                                     _tl128595129500_
                                                     _e128600129503_
                                                     _hd128599129506_
                                                     _tl128598129508_
                                                     _e128603129511_
                                                     _hd128602129514_
                                                     _tl128601129516_
                                                     _e128606129519_
                                                     _hd128605129522_
                                                     _tl128604129524_
                                                     _e128609129527_
                                                     _hd128608129530_
                                                     _tl128607129532_))))
                                            (___match134641134642_
                                             _e128588129471_
                                             _hd128587129474_
                                             _tl128586129476_
                                             _e128591129479_
                                             _hd128590129482_
                                             _tl128589129484_
                                             _e128594129487_
                                             _hd128593129490_
                                             _tl128592129492_
                                             _e128597129495_
                                             _hd128596129498_
                                             _tl128595129500_
                                             _e128600129503_
                                             _hd128599129506_
                                             _tl128598129508_
                                             _e128603129511_
                                             _hd128602129514_
                                             _tl128601129516_
                                             _e128606129519_
                                             _hd128605129522_
                                             _tl128604129524_
                                             _e128609129527_
                                             _hd128608129530_
                                             _tl128607129532_))
                                        (___match134317134318_
                                         _e128588129471_
                                         _hd128587129474_
                                         _tl128586129476_
                                         _e128591129479_
                                         _hd128590129482_
                                         _tl128589129484_
                                         _e128594129487_
                                         _hd128593129490_
                                         _tl128592129492_
                                         _e128597129495_
                                         _hd128596129498_
                                         _tl128595129500_
                                         _e128600129503_
                                         _hd128599129506_
                                         _tl128598129508_
                                         _e128603129511_
                                         _hd128602129514_
                                         _tl128601129516_
                                         _e128606129519_
                                         _hd128605129522_
                                         _tl128604129524_
                                         _e128609129527_
                                         _hd128608129530_
                                         _tl128607129532_
                                         _e128612129535_
                                         _hd128611129538_
                                         _tl128610129540_))
                                    (___match134641134642_
                                     _e128588129471_
                                     _hd128587129474_
                                     _tl128586129476_
                                     _e128591129479_
                                     _hd128590129482_
                                     _tl128589129484_
                                     _e128594129487_
                                     _hd128593129490_
                                     _tl128592129492_
                                     _e128597129495_
                                     _hd128596129498_
                                     _tl128595129500_
                                     _e128600129503_
                                     _hd128599129506_
                                     _tl128598129508_
                                     _e128603129511_
                                     _hd128602129514_
                                     _tl128601129516_
                                     _e128606129519_
                                     _hd128605129522_
                                     _tl128604129524_
                                     _e128609129527_
                                     _hd128608129530_
                                     _tl128607129532_))))
                            (___match134641134642_
                             _e128588129471_
                             _hd128587129474_
                             _tl128586129476_
                             _e128591129479_
                             _hd128590129482_
                             _tl128589129484_
                             _e128594129487_
                             _hd128593129490_
                             _tl128592129492_
                             _e128597129495_
                             _hd128596129498_
                             _tl128595129500_
                             _e128600129503_
                             _hd128599129506_
                             _tl128598129508_
                             _e128603129511_
                             _hd128602129514_
                             _tl128601129516_
                             _e128606129519_
                             _hd128605129522_
                             _tl128604129524_
                             _e128609129527_
                             _hd128608129530_
                             _tl128607129532_))))
                    (___match134579134580_
                     _e128588129471_
                     _hd128587129474_
                     _tl128586129476_
                     _e128591129479_
                     _hd128590129482_
                     _tl128589129484_
                     _e128594129487_
                     _hd128593129490_
                     _tl128592129492_
                     _e128597129495_
                     _hd128596129498_
                     _tl128595129500_
                     _e128600129503_
                     _hd128599129506_
                     _tl128598129508_
                     _e128603129511_
                     _hd128602129514_
                     _tl128601129516_
                     _e128606129519_
                     _hd128605129522_
                     _tl128604129524_))
                (___kont134162134163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134162134163_))
                                            (___kont134162134163_))
                                        (___kont134162134163_))))
                                (___kont134162134163_))))
                        (___kont134162134163_))
                    (___kont134162134163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134162134163_))
                                                (___kont134162134163_))
                                            (___kont134162134163_))))
                                    (___kont134162134163_))))
                            (___kont134162134163_))))
                    (___kont134162134163_))))))))))

(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1709994213)
  (begin
    (define current-module-library-path (make-parameter '#f))
    (define current-module-registry (make-parameter '#f))
    (define __reload-module (make-parameter '#f))
    (define load-module__%
      (lambda (_modpath78714_ _reload?78715_)
        (let ((_$e78717_
               (if (let () (declare (not safe)) (not _reload?78715_))
                   (let ((__tmp78736 (current-module-registry)))
                     (declare (not safe))
                     (hash-get __tmp78736 _modpath78714_))
                   '#f)))
          (if _$e78717_
              _$e78717_
              (let ((_$e78720_
                     (let ()
                       (declare (not safe))
                       (find-library-module _modpath78714_))))
                (if _$e78720_
                    ((lambda (_path78723_)
                       (let ((_lpath78725_ (load _path78723_)))
                         (let ((__tmp78737 (current-module-registry)))
                           (declare (not safe))
                           (hash-put! __tmp78737 _modpath78714_ _lpath78725_))
                         _lpath78725_))
                     _$e78720_)
                    (let ()
                      (declare (not safe))
                      (error '"module not found" _modpath78714_))))))))
    (define load-module__0
      (lambda (_modpath78730_)
        (let ((_reload?78732_ (__reload-module)))
          (declare (not safe))
          (load-module__% _modpath78730_ _reload?78732_))))
    (define load-module
      (lambda _g78739_
        (let ((_g78738_ (let () (declare (not safe)) (##length _g78739_))))
          (cond ((let () (declare (not safe)) (##fx= _g78738_ 1))
                 (apply (lambda (_modpath78730_)
                          (let ()
                            (declare (not safe))
                            (load-module__0 _modpath78730_)))
                        _g78739_))
                ((let () (declare (not safe)) (##fx= _g78738_ 2))
                 (apply (lambda (_modpath78734_ _reload?78735_)
                          (let ()
                            (declare (not safe))
                            (load-module__% _modpath78734_ _reload?78735_)))
                        _g78739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  load-module
                  _g78739_))))))
    (define find-library-module
      (lambda (_modpath78648_)
        (letrec ((_find-compiled-file78650_
                  (lambda (_npath78702_)
                    (let ((_basepath78704_
                           (let ()
                             (declare (not safe))
                             (##string-append _npath78702_ '".o"))))
                      (let _lp78706_ ((_current78708_ '#f) (_n78709_ '1))
                        (let ((_next78711_
                               (let ((__tmp78740 (number->string _n78709_)))
                                 (declare (not safe))
                                 (##string-append
                                  _basepath78704_
                                  __tmp78740))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _next78711_))
                              (let ((__tmp78741
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _n78709_ '1))))
                                (declare (not safe))
                                (_lp78706_ _next78711_ __tmp78741))
                              _current78708_))))))
                 (_find-source-file78651_
                  (lambda (_npath78698_)
                    (let ((_spath78700_ (string-append _npath78698_ '".scm")))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _spath78700_))
                          _spath78700_
                          '#f)))))
          (let _lp78653_ ((_rest78655_ (current-module-library-path)))
            (let* ((_rest7865678664_ _rest78655_)
                   (_else7865878672_ (lambda () '#f))
                   (_K7866078686_
                    (lambda (_rest78675_ _dir78676_)
                      (let* ((_npath78678_
                              (path-expand
                               _modpath78648_
                               (path-expand _dir78676_)))
                             (_$e78680_
                              (let ()
                                (declare (not safe))
                                (_find-compiled-file78650_ _npath78678_))))
                        (if _$e78680_
                            (path-normalize _$e78680_)
                            (let ((_$e78683_
                                   (let ()
                                     (declare (not safe))
                                     (_find-source-file78651_ _npath78678_))))
                              (if _$e78683_
                                  (path-normalize _$e78683_)
                                  (let ()
                                    (declare (not safe))
                                    (_lp78653_ _rest78675_)))))))))
              (if (let () (declare (not safe)) (##pair? _rest7865678664_))
                  (let ((_hd7866178689_
                         (let ()
                           (declare (not safe))
                           (##car _rest7865678664_)))
                        (_tl7866278691_
                         (let ()
                           (declare (not safe))
                           (##cdr _rest7865678664_))))
                    (let* ((_dir78694_ _hd7866178689_)
                           (_rest78696_ _tl7866278691_))
                      (declare (not safe))
                      (_K7866078686_ _rest78696_ _dir78694_)))
                  (let () (declare (not safe)) (_else7865878672_))))))))))

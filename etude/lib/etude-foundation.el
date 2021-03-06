(defun foundation/cider-eval (code)
  (interactive)
  (message code)
  (cider-interactive-eval
   code
   nil
   nil
   nil))

(defun foundation/cider-eval-at-point (code)
  (interactive)
  (message code)
  (cider-interactive-eval
   code
   (cider-interactive-eval-handler nil (point))
   nil
   nil))

(defun foundation/rt-setup ()
  (interactive)
  (foundation/cider-eval "(std.lang/rt:setup)"))

(defun foundation/rt-teardown ()
  (interactive)
  (foundation/cider-eval "(std.lang/rt:teardown)"))

(defun foundation/rt-resetup ()
  (interactive)
  (foundation/cider-eval "(do (std.lang/rt:teardown) (std.lang/rt:setup))"))

(defun foundation/rt-reprep ()
  (interactive)
  (foundation/cider-eval "(do (std.lang/rt:teardown) (std.lang/rt:module-prep))"))

(defun foundation/rt-load ()
  (interactive)
  (foundation/cider-eval "(std.lang/rt:load)"))

(defun foundation/rt-unload ()
  (interactive)
  (foundation/cider-eval "(std.lang/rt:unload)"))

(defun foundation/rt-refresh ()
  (interactive)
  (foundation/cider-eval "(std.lang/rt:refresh)"))

;;
;;
;;
(defun foundation/create-tests ()
  (interactive)
  (foundation/cider-eval
   "(code.manage/create-tests)"))

(defun foundation/import-tests ()
  (interactive)
  (foundation/cider-eval
   "(code.manage/import)"))

(defun foundation/incomplete-tests ()
  (interactive)
  (foundation/cider-eval
   "(code.manage/incomplete)"))

(defun foundation/ns-reeval ()
  (interactive)
  (foundation/cider-eval
   "(do (std.lang/ns:reset) nil)")
  (cider-eval-buffer))
  
(defun foundation/ptr-teardown ()
  (interactive)
  (foundation/cider-eval-at-point
   (concat "(std.lang/ptr:teardown " (cider-last-sexp)
           ")")))

(defun foundation/ptr-setup ()
  (interactive)
  (foundation/cider-eval-at-point
   (concat "(std.lang/ptr:setup " (cider-last-sexp)
           ")")))

(defun foundation/ptr-emit ()
  (interactive)
  (foundation/cider-eval-at-point
   (concat "(std.lang/ptr-emit " (cider-last-sexp)
           ")")))

(defun foundation/ptr-print ()
  (interactive)
  (foundation/cider-eval-at-point
   (concat "(std.lang/ptr-print " (cider-last-sexp)
           ")")))

(defun foundation/ptr-clip ()
  (interactive)
  (foundation/cider-eval-at-point
   (concat "(std.lang/ptr-clip " (cider-last-sexp)
           ")")))

(provide 'etude-foundation)

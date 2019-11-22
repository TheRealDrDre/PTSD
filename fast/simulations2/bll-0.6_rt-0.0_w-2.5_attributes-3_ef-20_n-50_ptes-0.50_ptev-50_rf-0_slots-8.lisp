(ql:quickload "split-sequence")
(push :actr-fast *features*)
(load "/projects/actr/actr7.x/load-act-r.lisp")
(load "/home/stocco/Desktop/PTSD/fast/ptsd.lisp")
(let ((sim (make-instance 'simulation)))
  (setf (num-slots sim) 8)
  (setf (ptev sim) '(50))
  (setf (rumination-frequency sim) 0)
  (setf (n sim) 50)
  (setf (event-frequency sim) 20)
  (setf (num-attributes sim) 3)
  (setf (ptes sim) '(0.50))
  (setf (gethash :imaginal-activation (model-params sim)) 2.5)
  (setf (gethash :rt (model-params sim)) 0.0)
  (setf (gethash :bll (model-params sim)) 0.6)
  (setf (logfile sim) "bll-0.6_rt-0.0_w-2.5_attributes-3_ef-20_n-50_ptes-0.50_ptev-50_rf-0_slots-8.csv")
  (run-simulations sim))
(quit)

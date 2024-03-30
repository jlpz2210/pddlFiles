; -----------------------------------------------------
;
; Archivo Problem Christopher Porras Solano
; Actividad Grupal # 3
;
; Objetivo del programa:
; Solicitar al nuestro robot "rover" que busque una ruta que le permita
; tomar los minerales y llevarlos al laboratorio.
;
; -----------------------------------------------------

(define (problem AcarreoDeMinerales)
	(:domain rover)
	(:objects 
	mineral1 mineral2 diamante - mineral 
	L1 L2 L3 L4 L5 L6 L7 - localizacion 
	r - rover )

; Un laboratorio, tres minerales, seis ubicaciones con 10 posibles caminos
	(:init 
	(laboratorio-en L5) 
	(mineral-en-l L1 mineral1) 
	(mineral-en-l L2 mineral2)
	(mineral-en-l L6 diamante)
	(rover-en-l A L3) 
	(rover-vacio)

; Rutas disponibles para el rover en el ejercicio 10 caminos
	(ir L1 L3)
	(ir L3 L1)
	(ir L6 L1)
	(ir L2 L4)
	(ir L3 L2)
	(ir L6 L2)
	(ir L3 L4)
	(ir L4 L3)
	(ir L4 L5)
	(ir L5 L4)
		   
; Objetivo
	
	)
	(:goal (and 
	(mineral-en-l L5 mineral1)
	(mineral-en-l L5 mineral2) 
	(mineral-en-l L5 diamante))
	)
)
; -----------------------------------------------------
;
; Archivo Problem Claudia González
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
	amarillo verde carbon oro - mineral 
	L1 L2 L3 L4 L5 L6 L7 L8 - localizacion 
	r - rover )

; Dos laboratorios, cuatro minerales, siete ubicaciones con 14 posibles caminos
	(:init 
	(laboratorio-en L5)
	(laboratorio-en L7)	
	(mineral-en-l L1 amarillo) 
	(mineral-en-l L2 oro)
	(mineral-en-l L3 carbon)
	(mineral-en-l L8 verde)
	(rover-en-l L6 r) 
	(rover-vacio)

; Rutas disponibles para el rover en el ejercicio 14 caminos
	(ir L1 L3)
	(ir L1 L8)
	(ir L3 L1)
	(ir L6 L1)
	(ir L8 L1)
	(ir L2 L4)
	(ir L7 L2)
	(ir L3 L4)
	(ir L3 L6)
	(ir L4 L3)
	(ir L8 L4)
	(ir L4 L5)
	(ir L5 L4)
	(ir L6 L7)

; Objetivo
	
	)
	(:goal (and 
	(mineral-en-l L7 amarillo)
	(mineral-en-l L7 oro)
	(mineral-en-l L5 verde)
	(mineral-en-l L5 carbon))
	)
)

<
xPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙á
D

y_action_1Placeholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
D

y_action_2Placeholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
D

y_locationPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
A
y_phonePlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
H
random_normal/shapeConst*
valueB"á   Í   *
dtype0
?
random_normal/meanConst*
valueB
 *    *
dtype0
A
random_normal/stddevConst*
valueB
 *  ?*
dtype0
~
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*
dtype0*
seed2 *

seed *
T0
[
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0
D
random_normalAddrandom_normal/mulrandom_normal/mean*
T0
^
weight_1
VariableV2*
shape:
áÍ*
shared_name *
dtype0*
	container 

weight_1/AssignAssignweight_1random_normal*
T0*
_class
loc:@weight_1*
validate_shape(*
use_locking(
I
weight_1/readIdentityweight_1*
T0*
_class
loc:@weight_1
D
random_normal_1/shapeConst*
dtype0*
valueB:Í
A
random_normal_1/meanConst*
valueB
 *    *
dtype0
C
random_normal_1/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_1/RandomStandardNormalRandomStandardNormalrandom_normal_1/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_1/mulMul$random_normal_1/RandomStandardNormalrandom_normal_1/stddev*
T0
J
random_normal_1Addrandom_normal_1/mulrandom_normal_1/mean*
T0
^
weight_1_bias
VariableV2*
dtype0*
	container *
shape:Í*
shared_name 

weight_1_bias/AssignAssignweight_1_biasrandom_normal_1*
validate_shape(*
use_locking(*
T0* 
_class
loc:@weight_1_bias
X
weight_1_bias/readIdentityweight_1_bias*
T0* 
_class
loc:@weight_1_bias
J
random_normal_2/shapeConst*
dtype0*
valueB"Í   ž   
A
random_normal_2/meanConst*
valueB
 *    *
dtype0
C
random_normal_2/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_2/RandomStandardNormalRandomStandardNormalrandom_normal_2/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_2/mulMul$random_normal_2/RandomStandardNormalrandom_normal_2/stddev*
T0
J
random_normal_2Addrandom_normal_2/mulrandom_normal_2/mean*
T0
^
weight_2
VariableV2*
	container *
shape:
Íž*
shared_name *
dtype0

weight_2/AssignAssignweight_2random_normal_2*
validate_shape(*
use_locking(*
T0*
_class
loc:@weight_2
I
weight_2/readIdentityweight_2*
T0*
_class
loc:@weight_2
D
random_normal_3/shapeConst*
valueB:ž*
dtype0
A
random_normal_3/meanConst*
valueB
 *    *
dtype0
C
random_normal_3/stddevConst*
dtype0*
valueB
 *  ?

$random_normal_3/RandomStandardNormalRandomStandardNormalrandom_normal_3/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_3/mulMul$random_normal_3/RandomStandardNormalrandom_normal_3/stddev*
T0
J
random_normal_3Addrandom_normal_3/mulrandom_normal_3/mean*
T0
^
weight_2_bias
VariableV2*
dtype0*
	container *
shape:ž*
shared_name 

weight_2_bias/AssignAssignweight_2_biasrandom_normal_3*
use_locking(*
T0* 
_class
loc:@weight_2_bias*
validate_shape(
X
weight_2_bias/readIdentityweight_2_bias* 
_class
loc:@weight_2_bias*
T0
J
random_normal_4/shapeConst*
valueB"ž      *
dtype0
A
random_normal_4/meanConst*
valueB
 *    *
dtype0
C
random_normal_4/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_4/RandomStandardNormalRandomStandardNormalrandom_normal_4/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_4/mulMul$random_normal_4/RandomStandardNormalrandom_normal_4/stddev*
T0
J
random_normal_4Addrandom_normal_4/mulrandom_normal_4/mean*
T0
^
weight_3
VariableV2*
dtype0*
	container *
shape:
ž*
shared_name 

weight_3/AssignAssignweight_3random_normal_4*
use_locking(*
T0*
_class
loc:@weight_3*
validate_shape(
I
weight_3/readIdentityweight_3*
T0*
_class
loc:@weight_3
D
random_normal_5/shapeConst*
valueB:*
dtype0
A
random_normal_5/meanConst*
valueB
 *    *
dtype0
C
random_normal_5/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_5/RandomStandardNormalRandomStandardNormalrandom_normal_5/shape*
dtype0*
seed2 *

seed *
T0
a
random_normal_5/mulMul$random_normal_5/RandomStandardNormalrandom_normal_5/stddev*
T0
J
random_normal_5Addrandom_normal_5/mulrandom_normal_5/mean*
T0
^
weight_3_bias
VariableV2*
shape:*
shared_name *
dtype0*
	container 

weight_3_bias/AssignAssignweight_3_biasrandom_normal_5*
validate_shape(*
use_locking(*
T0* 
_class
loc:@weight_3_bias
X
weight_3_bias/readIdentityweight_3_bias*
T0* 
_class
loc:@weight_3_bias
J
random_normal_6/shapeConst*
valueB"   x   *
dtype0
A
random_normal_6/meanConst*
valueB
 *    *
dtype0
C
random_normal_6/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_6/RandomStandardNormalRandomStandardNormalrandom_normal_6/shape*
dtype0*
seed2 *

seed *
T0
a
random_normal_6/mulMul$random_normal_6/RandomStandardNormalrandom_normal_6/stddev*
T0
J
random_normal_6Addrandom_normal_6/mulrandom_normal_6/mean*
T0
]
weight_4
VariableV2*
shape:	x*
shared_name *
dtype0*
	container 

weight_4/AssignAssignweight_4random_normal_6*
validate_shape(*
use_locking(*
T0*
_class
loc:@weight_4
I
weight_4/readIdentityweight_4*
T0*
_class
loc:@weight_4
C
random_normal_7/shapeConst*
valueB:x*
dtype0
A
random_normal_7/meanConst*
valueB
 *    *
dtype0
C
random_normal_7/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_7/RandomStandardNormalRandomStandardNormalrandom_normal_7/shape*

seed *
T0*
dtype0*
seed2 
a
random_normal_7/mulMul$random_normal_7/RandomStandardNormalrandom_normal_7/stddev*
T0
J
random_normal_7Addrandom_normal_7/mulrandom_normal_7/mean*
T0
]
weight_4_bias
VariableV2*
shape:x*
shared_name *
dtype0*
	container 

weight_4_bias/AssignAssignweight_4_biasrandom_normal_7*
validate_shape(*
use_locking(*
T0* 
_class
loc:@weight_4_bias
X
weight_4_bias/readIdentityweight_4_bias*
T0* 
_class
loc:@weight_4_bias
J
random_normal_8/shapeConst*
valueB"x   d   *
dtype0
A
random_normal_8/meanConst*
valueB
 *    *
dtype0
C
random_normal_8/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_8/RandomStandardNormalRandomStandardNormalrandom_normal_8/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_8/mulMul$random_normal_8/RandomStandardNormalrandom_normal_8/stddev*
T0
J
random_normal_8Addrandom_normal_8/mulrandom_normal_8/mean*
T0
\
weight_5
VariableV2*
dtype0*
	container *
shape
:xd*
shared_name 

weight_5/AssignAssignweight_5random_normal_8*
use_locking(*
T0*
_class
loc:@weight_5*
validate_shape(
I
weight_5/readIdentityweight_5*
T0*
_class
loc:@weight_5
C
random_normal_9/shapeConst*
valueB:d*
dtype0
A
random_normal_9/meanConst*
valueB
 *    *
dtype0
C
random_normal_9/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_9/RandomStandardNormalRandomStandardNormalrandom_normal_9/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_9/mulMul$random_normal_9/RandomStandardNormalrandom_normal_9/stddev*
T0
J
random_normal_9Addrandom_normal_9/mulrandom_normal_9/mean*
T0
]
weight_5_bias
VariableV2*
	container *
shape:d*
shared_name *
dtype0

weight_5_bias/AssignAssignweight_5_biasrandom_normal_9*
use_locking(*
T0* 
_class
loc:@weight_5_bias*
validate_shape(
X
weight_5_bias/readIdentityweight_5_bias*
T0* 
_class
loc:@weight_5_bias
K
random_normal_10/shapeConst*
valueB"d   Z   *
dtype0
B
random_normal_10/meanConst*
dtype0*
valueB
 *    
D
random_normal_10/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_10/RandomStandardNormalRandomStandardNormalrandom_normal_10/shape*
dtype0*
seed2 *

seed *
T0
d
random_normal_10/mulMul%random_normal_10/RandomStandardNormalrandom_normal_10/stddev*
T0
M
random_normal_10Addrandom_normal_10/mulrandom_normal_10/mean*
T0
\
weight_6
VariableV2*
dtype0*
	container *
shape
:dZ*
shared_name 

weight_6/AssignAssignweight_6random_normal_10*
use_locking(*
T0*
_class
loc:@weight_6*
validate_shape(
I
weight_6/readIdentityweight_6*
T0*
_class
loc:@weight_6
D
random_normal_11/shapeConst*
valueB:Z*
dtype0
B
random_normal_11/meanConst*
valueB
 *    *
dtype0
D
random_normal_11/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_11/RandomStandardNormalRandomStandardNormalrandom_normal_11/shape*

seed *
T0*
dtype0*
seed2 
d
random_normal_11/mulMul%random_normal_11/RandomStandardNormalrandom_normal_11/stddev*
T0
M
random_normal_11Addrandom_normal_11/mulrandom_normal_11/mean*
T0
]
weight_6_bias
VariableV2*
	container *
shape:Z*
shared_name *
dtype0

weight_6_bias/AssignAssignweight_6_biasrandom_normal_11*
use_locking(*
T0* 
_class
loc:@weight_6_bias*
validate_shape(
X
weight_6_bias/readIdentityweight_6_bias* 
_class
loc:@weight_6_bias*
T0
K
random_normal_12/shapeConst*
valueB"Z   F   *
dtype0
B
random_normal_12/meanConst*
valueB
 *    *
dtype0
D
random_normal_12/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_12/RandomStandardNormalRandomStandardNormalrandom_normal_12/shape*
seed2 *

seed *
T0*
dtype0
d
random_normal_12/mulMul%random_normal_12/RandomStandardNormalrandom_normal_12/stddev*
T0
M
random_normal_12Addrandom_normal_12/mulrandom_normal_12/mean*
T0
\
weight_7
VariableV2*
shared_name *
dtype0*
	container *
shape
:ZF

weight_7/AssignAssignweight_7random_normal_12*
validate_shape(*
use_locking(*
T0*
_class
loc:@weight_7
I
weight_7/readIdentityweight_7*
T0*
_class
loc:@weight_7
D
random_normal_13/shapeConst*
valueB:F*
dtype0
B
random_normal_13/meanConst*
valueB
 *    *
dtype0
D
random_normal_13/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_13/RandomStandardNormalRandomStandardNormalrandom_normal_13/shape*
dtype0*
seed2 *

seed *
T0
d
random_normal_13/mulMul%random_normal_13/RandomStandardNormalrandom_normal_13/stddev*
T0
M
random_normal_13Addrandom_normal_13/mulrandom_normal_13/mean*
T0
]
weight_7_bias
VariableV2*
dtype0*
	container *
shape:F*
shared_name 

weight_7_bias/AssignAssignweight_7_biasrandom_normal_13*
use_locking(*
T0* 
_class
loc:@weight_7_bias*
validate_shape(
X
weight_7_bias/readIdentityweight_7_bias*
T0* 
_class
loc:@weight_7_bias
K
random_normal_14/shapeConst*
valueB"F   <   *
dtype0
B
random_normal_14/meanConst*
valueB
 *    *
dtype0
D
random_normal_14/stddevConst*
dtype0*
valueB
 *  ?

%random_normal_14/RandomStandardNormalRandomStandardNormalrandom_normal_14/shape*
T0*
dtype0*
seed2 *

seed 
d
random_normal_14/mulMul%random_normal_14/RandomStandardNormalrandom_normal_14/stddev*
T0
M
random_normal_14Addrandom_normal_14/mulrandom_normal_14/mean*
T0
k
weight_action_1_layer_1
VariableV2*
	container *
shape
:F<*
shared_name *
dtype0
ą
weight_action_1_layer_1/AssignAssignweight_action_1_layer_1random_normal_14*
use_locking(*
T0**
_class 
loc:@weight_action_1_layer_1*
validate_shape(
v
weight_action_1_layer_1/readIdentityweight_action_1_layer_1*
T0**
_class 
loc:@weight_action_1_layer_1
D
random_normal_15/shapeConst*
valueB:<*
dtype0
B
random_normal_15/meanConst*
valueB
 *    *
dtype0
D
random_normal_15/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_15/RandomStandardNormalRandomStandardNormalrandom_normal_15/shape*
seed2 *

seed *
T0*
dtype0
d
random_normal_15/mulMul%random_normal_15/RandomStandardNormalrandom_normal_15/stddev*
T0
M
random_normal_15Addrandom_normal_15/mulrandom_normal_15/mean*
T0
l
weight_action_1_layer_1_bias
VariableV2*
shared_name *
dtype0*
	container *
shape:<
Ŕ
#weight_action_1_layer_1_bias/AssignAssignweight_action_1_layer_1_biasrandom_normal_15*
use_locking(*
T0*/
_class%
#!loc:@weight_action_1_layer_1_bias*
validate_shape(

!weight_action_1_layer_1_bias/readIdentityweight_action_1_layer_1_bias*/
_class%
#!loc:@weight_action_1_layer_1_bias*
T0
K
random_normal_16/shapeConst*
valueB"F   <   *
dtype0
B
random_normal_16/meanConst*
valueB
 *    *
dtype0
D
random_normal_16/stddevConst*
dtype0*
valueB
 *  ?

%random_normal_16/RandomStandardNormalRandomStandardNormalrandom_normal_16/shape*
dtype0*
seed2 *

seed *
T0
d
random_normal_16/mulMul%random_normal_16/RandomStandardNormalrandom_normal_16/stddev*
T0
M
random_normal_16Addrandom_normal_16/mulrandom_normal_16/mean*
T0
k
weight_action_2_layer_1
VariableV2*
shared_name *
dtype0*
	container *
shape
:F<
ą
weight_action_2_layer_1/AssignAssignweight_action_2_layer_1random_normal_16*
validate_shape(*
use_locking(*
T0**
_class 
loc:@weight_action_2_layer_1
v
weight_action_2_layer_1/readIdentityweight_action_2_layer_1*
T0**
_class 
loc:@weight_action_2_layer_1
D
random_normal_17/shapeConst*
valueB:<*
dtype0
B
random_normal_17/meanConst*
valueB
 *    *
dtype0
D
random_normal_17/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_17/RandomStandardNormalRandomStandardNormalrandom_normal_17/shape*
seed2 *

seed *
T0*
dtype0
d
random_normal_17/mulMul%random_normal_17/RandomStandardNormalrandom_normal_17/stddev*
T0
M
random_normal_17Addrandom_normal_17/mulrandom_normal_17/mean*
T0
l
weight_action_2_layer_1_bias
VariableV2*
shared_name *
dtype0*
	container *
shape:<
Ŕ
#weight_action_2_layer_1_bias/AssignAssignweight_action_2_layer_1_biasrandom_normal_17*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_1_bias*
validate_shape(

!weight_action_2_layer_1_bias/readIdentityweight_action_2_layer_1_bias*/
_class%
#!loc:@weight_action_2_layer_1_bias*
T0
K
random_normal_18/shapeConst*
valueB"<      *
dtype0
B
random_normal_18/meanConst*
valueB
 *    *
dtype0
D
random_normal_18/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_18/RandomStandardNormalRandomStandardNormalrandom_normal_18/shape*

seed *
T0*
dtype0*
seed2 
d
random_normal_18/mulMul%random_normal_18/RandomStandardNormalrandom_normal_18/stddev*
T0
M
random_normal_18Addrandom_normal_18/mulrandom_normal_18/mean*
T0
k
weight_action_2_layer_2
VariableV2*
dtype0*
	container *
shape
:<*
shared_name 
ą
weight_action_2_layer_2/AssignAssignweight_action_2_layer_2random_normal_18**
_class 
loc:@weight_action_2_layer_2*
validate_shape(*
use_locking(*
T0
v
weight_action_2_layer_2/readIdentityweight_action_2_layer_2*
T0**
_class 
loc:@weight_action_2_layer_2
D
random_normal_19/shapeConst*
valueB:*
dtype0
B
random_normal_19/meanConst*
valueB
 *    *
dtype0
D
random_normal_19/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_19/RandomStandardNormalRandomStandardNormalrandom_normal_19/shape*

seed *
T0*
dtype0*
seed2 
d
random_normal_19/mulMul%random_normal_19/RandomStandardNormalrandom_normal_19/stddev*
T0
M
random_normal_19Addrandom_normal_19/mulrandom_normal_19/mean*
T0
l
weight_action_2_layer_2_bias
VariableV2*
shared_name *
dtype0*
	container *
shape:
Ŕ
#weight_action_2_layer_2_bias/AssignAssignweight_action_2_layer_2_biasrandom_normal_19*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_2_bias*
validate_shape(

!weight_action_2_layer_2_bias/readIdentityweight_action_2_layer_2_bias*
T0*/
_class%
#!loc:@weight_action_2_layer_2_bias
K
random_normal_20/shapeConst*
valueB"<      *
dtype0
B
random_normal_20/meanConst*
valueB
 *    *
dtype0
D
random_normal_20/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_20/RandomStandardNormalRandomStandardNormalrandom_normal_20/shape*

seed *
T0*
dtype0*
seed2 
d
random_normal_20/mulMul%random_normal_20/RandomStandardNormalrandom_normal_20/stddev*
T0
M
random_normal_20Addrandom_normal_20/mulrandom_normal_20/mean*
T0
g
weight_out_action_1
VariableV2*
dtype0*
	container *
shape
:<*
shared_name 
Ľ
weight_out_action_1/AssignAssignweight_out_action_1random_normal_20*
use_locking(*
T0*&
_class
loc:@weight_out_action_1*
validate_shape(
j
weight_out_action_1/readIdentityweight_out_action_1*
T0*&
_class
loc:@weight_out_action_1
D
random_normal_21/shapeConst*
valueB:*
dtype0
B
random_normal_21/meanConst*
valueB
 *    *
dtype0
D
random_normal_21/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_21/RandomStandardNormalRandomStandardNormalrandom_normal_21/shape*
dtype0*
seed2 *

seed *
T0
d
random_normal_21/mulMul%random_normal_21/RandomStandardNormalrandom_normal_21/stddev*
T0
M
random_normal_21Addrandom_normal_21/mulrandom_normal_21/mean*
T0
h
weight_out_action_1_bias
VariableV2*
shape:*
shared_name *
dtype0*
	container 
´
weight_out_action_1_bias/AssignAssignweight_out_action_1_biasrandom_normal_21*
validate_shape(*
use_locking(*
T0*+
_class!
loc:@weight_out_action_1_bias
y
weight_out_action_1_bias/readIdentityweight_out_action_1_bias*
T0*+
_class!
loc:@weight_out_action_1_bias
K
random_normal_22/shapeConst*
valueB"      *
dtype0
B
random_normal_22/meanConst*
valueB
 *    *
dtype0
D
random_normal_22/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_22/RandomStandardNormalRandomStandardNormalrandom_normal_22/shape*

seed *
T0*
dtype0*
seed2 
d
random_normal_22/mulMul%random_normal_22/RandomStandardNormalrandom_normal_22/stddev*
T0
M
random_normal_22Addrandom_normal_22/mulrandom_normal_22/mean*
T0
g
weight_out_action_2
VariableV2*
	container *
shape
:*
shared_name *
dtype0
Ľ
weight_out_action_2/AssignAssignweight_out_action_2random_normal_22*
validate_shape(*
use_locking(*
T0*&
_class
loc:@weight_out_action_2
j
weight_out_action_2/readIdentityweight_out_action_2*
T0*&
_class
loc:@weight_out_action_2
D
random_normal_23/shapeConst*
valueB:*
dtype0
B
random_normal_23/meanConst*
valueB
 *    *
dtype0
D
random_normal_23/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_23/RandomStandardNormalRandomStandardNormalrandom_normal_23/shape*

seed *
T0*
dtype0*
seed2 
d
random_normal_23/mulMul%random_normal_23/RandomStandardNormalrandom_normal_23/stddev*
T0
M
random_normal_23Addrandom_normal_23/mulrandom_normal_23/mean*
T0
h
weight_out_action_2_bias
VariableV2*
shape:*
shared_name *
dtype0*
	container 
´
weight_out_action_2_bias/AssignAssignweight_out_action_2_biasrandom_normal_23*
use_locking(*
T0*+
_class!
loc:@weight_out_action_2_bias*
validate_shape(
y
weight_out_action_2_bias/readIdentityweight_out_action_2_bias*
T0*+
_class!
loc:@weight_out_action_2_bias
K
random_normal_24/shapeConst*
valueB"F      *
dtype0
B
random_normal_24/meanConst*
dtype0*
valueB
 *    
D
random_normal_24/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_24/RandomStandardNormalRandomStandardNormalrandom_normal_24/shape*
T0*
dtype0*
seed2 *

seed 
d
random_normal_24/mulMul%random_normal_24/RandomStandardNormalrandom_normal_24/stddev*
T0
M
random_normal_24Addrandom_normal_24/mulrandom_normal_24/mean*
T0
b
weight_out_loc
VariableV2*
dtype0*
	container *
shape
:F*
shared_name 

weight_out_loc/AssignAssignweight_out_locrandom_normal_24*
use_locking(*
T0*!
_class
loc:@weight_out_loc*
validate_shape(
[
weight_out_loc/readIdentityweight_out_loc*
T0*!
_class
loc:@weight_out_loc
D
random_normal_25/shapeConst*
valueB:*
dtype0
B
random_normal_25/meanConst*
valueB
 *    *
dtype0
D
random_normal_25/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_25/RandomStandardNormalRandomStandardNormalrandom_normal_25/shape*
T0*
dtype0*
seed2 *

seed 
d
random_normal_25/mulMul%random_normal_25/RandomStandardNormalrandom_normal_25/stddev*
T0
M
random_normal_25Addrandom_normal_25/mulrandom_normal_25/mean*
T0
c
weight_out_loc_bias
VariableV2*
	container *
shape:*
shared_name *
dtype0
Ľ
weight_out_loc_bias/AssignAssignweight_out_loc_biasrandom_normal_25*
use_locking(*
T0*&
_class
loc:@weight_out_loc_bias*
validate_shape(
j
weight_out_loc_bias/readIdentityweight_out_loc_bias*
T0*&
_class
loc:@weight_out_loc_bias
K
random_normal_26/shapeConst*
valueB"F      *
dtype0
B
random_normal_26/meanConst*
valueB
 *    *
dtype0
D
random_normal_26/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_26/RandomStandardNormalRandomStandardNormalrandom_normal_26/shape*
T0*
dtype0*
seed2 *

seed 
d
random_normal_26/mulMul%random_normal_26/RandomStandardNormalrandom_normal_26/stddev*
T0
M
random_normal_26Addrandom_normal_26/mulrandom_normal_26/mean*
T0
d
weight_out_phone
VariableV2*
shared_name *
dtype0*
	container *
shape
:F

weight_out_phone/AssignAssignweight_out_phonerandom_normal_26*
use_locking(*
T0*#
_class
loc:@weight_out_phone*
validate_shape(
a
weight_out_phone/readIdentityweight_out_phone*
T0*#
_class
loc:@weight_out_phone
D
random_normal_27/shapeConst*
valueB:*
dtype0
B
random_normal_27/meanConst*
valueB
 *    *
dtype0
D
random_normal_27/stddevConst*
dtype0*
valueB
 *  ?

%random_normal_27/RandomStandardNormalRandomStandardNormalrandom_normal_27/shape*
T0*
dtype0*
seed2 *

seed 
d
random_normal_27/mulMul%random_normal_27/RandomStandardNormalrandom_normal_27/stddev*
T0
M
random_normal_27Addrandom_normal_27/mulrandom_normal_27/mean*
T0
e
weight_out_phone_bias
VariableV2*
	container *
shape:*
shared_name *
dtype0
Ť
weight_out_phone_bias/AssignAssignweight_out_phone_biasrandom_normal_27*
use_locking(*
T0*(
_class
loc:@weight_out_phone_bias*
validate_shape(
p
weight_out_phone_bias/readIdentityweight_out_phone_bias*
T0*(
_class
loc:@weight_out_phone_bias
Q
MatMulMatMulxweight_1/read*
transpose_a( *
transpose_b( *
T0
/
AddAddMatMulweight_1_bias/read*
T0
 
SigmoidSigmoidAdd*
T0
Y
MatMul_1MatMulSigmoidweight_2/read*
T0*
transpose_a( *
transpose_b( 
3
Add_1AddMatMul_1weight_2_bias/read*
T0
$
	Sigmoid_1SigmoidAdd_1*
T0
[
MatMul_2MatMul	Sigmoid_1weight_3/read*
T0*
transpose_a( *
transpose_b( 
3
Add_2AddMatMul_2weight_3_bias/read*
T0
$
	Sigmoid_2SigmoidAdd_2*
T0
[
MatMul_3MatMul	Sigmoid_2weight_4/read*
T0*
transpose_a( *
transpose_b( 
3
Add_3AddMatMul_3weight_4_bias/read*
T0
$
	Sigmoid_3SigmoidAdd_3*
T0
[
MatMul_4MatMul	Sigmoid_3weight_5/read*
T0*
transpose_a( *
transpose_b( 
3
Add_4AddMatMul_4weight_5_bias/read*
T0
$
	Sigmoid_4SigmoidAdd_4*
T0
[
MatMul_5MatMul	Sigmoid_4weight_6/read*
transpose_a( *
transpose_b( *
T0
3
Add_5AddMatMul_5weight_6_bias/read*
T0
$
	Sigmoid_5SigmoidAdd_5*
T0
[
MatMul_6MatMul	Sigmoid_5weight_7/read*
transpose_a( *
transpose_b( *
T0
3
Add_6AddMatMul_6weight_7_bias/read*
T0
$
	Sigmoid_6SigmoidAdd_6*
T0
j
MatMul_7MatMul	Sigmoid_6weight_action_1_layer_1/read*
transpose_a( *
transpose_b( *
T0
B
Add_7AddMatMul_7!weight_action_1_layer_1_bias/read*
T0
$
	Sigmoid_7SigmoidAdd_7*
T0
j
MatMul_8MatMul	Sigmoid_6weight_action_2_layer_1/read*
T0*
transpose_a( *
transpose_b( 
B
Add_8AddMatMul_8!weight_action_2_layer_1_bias/read*
T0
$
	Sigmoid_8SigmoidAdd_8*
T0
j
MatMul_9MatMul	Sigmoid_8weight_action_2_layer_2/read*
transpose_a( *
transpose_b( *
T0
B
Add_9AddMatMul_9!weight_action_2_layer_2_bias/read*
T0
$
	Sigmoid_9SigmoidAdd_9*
T0
g
	MatMul_10MatMul	Sigmoid_7weight_out_action_1/read*
transpose_a( *
transpose_b( *
T0
@
Add_10Add	MatMul_10weight_out_action_1_bias/read*
T0
,
predict_action_1SigmoidAdd_10*
T0
g
	MatMul_11MatMul	Sigmoid_9weight_out_action_2/read*
transpose_a( *
transpose_b( *
T0
@
Add_11Add	MatMul_11weight_out_action_2_bias/read*
T0
,
predict_action_2SigmoidAdd_11*
T0
b
	MatMul_12MatMul	Sigmoid_6weight_out_loc/read*
T0*
transpose_a( *
transpose_b( 
;
Add_12Add	MatMul_12weight_out_loc_bias/read*
T0
'
predict_locSigmoidAdd_12*
T0
d
	MatMul_13MatMul	Sigmoid_6weight_out_phone/read*
transpose_a( *
transpose_b( *
T0
=
Add_13Add	MatMul_13weight_out_phone_bias/read*
T0
)
predict_phoneSigmoidAdd_13*
T0
P
&softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0
[
'softmax_cross_entropy_with_logits/ShapeShapepredict_action_1*
out_type0*
T0
R
(softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits/Shape_1Shapepredict_action_1*
T0*
out_type0
Q
'softmax_cross_entropy_with_logits/Sub/yConst*
value	B :*
dtype0

%softmax_cross_entropy_with_logits/SubSub(softmax_cross_entropy_with_logits/Rank_1'softmax_cross_entropy_with_logits/Sub/y*
T0
z
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*

axis *
N*
T0
Z
,softmax_cross_entropy_with_logits/Slice/sizeConst*
dtype0*
valueB:
Î
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
T0*
Index0
h
1softmax_cross_entropy_with_logits/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
W
-softmax_cross_entropy_with_logits/concat/axisConst*
value	B : *
dtype0
Ý
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*
T0*
N*

Tidx0

)softmax_cross_entropy_with_logits/ReshapeReshapepredict_action_1(softmax_cross_entropy_with_logits/concat*
T0*
Tshape0
R
(softmax_cross_entropy_with_logits/Rank_2Const*
value	B :*
dtype0
W
)softmax_cross_entropy_with_logits/Shape_2Shape
y_action_1*
T0*
out_type0
S
)softmax_cross_entropy_with_logits/Sub_1/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_1Sub(softmax_cross_entropy_with_logits/Rank_2)softmax_cross_entropy_with_logits/Sub_1/y*
T0
~
/softmax_cross_entropy_with_logits/Slice_1/beginPack'softmax_cross_entropy_with_logits/Sub_1*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits/Slice_1/sizeConst*
dtype0*
valueB:
Ô
)softmax_cross_entropy_with_logits/Slice_1Slice)softmax_cross_entropy_with_logits/Shape_2/softmax_cross_entropy_with_logits/Slice_1/begin.softmax_cross_entropy_with_logits/Slice_1/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits/concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
Y
/softmax_cross_entropy_with_logits/concat_1/axisConst*
value	B : *
dtype0
ĺ
*softmax_cross_entropy_with_logits/concat_1ConcatV23softmax_cross_entropy_with_logits/concat_1/values_0)softmax_cross_entropy_with_logits/Slice_1/softmax_cross_entropy_with_logits/concat_1/axis*
N*

Tidx0*
T0

+softmax_cross_entropy_with_logits/Reshape_1Reshape
y_action_1*softmax_cross_entropy_with_logits/concat_1*
T0*
Tshape0
Ł
!softmax_cross_entropy_with_logitsSoftmaxCrossEntropyWithLogits)softmax_cross_entropy_with_logits/Reshape+softmax_cross_entropy_with_logits/Reshape_1*
T0
S
)softmax_cross_entropy_with_logits/Sub_2/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits/Sub_2Sub&softmax_cross_entropy_with_logits/Rank)softmax_cross_entropy_with_logits/Sub_2/y*
T0
]
/softmax_cross_entropy_with_logits/Slice_2/beginConst*
valueB: *
dtype0
}
.softmax_cross_entropy_with_logits/Slice_2/sizePack'softmax_cross_entropy_with_logits/Sub_2*
T0*

axis *
N
Ň
)softmax_cross_entropy_with_logits/Slice_2Slice'softmax_cross_entropy_with_logits/Shape/softmax_cross_entropy_with_logits/Slice_2/begin.softmax_cross_entropy_with_logits/Slice_2/size*
T0*
Index0

+softmax_cross_entropy_with_logits/Reshape_2Reshape!softmax_cross_entropy_with_logits)softmax_cross_entropy_with_logits/Slice_2*
T0*
Tshape0
3
ConstConst*
valueB: *
dtype0
f
MeanMean+softmax_cross_entropy_with_logits/Reshape_2Const*

Tidx0*
	keep_dims( *
T0
2
mul/xConst*
valueB
 *q=>*
dtype0
 
mulMulmul/xMean*
T0
R
(softmax_cross_entropy_with_logits_1/RankConst*
value	B :*
dtype0
]
)softmax_cross_entropy_with_logits_1/ShapeShapepredict_action_2*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_1/Rank_1Const*
value	B :*
dtype0
_
+softmax_cross_entropy_with_logits_1/Shape_1Shapepredict_action_2*
out_type0*
T0
S
)softmax_cross_entropy_with_logits_1/Sub/yConst*
dtype0*
value	B :

'softmax_cross_entropy_with_logits_1/SubSub*softmax_cross_entropy_with_logits_1/Rank_1)softmax_cross_entropy_with_logits_1/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_1/Slice/beginPack'softmax_cross_entropy_with_logits_1/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_1/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_1/SliceSlice+softmax_cross_entropy_with_logits_1/Shape_1/softmax_cross_entropy_with_logits_1/Slice/begin.softmax_cross_entropy_with_logits_1/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_1/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
Y
/softmax_cross_entropy_with_logits_1/concat/axisConst*
value	B : *
dtype0
ĺ
*softmax_cross_entropy_with_logits_1/concatConcatV23softmax_cross_entropy_with_logits_1/concat/values_0)softmax_cross_entropy_with_logits_1/Slice/softmax_cross_entropy_with_logits_1/concat/axis*
N*

Tidx0*
T0

+softmax_cross_entropy_with_logits_1/ReshapeReshapepredict_action_2*softmax_cross_entropy_with_logits_1/concat*
Tshape0*
T0
T
*softmax_cross_entropy_with_logits_1/Rank_2Const*
value	B :*
dtype0
Y
+softmax_cross_entropy_with_logits_1/Shape_2Shape
y_action_2*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_1/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_1/Sub_1Sub*softmax_cross_entropy_with_logits_1/Rank_2+softmax_cross_entropy_with_logits_1/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_1/Slice_1/beginPack)softmax_cross_entropy_with_logits_1/Sub_1*

axis *
N*
T0
^
0softmax_cross_entropy_with_logits_1/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_1/Slice_1Slice+softmax_cross_entropy_with_logits_1/Shape_21softmax_cross_entropy_with_logits_1/Slice_1/begin0softmax_cross_entropy_with_logits_1/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_1/concat_1/values_0Const*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
[
1softmax_cross_entropy_with_logits_1/concat_1/axisConst*
value	B : *
dtype0
í
,softmax_cross_entropy_with_logits_1/concat_1ConcatV25softmax_cross_entropy_with_logits_1/concat_1/values_0+softmax_cross_entropy_with_logits_1/Slice_11softmax_cross_entropy_with_logits_1/concat_1/axis*

Tidx0*
T0*
N

-softmax_cross_entropy_with_logits_1/Reshape_1Reshape
y_action_2,softmax_cross_entropy_with_logits_1/concat_1*
T0*
Tshape0
Š
#softmax_cross_entropy_with_logits_1SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_1/Reshape-softmax_cross_entropy_with_logits_1/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_1/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_1/Sub_2Sub(softmax_cross_entropy_with_logits_1/Rank+softmax_cross_entropy_with_logits_1/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_1/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_1/Slice_2/sizePack)softmax_cross_entropy_with_logits_1/Sub_2*
T0*

axis *
N
Ú
+softmax_cross_entropy_with_logits_1/Slice_2Slice)softmax_cross_entropy_with_logits_1/Shape1softmax_cross_entropy_with_logits_1/Slice_2/begin0softmax_cross_entropy_with_logits_1/Slice_2/size*
T0*
Index0
Ą
-softmax_cross_entropy_with_logits_1/Reshape_2Reshape#softmax_cross_entropy_with_logits_1+softmax_cross_entropy_with_logits_1/Slice_2*
T0*
Tshape0
5
Const_1Const*
dtype0*
valueB: 
l
Mean_1Mean-softmax_cross_entropy_with_logits_1/Reshape_2Const_1*
T0*

Tidx0*
	keep_dims( 
4
mul_1/xConst*
valueB
 *ŽÇ>*
dtype0
&
mul_1Mulmul_1/xMean_1*
T0
"
add_14Addmulmul_1*
T0
R
(softmax_cross_entropy_with_logits_2/RankConst*
value	B :*
dtype0
X
)softmax_cross_entropy_with_logits_2/ShapeShapepredict_loc*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_2/Rank_1Const*
value	B :*
dtype0
Z
+softmax_cross_entropy_with_logits_2/Shape_1Shapepredict_loc*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_2/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_2/SubSub*softmax_cross_entropy_with_logits_2/Rank_1)softmax_cross_entropy_with_logits_2/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_2/Slice/beginPack'softmax_cross_entropy_with_logits_2/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_2/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_2/SliceSlice+softmax_cross_entropy_with_logits_2/Shape_1/softmax_cross_entropy_with_logits_2/Slice/begin.softmax_cross_entropy_with_logits_2/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_2/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
Y
/softmax_cross_entropy_with_logits_2/concat/axisConst*
value	B : *
dtype0
ĺ
*softmax_cross_entropy_with_logits_2/concatConcatV23softmax_cross_entropy_with_logits_2/concat/values_0)softmax_cross_entropy_with_logits_2/Slice/softmax_cross_entropy_with_logits_2/concat/axis*
T0*
N*

Tidx0

+softmax_cross_entropy_with_logits_2/ReshapeReshapepredict_loc*softmax_cross_entropy_with_logits_2/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_2/Rank_2Const*
value	B :*
dtype0
Y
+softmax_cross_entropy_with_logits_2/Shape_2Shape
y_location*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_2/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_2/Sub_1Sub*softmax_cross_entropy_with_logits_2/Rank_2+softmax_cross_entropy_with_logits_2/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_2/Slice_1/beginPack)softmax_cross_entropy_with_logits_2/Sub_1*
T0*

axis *
N
^
0softmax_cross_entropy_with_logits_2/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_2/Slice_1Slice+softmax_cross_entropy_with_logits_2/Shape_21softmax_cross_entropy_with_logits_2/Slice_1/begin0softmax_cross_entropy_with_logits_2/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_2/concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
[
1softmax_cross_entropy_with_logits_2/concat_1/axisConst*
value	B : *
dtype0
í
,softmax_cross_entropy_with_logits_2/concat_1ConcatV25softmax_cross_entropy_with_logits_2/concat_1/values_0+softmax_cross_entropy_with_logits_2/Slice_11softmax_cross_entropy_with_logits_2/concat_1/axis*
T0*
N*

Tidx0

-softmax_cross_entropy_with_logits_2/Reshape_1Reshape
y_location,softmax_cross_entropy_with_logits_2/concat_1*
T0*
Tshape0
Š
#softmax_cross_entropy_with_logits_2SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_2/Reshape-softmax_cross_entropy_with_logits_2/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_2/Sub_2/yConst*
dtype0*
value	B :

)softmax_cross_entropy_with_logits_2/Sub_2Sub(softmax_cross_entropy_with_logits_2/Rank+softmax_cross_entropy_with_logits_2/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_2/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_2/Slice_2/sizePack)softmax_cross_entropy_with_logits_2/Sub_2*
T0*

axis *
N
Ú
+softmax_cross_entropy_with_logits_2/Slice_2Slice)softmax_cross_entropy_with_logits_2/Shape1softmax_cross_entropy_with_logits_2/Slice_2/begin0softmax_cross_entropy_with_logits_2/Slice_2/size*
T0*
Index0
Ą
-softmax_cross_entropy_with_logits_2/Reshape_2Reshape#softmax_cross_entropy_with_logits_2+softmax_cross_entropy_with_logits_2/Slice_2*
T0*
Tshape0
5
Const_2Const*
valueB: *
dtype0
l
Mean_2Mean-softmax_cross_entropy_with_logits_2/Reshape_2Const_2*
T0*

Tidx0*
	keep_dims( 
4
mul_2/xConst*
valueB
 *  >*
dtype0
&
mul_2Mulmul_2/xMean_2*
T0
%
add_15Addadd_14mul_2*
T0
R
(softmax_cross_entropy_with_logits_3/RankConst*
value	B :*
dtype0
Z
)softmax_cross_entropy_with_logits_3/ShapeShapepredict_phone*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_3/Rank_1Const*
value	B :*
dtype0
\
+softmax_cross_entropy_with_logits_3/Shape_1Shapepredict_phone*
T0*
out_type0
S
)softmax_cross_entropy_with_logits_3/Sub/yConst*
value	B :*
dtype0

'softmax_cross_entropy_with_logits_3/SubSub*softmax_cross_entropy_with_logits_3/Rank_1)softmax_cross_entropy_with_logits_3/Sub/y*
T0
~
/softmax_cross_entropy_with_logits_3/Slice/beginPack'softmax_cross_entropy_with_logits_3/Sub*
T0*

axis *
N
\
.softmax_cross_entropy_with_logits_3/Slice/sizeConst*
valueB:*
dtype0
Ö
)softmax_cross_entropy_with_logits_3/SliceSlice+softmax_cross_entropy_with_logits_3/Shape_1/softmax_cross_entropy_with_logits_3/Slice/begin.softmax_cross_entropy_with_logits_3/Slice/size*
T0*
Index0
j
3softmax_cross_entropy_with_logits_3/concat/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
Y
/softmax_cross_entropy_with_logits_3/concat/axisConst*
value	B : *
dtype0
ĺ
*softmax_cross_entropy_with_logits_3/concatConcatV23softmax_cross_entropy_with_logits_3/concat/values_0)softmax_cross_entropy_with_logits_3/Slice/softmax_cross_entropy_with_logits_3/concat/axis*

Tidx0*
T0*
N

+softmax_cross_entropy_with_logits_3/ReshapeReshapepredict_phone*softmax_cross_entropy_with_logits_3/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_3/Rank_2Const*
value	B :*
dtype0
V
+softmax_cross_entropy_with_logits_3/Shape_2Shapey_phone*
T0*
out_type0
U
+softmax_cross_entropy_with_logits_3/Sub_1/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_3/Sub_1Sub*softmax_cross_entropy_with_logits_3/Rank_2+softmax_cross_entropy_with_logits_3/Sub_1/y*
T0

1softmax_cross_entropy_with_logits_3/Slice_1/beginPack)softmax_cross_entropy_with_logits_3/Sub_1*
N*
T0*

axis 
^
0softmax_cross_entropy_with_logits_3/Slice_1/sizeConst*
valueB:*
dtype0
Ü
+softmax_cross_entropy_with_logits_3/Slice_1Slice+softmax_cross_entropy_with_logits_3/Shape_21softmax_cross_entropy_with_logits_3/Slice_1/begin0softmax_cross_entropy_with_logits_3/Slice_1/size*
T0*
Index0
l
5softmax_cross_entropy_with_logits_3/concat_1/values_0Const*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
[
1softmax_cross_entropy_with_logits_3/concat_1/axisConst*
value	B : *
dtype0
í
,softmax_cross_entropy_with_logits_3/concat_1ConcatV25softmax_cross_entropy_with_logits_3/concat_1/values_0+softmax_cross_entropy_with_logits_3/Slice_11softmax_cross_entropy_with_logits_3/concat_1/axis*

Tidx0*
T0*
N

-softmax_cross_entropy_with_logits_3/Reshape_1Reshapey_phone,softmax_cross_entropy_with_logits_3/concat_1*
T0*
Tshape0
Š
#softmax_cross_entropy_with_logits_3SoftmaxCrossEntropyWithLogits+softmax_cross_entropy_with_logits_3/Reshape-softmax_cross_entropy_with_logits_3/Reshape_1*
T0
U
+softmax_cross_entropy_with_logits_3/Sub_2/yConst*
value	B :*
dtype0

)softmax_cross_entropy_with_logits_3/Sub_2Sub(softmax_cross_entropy_with_logits_3/Rank+softmax_cross_entropy_with_logits_3/Sub_2/y*
T0
_
1softmax_cross_entropy_with_logits_3/Slice_2/beginConst*
valueB: *
dtype0

0softmax_cross_entropy_with_logits_3/Slice_2/sizePack)softmax_cross_entropy_with_logits_3/Sub_2*
T0*

axis *
N
Ú
+softmax_cross_entropy_with_logits_3/Slice_2Slice)softmax_cross_entropy_with_logits_3/Shape1softmax_cross_entropy_with_logits_3/Slice_2/begin0softmax_cross_entropy_with_logits_3/Slice_2/size*
T0*
Index0
Ą
-softmax_cross_entropy_with_logits_3/Reshape_2Reshape#softmax_cross_entropy_with_logits_3+softmax_cross_entropy_with_logits_3/Slice_2*
T0*
Tshape0
5
Const_3Const*
dtype0*
valueB: 
l
Mean_3Mean-softmax_cross_entropy_with_logits_3/Reshape_2Const_3*

Tidx0*
	keep_dims( *
T0
4
mul_3/xConst*
valueB
 *
×Ł=*
dtype0
&
mul_3Mulmul_3/xMean_3*
T0
%
add_16Addadd_15mul_3*
T0
-
SquareSquareweight_1_bias/read*
T0
5
Const_4Const*
valueB: *
dtype0
A
SumSumSquareConst_4*
T0*

Tidx0*
	keep_dims( 
/
Square_1Squareweight_2_bias/read*
T0
5
Const_5Const*
valueB: *
dtype0
E
Sum_1SumSquare_1Const_5*

Tidx0*
	keep_dims( *
T0
"
add_17AddSumSum_1*
T0
/
Square_2Squareweight_3_bias/read*
T0
5
Const_6Const*
dtype0*
valueB: 
E
Sum_2SumSquare_2Const_6*
T0*

Tidx0*
	keep_dims( 
%
add_18Addadd_17Sum_2*
T0
/
Square_3Squareweight_4_bias/read*
T0
5
Const_7Const*
valueB: *
dtype0
E
Sum_3SumSquare_3Const_7*
T0*

Tidx0*
	keep_dims( 
%
add_19Addadd_18Sum_3*
T0
/
Square_4Squareweight_5_bias/read*
T0
5
Const_8Const*
valueB: *
dtype0
E
Sum_4SumSquare_4Const_8*

Tidx0*
	keep_dims( *
T0
%
add_20Addadd_19Sum_4*
T0
4
mul_4/xConst*
valueB
 *ÍĚĚ=*
dtype0
&
mul_4Mulmul_4/xadd_20*
T0
%
add_21Addadd_16mul_4*
T0
S
&ExponentialDecay/initial_learning_rateConst*
valueB
 *o:*
dtype0
A
ExponentialDecay/Cast/xConst*
value	B :*
dtype0
^
ExponentialDecay/CastCastExponentialDecay/Cast/x*

SrcT0*
Truncate( *

DstT0
F
ExponentialDecay/Cast_1/xConst*
valueB
 *Y?*
dtype0
C
ExponentialDecay/Cast_2/xConst*
value	B : *
dtype0
b
ExponentialDecay/Cast_2CastExponentialDecay/Cast_2/x*
Truncate( *

DstT0*

SrcT0
\
ExponentialDecay/truedivRealDivExponentialDecay/Cast_2ExponentialDecay/Cast*
T0
B
ExponentialDecay/FloorFloorExponentialDecay/truediv*
T0
W
ExponentialDecay/PowPowExponentialDecay/Cast_1/xExponentialDecay/Floor*
T0
^
ExponentialDecayMul&ExponentialDecay/initial_learning_rateExponentialDecay/Pow*
T0
8
gradients/ShapeConst*
valueB *
dtype0
@
gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0
W
gradients/FillFillgradients/Shapegradients/grad_ys_0*
T0*

index_type0
?
&gradients/add_21_grad/tuple/group_depsNoOp^gradients/Fill

.gradients/add_21_grad/tuple/control_dependencyIdentitygradients/Fill'^gradients/add_21_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Ą
0gradients/add_21_grad/tuple/control_dependency_1Identitygradients/Fill'^gradients/add_21_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
_
&gradients/add_16_grad/tuple/group_depsNoOp/^gradients/add_21_grad/tuple/control_dependency
ż
.gradients/add_16_grad/tuple/control_dependencyIdentity.gradients/add_21_grad/tuple/control_dependency'^gradients/add_16_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Á
0gradients/add_16_grad/tuple/control_dependency_1Identity.gradients/add_21_grad/tuple/control_dependency'^gradients/add_16_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
b
gradients/mul_4_grad/MulMul0gradients/add_21_grad/tuple/control_dependency_1add_20*
T0
e
gradients/mul_4_grad/Mul_1Mul0gradients/add_21_grad/tuple/control_dependency_1mul_4/x*
T0
e
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Mul^gradients/mul_4_grad/Mul_1
ą
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Mul&^gradients/mul_4_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_4_grad/Mul
ˇ
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Mul_1&^gradients/mul_4_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_4_grad/Mul_1*
T0
_
&gradients/add_15_grad/tuple/group_depsNoOp/^gradients/add_16_grad/tuple/control_dependency
ż
.gradients/add_15_grad/tuple/control_dependencyIdentity.gradients/add_16_grad/tuple/control_dependency'^gradients/add_15_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Á
0gradients/add_15_grad/tuple/control_dependency_1Identity.gradients/add_16_grad/tuple/control_dependency'^gradients/add_15_grad/tuple/group_deps*!
_class
loc:@gradients/Fill*
T0
b
gradients/mul_3_grad/MulMul0gradients/add_16_grad/tuple/control_dependency_1Mean_3*
T0
e
gradients/mul_3_grad/Mul_1Mul0gradients/add_16_grad/tuple/control_dependency_1mul_3/x*
T0
e
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Mul^gradients/mul_3_grad/Mul_1
ą
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Mul&^gradients/mul_3_grad/tuple/group_deps*+
_class!
loc:@gradients/mul_3_grad/Mul*
T0
ˇ
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Mul_1&^gradients/mul_3_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_3_grad/Mul_1
`
&gradients/add_20_grad/tuple/group_depsNoOp0^gradients/mul_4_grad/tuple/control_dependency_1
Ě
.gradients/add_20_grad/tuple/control_dependencyIdentity/gradients/mul_4_grad/tuple/control_dependency_1'^gradients/add_20_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
Î
0gradients/add_20_grad/tuple/control_dependency_1Identity/gradients/mul_4_grad/tuple/control_dependency_1'^gradients/add_20_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_4_grad/Mul_1*
T0
_
&gradients/add_14_grad/tuple/group_depsNoOp/^gradients/add_15_grad/tuple/control_dependency
ż
.gradients/add_14_grad/tuple/control_dependencyIdentity.gradients/add_15_grad/tuple/control_dependency'^gradients/add_14_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Á
0gradients/add_14_grad/tuple/control_dependency_1Identity.gradients/add_15_grad/tuple/control_dependency'^gradients/add_14_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
b
gradients/mul_2_grad/MulMul0gradients/add_15_grad/tuple/control_dependency_1Mean_2*
T0
e
gradients/mul_2_grad/Mul_1Mul0gradients/add_15_grad/tuple/control_dependency_1mul_2/x*
T0
e
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Mul^gradients/mul_2_grad/Mul_1
ą
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Mul&^gradients/mul_2_grad/tuple/group_deps*+
_class!
loc:@gradients/mul_2_grad/Mul*
T0
ˇ
/gradients/mul_2_grad/tuple/control_dependency_1Identitygradients/mul_2_grad/Mul_1&^gradients/mul_2_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_2_grad/Mul_1
Q
#gradients/Mean_3_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_3_grad/ReshapeReshape/gradients/mul_3_grad/tuple/control_dependency_1#gradients/Mean_3_grad/Reshape/shape*
T0*
Tshape0
l
gradients/Mean_3_grad/ShapeShape-softmax_cross_entropy_with_logits_3/Reshape_2*
T0*
out_type0
y
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*

Tmultiples0*
T0
n
gradients/Mean_3_grad/Shape_1Shape-softmax_cross_entropy_with_logits_3/Reshape_2*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_3_grad/ConstConst*
dtype0*
valueB: 

gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*
T0*

Tidx0*
	keep_dims( 
K
gradients/Mean_3_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_3_grad/Prod_1Prodgradients/Mean_3_grad/Shape_2gradients/Mean_3_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_3_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_3_grad/MaximumMaximumgradients/Mean_3_grad/Prod_1gradients/Mean_3_grad/Maximum/y*
T0
n
gradients/Mean_3_grad/floordivFloorDivgradients/Mean_3_grad/Prodgradients/Mean_3_grad/Maximum*
T0
j
gradients/Mean_3_grad/CastCastgradients/Mean_3_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_3_grad/truedivRealDivgradients/Mean_3_grad/Tilegradients/Mean_3_grad/Cast*
T0
_
&gradients/add_19_grad/tuple/group_depsNoOp/^gradients/add_20_grad/tuple/control_dependency
Ë
.gradients/add_19_grad/tuple/control_dependencyIdentity.gradients/add_20_grad/tuple/control_dependency'^gradients/add_19_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_4_grad/Mul_1*
T0
Í
0gradients/add_19_grad/tuple/control_dependency_1Identity.gradients/add_20_grad/tuple/control_dependency'^gradients/add_19_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
P
"gradients/Sum_4_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Sum_4_grad/ReshapeReshape0gradients/add_20_grad/tuple/control_dependency_1"gradients/Sum_4_grad/Reshape/shape*
T0*
Tshape0
H
gradients/Sum_4_grad/ConstConst*
valueB:d*
dtype0
v
gradients/Sum_4_grad/TileTilegradients/Sum_4_grad/Reshapegradients/Sum_4_grad/Const*

Tmultiples0*
T0
\
gradients/mul_grad/MulMul.gradients/add_14_grad/tuple/control_dependencyMean*
T0
_
gradients/mul_grad/Mul_1Mul.gradients/add_14_grad/tuple/control_dependencymul/x*
T0
_
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Mul^gradients/mul_grad/Mul_1
Š
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Mul$^gradients/mul_grad/tuple/group_deps*
T0*)
_class
loc:@gradients/mul_grad/Mul
Ż
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Mul_1$^gradients/mul_grad/tuple/group_deps*+
_class!
loc:@gradients/mul_grad/Mul_1*
T0
b
gradients/mul_1_grad/MulMul0gradients/add_14_grad/tuple/control_dependency_1Mean_1*
T0
e
gradients/mul_1_grad/Mul_1Mul0gradients/add_14_grad/tuple/control_dependency_1mul_1/x*
T0
e
%gradients/mul_1_grad/tuple/group_depsNoOp^gradients/mul_1_grad/Mul^gradients/mul_1_grad/Mul_1
ą
-gradients/mul_1_grad/tuple/control_dependencyIdentitygradients/mul_1_grad/Mul&^gradients/mul_1_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_1_grad/Mul
ˇ
/gradients/mul_1_grad/tuple/control_dependency_1Identitygradients/mul_1_grad/Mul_1&^gradients/mul_1_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_1_grad/Mul_1*
T0
Q
#gradients/Mean_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_2_grad/ReshapeReshape/gradients/mul_2_grad/tuple/control_dependency_1#gradients/Mean_2_grad/Reshape/shape*
T0*
Tshape0
l
gradients/Mean_2_grad/ShapeShape-softmax_cross_entropy_with_logits_2/Reshape_2*
T0*
out_type0
y
gradients/Mean_2_grad/TileTilegradients/Mean_2_grad/Reshapegradients/Mean_2_grad/Shape*

Tmultiples0*
T0
n
gradients/Mean_2_grad/Shape_1Shape-softmax_cross_entropy_with_logits_2/Reshape_2*
T0*
out_type0
F
gradients/Mean_2_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_2_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_2_grad/ProdProdgradients/Mean_2_grad/Shape_1gradients/Mean_2_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_2_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_2_grad/Prod_1Prodgradients/Mean_2_grad/Shape_2gradients/Mean_2_grad/Const_1*
T0*

Tidx0*
	keep_dims( 
I
gradients/Mean_2_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_2_grad/MaximumMaximumgradients/Mean_2_grad/Prod_1gradients/Mean_2_grad/Maximum/y*
T0
n
gradients/Mean_2_grad/floordivFloorDivgradients/Mean_2_grad/Prodgradients/Mean_2_grad/Maximum*
T0
j
gradients/Mean_2_grad/CastCastgradients/Mean_2_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_2_grad/truedivRealDivgradients/Mean_2_grad/Tilegradients/Mean_2_grad/Cast*
T0

Bgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_3*
T0*
out_type0
É
Dgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeReshapegradients/Mean_3_grad/truedivBgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/Shape*
Tshape0*
T0
_
&gradients/add_18_grad/tuple/group_depsNoOp/^gradients/add_19_grad/tuple/control_dependency
Ë
.gradients/add_18_grad/tuple/control_dependencyIdentity.gradients/add_19_grad/tuple/control_dependency'^gradients/add_18_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
Í
0gradients/add_18_grad/tuple/control_dependency_1Identity.gradients/add_19_grad/tuple/control_dependency'^gradients/add_18_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
P
"gradients/Sum_3_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Sum_3_grad/ReshapeReshape0gradients/add_19_grad/tuple/control_dependency_1"gradients/Sum_3_grad/Reshape/shape*
T0*
Tshape0
H
gradients/Sum_3_grad/ConstConst*
dtype0*
valueB:x
v
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/Const*

Tmultiples0*
T0
f
gradients/Square_4_grad/ConstConst^gradients/Sum_4_grad/Tile*
valueB
 *   @*
dtype0
^
gradients/Square_4_grad/MulMulweight_5_bias/readgradients/Square_4_grad/Const*
T0
e
gradients/Square_4_grad/Mul_1Mulgradients/Sum_4_grad/Tilegradients/Square_4_grad/Mul*
T0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_grad/ReshapeReshape-gradients/mul_grad/tuple/control_dependency_1!gradients/Mean_grad/Reshape/shape*
Tshape0*
T0
h
gradients/Mean_grad/ShapeShape+softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0
s
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0
j
gradients/Mean_grad/Shape_1Shape+softmax_cross_entropy_with_logits/Reshape_2*
T0*
out_type0
D
gradients/Mean_grad/Shape_2Const*
valueB *
dtype0
G
gradients/Mean_grad/ConstConst*
valueB: *
dtype0
~
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*

Tidx0*
	keep_dims( *
T0
G
gradients/Mean_grad/Maximum/yConst*
value	B :*
dtype0
j
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*
T0
h
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*
T0
f
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

SrcT0*
Truncate( *

DstT0
c
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0
Q
#gradients/Mean_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_1_grad/ReshapeReshape/gradients/mul_1_grad/tuple/control_dependency_1#gradients/Mean_1_grad/Reshape/shape*
T0*
Tshape0
l
gradients/Mean_1_grad/ShapeShape-softmax_cross_entropy_with_logits_1/Reshape_2*
out_type0*
T0
y
gradients/Mean_1_grad/TileTilegradients/Mean_1_grad/Reshapegradients/Mean_1_grad/Shape*

Tmultiples0*
T0
n
gradients/Mean_1_grad/Shape_1Shape-softmax_cross_entropy_with_logits_1/Reshape_2*
T0*
out_type0
F
gradients/Mean_1_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_1_grad/ConstConst*
dtype0*
valueB: 

gradients/Mean_1_grad/ProdProdgradients/Mean_1_grad/Shape_1gradients/Mean_1_grad/Const*

Tidx0*
	keep_dims( *
T0
K
gradients/Mean_1_grad/Const_1Const*
valueB: *
dtype0

gradients/Mean_1_grad/Prod_1Prodgradients/Mean_1_grad/Shape_2gradients/Mean_1_grad/Const_1*

Tidx0*
	keep_dims( *
T0
I
gradients/Mean_1_grad/Maximum/yConst*
value	B :*
dtype0
p
gradients/Mean_1_grad/MaximumMaximumgradients/Mean_1_grad/Prod_1gradients/Mean_1_grad/Maximum/y*
T0
n
gradients/Mean_1_grad/floordivFloorDivgradients/Mean_1_grad/Prodgradients/Mean_1_grad/Maximum*
T0
j
gradients/Mean_1_grad/CastCastgradients/Mean_1_grad/floordiv*

SrcT0*
Truncate( *

DstT0
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0

Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_2*
T0*
out_type0
É
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeReshapegradients/Mean_2_grad/truedivBgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/Shape*
T0*
Tshape0
Q
gradients/zeros_like	ZerosLike%softmax_cross_entropy_with_logits_3:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dim*
T0*

Tdim0
Ź
6gradients/softmax_cross_entropy_with_logits_3_grad/mulMul=gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims%softmax_cross_entropy_with_logits_3:1*
T0

=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_3/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_3_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_3_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
í
?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_1/dim*

Tdim0*
T0
Á
8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_3_grad/Neg*
T0
ż
Cgradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_3_grad/mul9^gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
Š
Kgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_3_grad/mulD^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul
Ż
Mgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_3_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_3_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_3_grad/mul_1
_
&gradients/add_17_grad/tuple/group_depsNoOp/^gradients/add_18_grad/tuple/control_dependency
Ë
.gradients/add_17_grad/tuple/control_dependencyIdentity.gradients/add_18_grad/tuple/control_dependency'^gradients/add_17_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
Í
0gradients/add_17_grad/tuple/control_dependency_1Identity.gradients/add_18_grad/tuple/control_dependency'^gradients/add_17_grad/tuple/group_deps*-
_class#
!loc:@gradients/mul_4_grad/Mul_1*
T0
P
"gradients/Sum_2_grad/Reshape/shapeConst*
dtype0*
valueB:

gradients/Sum_2_grad/ReshapeReshape0gradients/add_18_grad/tuple/control_dependency_1"gradients/Sum_2_grad/Reshape/shape*
T0*
Tshape0
I
gradients/Sum_2_grad/ConstConst*
valueB:*
dtype0
v
gradients/Sum_2_grad/TileTilegradients/Sum_2_grad/Reshapegradients/Sum_2_grad/Const*

Tmultiples0*
T0
f
gradients/Square_3_grad/ConstConst^gradients/Sum_3_grad/Tile*
valueB
 *   @*
dtype0
^
gradients/Square_3_grad/MulMulweight_4_bias/readgradients/Square_3_grad/Const*
T0
e
gradients/Square_3_grad/Mul_1Mulgradients/Sum_3_grad/Tilegradients/Square_3_grad/Mul*
T0

@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ShapeShape!softmax_cross_entropy_with_logits*
T0*
out_type0
Ă
Bgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeReshapegradients/Mean_grad/truediv@gradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Shape*
T0*
Tshape0

Bgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_1*
T0*
out_type0
É
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshapegradients/Mean_1_grad/truedivBgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
Tshape0*
T0
S
gradients/zeros_like_1	ZerosLike%softmax_cross_entropy_with_logits_2:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims/dim*

Tdim0*
T0
Ź
6gradients/softmax_cross_entropy_with_logits_2_grad/mulMul=gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims%softmax_cross_entropy_with_logits_2:1*
T0

=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_2/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_2_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_2_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
í
?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_1/dim*
T0*

Tdim0
Á
8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_2_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_2_grad/Neg*
T0
ż
Cgradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_2_grad/mul9^gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
Š
Kgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_2_grad/mulD^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul
Ż
Mgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_2_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_2_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_2_grad/mul_1
q
@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ShapeShapepredict_phone*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_3_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Shape*
T0*
Tshape0
N
 gradients/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Sum_grad/ReshapeReshape.gradients/add_17_grad/tuple/control_dependency gradients/Sum_grad/Reshape/shape*
T0*
Tshape0
G
gradients/Sum_grad/ConstConst*
valueB:Í*
dtype0
p
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/Const*

Tmultiples0*
T0
P
"gradients/Sum_1_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Sum_1_grad/ReshapeReshape0gradients/add_17_grad/tuple/control_dependency_1"gradients/Sum_1_grad/Reshape/shape*
T0*
Tshape0
I
gradients/Sum_1_grad/ConstConst*
valueB:ž*
dtype0
v
gradients/Sum_1_grad/TileTilegradients/Sum_1_grad/Reshapegradients/Sum_1_grad/Const*

Tmultiples0*
T0
f
gradients/Square_2_grad/ConstConst^gradients/Sum_2_grad/Tile*
valueB
 *   @*
dtype0
^
gradients/Square_2_grad/MulMulweight_3_bias/readgradients/Square_2_grad/Const*
T0
e
gradients/Square_2_grad/Mul_1Mulgradients/Sum_2_grad/Tilegradients/Square_2_grad/Mul*
T0
Q
gradients/zeros_like_2	ZerosLike#softmax_cross_entropy_with_logits:1*
T0
r
?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ă
;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/Reshape?gradients/softmax_cross_entropy_with_logits_grad/ExpandDims/dim*

Tdim0*
T0
Ś
4gradients/softmax_cross_entropy_with_logits_grad/mulMul;gradients/softmax_cross_entropy_with_logits_grad/ExpandDims#softmax_cross_entropy_with_logits:1*
T0
}
;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax
LogSoftmax)softmax_cross_entropy_with_logits/Reshape*
T0

4gradients/softmax_cross_entropy_with_logits_grad/NegNeg;gradients/softmax_cross_entropy_with_logits_grad/LogSoftmax*
T0
t
Agradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
ç
=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1
ExpandDimsBgradients/softmax_cross_entropy_with_logits/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_grad/ExpandDims_1/dim*

Tdim0*
T0
ť
6gradients/softmax_cross_entropy_with_logits_grad/mul_1Mul=gradients/softmax_cross_entropy_with_logits_grad/ExpandDims_14gradients/softmax_cross_entropy_with_logits_grad/Neg*
T0
š
Agradients/softmax_cross_entropy_with_logits_grad/tuple/group_depsNoOp5^gradients/softmax_cross_entropy_with_logits_grad/mul7^gradients/softmax_cross_entropy_with_logits_grad/mul_1
Ą
Igradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependencyIdentity4gradients/softmax_cross_entropy_with_logits_grad/mulB^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*G
_class=
;9loc:@gradients/softmax_cross_entropy_with_logits_grad/mul
§
Kgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency_1Identity6gradients/softmax_cross_entropy_with_logits_grad/mul_1B^gradients/softmax_cross_entropy_with_logits_grad/tuple/group_deps*
T0*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_grad/mul_1
S
gradients/zeros_like_3	ZerosLike%softmax_cross_entropy_with_logits_1:1*
T0
t
Agradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
é
=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*

Tdim0*
T0
Ź
6gradients/softmax_cross_entropy_with_logits_1_grad/mulMul=gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims%softmax_cross_entropy_with_logits_1:1*
T0

=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax
LogSoftmax+softmax_cross_entropy_with_logits_1/Reshape*
T0

6gradients/softmax_cross_entropy_with_logits_1_grad/NegNeg=gradients/softmax_cross_entropy_with_logits_1_grad/LogSoftmax*
T0
v
Cgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
dtype0*
valueB :
˙˙˙˙˙˙˙˙˙
í
?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*
T0*

Tdim0
Á
8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1Mul?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_16gradients/softmax_cross_entropy_with_logits_1_grad/Neg*
T0
ż
Cgradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_depsNoOp7^gradients/softmax_cross_entropy_with_logits_1_grad/mul9^gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
Š
Kgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependencyIdentity6gradients/softmax_cross_entropy_with_logits_1_grad/mulD^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*I
_class?
=;loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul*
T0
Ż
Mgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency_1Identity8gradients/softmax_cross_entropy_with_logits_1_grad/mul_1D^gradients/softmax_cross_entropy_with_logits_1_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/softmax_cross_entropy_with_logits_1_grad/mul_1
o
@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ShapeShapepredict_loc*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Shape*
T0*
Tshape0

(gradients/predict_phone_grad/SigmoidGradSigmoidGradpredict_phoneBgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape*
T0
b
gradients/Square_grad/ConstConst^gradients/Sum_grad/Tile*
valueB
 *   @*
dtype0
Z
gradients/Square_grad/MulMulweight_1_bias/readgradients/Square_grad/Const*
T0
_
gradients/Square_grad/Mul_1Mulgradients/Sum_grad/Tilegradients/Square_grad/Mul*
T0
f
gradients/Square_1_grad/ConstConst^gradients/Sum_1_grad/Tile*
dtype0*
valueB
 *   @
^
gradients/Square_1_grad/MulMulweight_2_bias/readgradients/Square_1_grad/Const*
T0
e
gradients/Square_1_grad/Mul_1Mulgradients/Sum_1_grad/Tilegradients/Square_1_grad/Mul*
T0
r
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShapepredict_action_1*
T0*
out_type0
í
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
t
@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShapepredict_action_2*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*
T0*
Tshape0

&gradients/predict_loc_grad/SigmoidGradSigmoidGradpredict_locBgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape*
T0
H
gradients/Add_13_grad/ShapeShape	MatMul_13*
T0*
out_type0
K
gradients/Add_13_grad/Shape_1Const*
valueB:*
dtype0

+gradients/Add_13_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_13_grad/Shapegradients/Add_13_grad/Shape_1*
T0

gradients/Add_13_grad/SumSum(gradients/predict_phone_grad/SigmoidGrad+gradients/Add_13_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
w
gradients/Add_13_grad/ReshapeReshapegradients/Add_13_grad/Sumgradients/Add_13_grad/Shape*
T0*
Tshape0
Ą
gradients/Add_13_grad/Sum_1Sum(gradients/predict_phone_grad/SigmoidGrad-gradients/Add_13_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_13_grad/Reshape_1Reshapegradients/Add_13_grad/Sum_1gradients/Add_13_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_13_grad/tuple/group_depsNoOp^gradients/Add_13_grad/Reshape ^gradients/Add_13_grad/Reshape_1
˝
.gradients/Add_13_grad/tuple/control_dependencyIdentitygradients/Add_13_grad/Reshape'^gradients/Add_13_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_13_grad/Reshape
Ă
0gradients/Add_13_grad/tuple/control_dependency_1Identitygradients/Add_13_grad/Reshape_1'^gradients/Add_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_13_grad/Reshape_1

+gradients/predict_action_1_grad/SigmoidGradSigmoidGradpredict_action_1@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0

+gradients/predict_action_2_grad/SigmoidGradSigmoidGradpredict_action_2Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
T0
H
gradients/Add_12_grad/ShapeShape	MatMul_12*
out_type0*
T0
K
gradients/Add_12_grad/Shape_1Const*
valueB:*
dtype0

+gradients/Add_12_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_12_grad/Shapegradients/Add_12_grad/Shape_1*
T0

gradients/Add_12_grad/SumSum&gradients/predict_loc_grad/SigmoidGrad+gradients/Add_12_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_12_grad/ReshapeReshapegradients/Add_12_grad/Sumgradients/Add_12_grad/Shape*
T0*
Tshape0

gradients/Add_12_grad/Sum_1Sum&gradients/predict_loc_grad/SigmoidGrad-gradients/Add_12_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_12_grad/Reshape_1Reshapegradients/Add_12_grad/Sum_1gradients/Add_12_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_12_grad/tuple/group_depsNoOp^gradients/Add_12_grad/Reshape ^gradients/Add_12_grad/Reshape_1
˝
.gradients/Add_12_grad/tuple/control_dependencyIdentitygradients/Add_12_grad/Reshape'^gradients/Add_12_grad/tuple/group_deps*0
_class&
$"loc:@gradients/Add_12_grad/Reshape*
T0
Ă
0gradients/Add_12_grad/tuple/control_dependency_1Identitygradients/Add_12_grad/Reshape_1'^gradients/Add_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_12_grad/Reshape_1

gradients/MatMul_13_grad/MatMulMatMul.gradients/Add_13_grad/tuple/control_dependencyweight_out_phone/read*
T0*
transpose_a( *
transpose_b(

!gradients/MatMul_13_grad/MatMul_1MatMul	Sigmoid_6.gradients/Add_13_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_13_grad/tuple/group_depsNoOp ^gradients/MatMul_13_grad/MatMul"^gradients/MatMul_13_grad/MatMul_1
Ç
1gradients/MatMul_13_grad/tuple/control_dependencyIdentitygradients/MatMul_13_grad/MatMul*^gradients/MatMul_13_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul
Í
3gradients/MatMul_13_grad/tuple/control_dependency_1Identity!gradients/MatMul_13_grad/MatMul_1*^gradients/MatMul_13_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_13_grad/MatMul_1
H
gradients/Add_10_grad/ShapeShape	MatMul_10*
T0*
out_type0
K
gradients/Add_10_grad/Shape_1Const*
valueB:*
dtype0

+gradients/Add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_10_grad/Shapegradients/Add_10_grad/Shape_1*
T0
 
gradients/Add_10_grad/SumSum+gradients/predict_action_1_grad/SigmoidGrad+gradients/Add_10_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_10_grad/ReshapeReshapegradients/Add_10_grad/Sumgradients/Add_10_grad/Shape*
T0*
Tshape0
¤
gradients/Add_10_grad/Sum_1Sum+gradients/predict_action_1_grad/SigmoidGrad-gradients/Add_10_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_10_grad/Reshape_1Reshapegradients/Add_10_grad/Sum_1gradients/Add_10_grad/Shape_1*
Tshape0*
T0
p
&gradients/Add_10_grad/tuple/group_depsNoOp^gradients/Add_10_grad/Reshape ^gradients/Add_10_grad/Reshape_1
˝
.gradients/Add_10_grad/tuple/control_dependencyIdentitygradients/Add_10_grad/Reshape'^gradients/Add_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_10_grad/Reshape
Ă
0gradients/Add_10_grad/tuple/control_dependency_1Identitygradients/Add_10_grad/Reshape_1'^gradients/Add_10_grad/tuple/group_deps*2
_class(
&$loc:@gradients/Add_10_grad/Reshape_1*
T0
H
gradients/Add_11_grad/ShapeShape	MatMul_11*
out_type0*
T0
K
gradients/Add_11_grad/Shape_1Const*
valueB:*
dtype0

+gradients/Add_11_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_11_grad/Shapegradients/Add_11_grad/Shape_1*
T0
 
gradients/Add_11_grad/SumSum+gradients/predict_action_2_grad/SigmoidGrad+gradients/Add_11_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_11_grad/ReshapeReshapegradients/Add_11_grad/Sumgradients/Add_11_grad/Shape*
T0*
Tshape0
¤
gradients/Add_11_grad/Sum_1Sum+gradients/predict_action_2_grad/SigmoidGrad-gradients/Add_11_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_11_grad/Reshape_1Reshapegradients/Add_11_grad/Sum_1gradients/Add_11_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_11_grad/tuple/group_depsNoOp^gradients/Add_11_grad/Reshape ^gradients/Add_11_grad/Reshape_1
˝
.gradients/Add_11_grad/tuple/control_dependencyIdentitygradients/Add_11_grad/Reshape'^gradients/Add_11_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_11_grad/Reshape
Ă
0gradients/Add_11_grad/tuple/control_dependency_1Identitygradients/Add_11_grad/Reshape_1'^gradients/Add_11_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_11_grad/Reshape_1

gradients/MatMul_12_grad/MatMulMatMul.gradients/Add_12_grad/tuple/control_dependencyweight_out_loc/read*
T0*
transpose_a( *
transpose_b(

!gradients/MatMul_12_grad/MatMul_1MatMul	Sigmoid_6.gradients/Add_12_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
w
)gradients/MatMul_12_grad/tuple/group_depsNoOp ^gradients/MatMul_12_grad/MatMul"^gradients/MatMul_12_grad/MatMul_1
Ç
1gradients/MatMul_12_grad/tuple/control_dependencyIdentitygradients/MatMul_12_grad/MatMul*^gradients/MatMul_12_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_12_grad/MatMul
Í
3gradients/MatMul_12_grad/tuple/control_dependency_1Identity!gradients/MatMul_12_grad/MatMul_1*^gradients/MatMul_12_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_12_grad/MatMul_1
˘
gradients/MatMul_10_grad/MatMulMatMul.gradients/Add_10_grad/tuple/control_dependencyweight_out_action_1/read*
transpose_a( *
transpose_b(*
T0

!gradients/MatMul_10_grad/MatMul_1MatMul	Sigmoid_7.gradients/Add_10_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
w
)gradients/MatMul_10_grad/tuple/group_depsNoOp ^gradients/MatMul_10_grad/MatMul"^gradients/MatMul_10_grad/MatMul_1
Ç
1gradients/MatMul_10_grad/tuple/control_dependencyIdentitygradients/MatMul_10_grad/MatMul*^gradients/MatMul_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul
Í
3gradients/MatMul_10_grad/tuple/control_dependency_1Identity!gradients/MatMul_10_grad/MatMul_1*^gradients/MatMul_10_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_10_grad/MatMul_1
˘
gradients/MatMul_11_grad/MatMulMatMul.gradients/Add_11_grad/tuple/control_dependencyweight_out_action_2/read*
transpose_a( *
transpose_b(*
T0

!gradients/MatMul_11_grad/MatMul_1MatMul	Sigmoid_9.gradients/Add_11_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
w
)gradients/MatMul_11_grad/tuple/group_depsNoOp ^gradients/MatMul_11_grad/MatMul"^gradients/MatMul_11_grad/MatMul_1
Ç
1gradients/MatMul_11_grad/tuple/control_dependencyIdentitygradients/MatMul_11_grad/MatMul*^gradients/MatMul_11_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/MatMul_11_grad/MatMul
Í
3gradients/MatMul_11_grad/tuple/control_dependency_1Identity!gradients/MatMul_11_grad/MatMul_1*^gradients/MatMul_11_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/MatMul_11_grad/MatMul_1
z
$gradients/Sigmoid_7_grad/SigmoidGradSigmoidGrad	Sigmoid_71gradients/MatMul_10_grad/tuple/control_dependency*
T0
z
$gradients/Sigmoid_9_grad/SigmoidGradSigmoidGrad	Sigmoid_91gradients/MatMul_11_grad/tuple/control_dependency*
T0
F
gradients/Add_7_grad/ShapeShapeMatMul_7*
T0*
out_type0
J
gradients/Add_7_grad/Shape_1Const*
valueB:<*
dtype0

*gradients/Add_7_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_7_grad/Shapegradients/Add_7_grad/Shape_1*
T0

gradients/Add_7_grad/SumSum$gradients/Sigmoid_7_grad/SigmoidGrad*gradients/Add_7_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_7_grad/ReshapeReshapegradients/Add_7_grad/Sumgradients/Add_7_grad/Shape*
T0*
Tshape0

gradients/Add_7_grad/Sum_1Sum$gradients/Sigmoid_7_grad/SigmoidGrad,gradients/Add_7_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_7_grad/Reshape_1Reshapegradients/Add_7_grad/Sum_1gradients/Add_7_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_7_grad/tuple/group_depsNoOp^gradients/Add_7_grad/Reshape^gradients/Add_7_grad/Reshape_1
š
-gradients/Add_7_grad/tuple/control_dependencyIdentitygradients/Add_7_grad/Reshape&^gradients/Add_7_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_7_grad/Reshape
ż
/gradients/Add_7_grad/tuple/control_dependency_1Identitygradients/Add_7_grad/Reshape_1&^gradients/Add_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_7_grad/Reshape_1
F
gradients/Add_9_grad/ShapeShapeMatMul_9*
T0*
out_type0
J
gradients/Add_9_grad/Shape_1Const*
valueB:*
dtype0

*gradients/Add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_9_grad/Shapegradients/Add_9_grad/Shape_1*
T0

gradients/Add_9_grad/SumSum$gradients/Sigmoid_9_grad/SigmoidGrad*gradients/Add_9_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_9_grad/ReshapeReshapegradients/Add_9_grad/Sumgradients/Add_9_grad/Shape*
T0*
Tshape0

gradients/Add_9_grad/Sum_1Sum$gradients/Sigmoid_9_grad/SigmoidGrad,gradients/Add_9_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_9_grad/Reshape_1Reshapegradients/Add_9_grad/Sum_1gradients/Add_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_9_grad/tuple/group_depsNoOp^gradients/Add_9_grad/Reshape^gradients/Add_9_grad/Reshape_1
š
-gradients/Add_9_grad/tuple/control_dependencyIdentitygradients/Add_9_grad/Reshape&^gradients/Add_9_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_9_grad/Reshape
ż
/gradients/Add_9_grad/tuple/control_dependency_1Identitygradients/Add_9_grad/Reshape_1&^gradients/Add_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_9_grad/Reshape_1
¤
gradients/MatMul_7_grad/MatMulMatMul-gradients/Add_7_grad/tuple/control_dependencyweight_action_1_layer_1/read*
transpose_b(*
T0*
transpose_a( 

 gradients/MatMul_7_grad/MatMul_1MatMul	Sigmoid_6-gradients/Add_7_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
Ă
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul
É
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1
¤
gradients/MatMul_9_grad/MatMulMatMul-gradients/Add_9_grad/tuple/control_dependencyweight_action_2_layer_2/read*
T0*
transpose_a( *
transpose_b(

 gradients/MatMul_9_grad/MatMul_1MatMul	Sigmoid_8-gradients/Add_9_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_9_grad/tuple/group_depsNoOp^gradients/MatMul_9_grad/MatMul!^gradients/MatMul_9_grad/MatMul_1
Ă
0gradients/MatMul_9_grad/tuple/control_dependencyIdentitygradients/MatMul_9_grad/MatMul)^gradients/MatMul_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_9_grad/MatMul
É
2gradients/MatMul_9_grad/tuple/control_dependency_1Identity gradients/MatMul_9_grad/MatMul_1)^gradients/MatMul_9_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_9_grad/MatMul_1
y
$gradients/Sigmoid_8_grad/SigmoidGradSigmoidGrad	Sigmoid_80gradients/MatMul_9_grad/tuple/control_dependency*
T0
F
gradients/Add_8_grad/ShapeShapeMatMul_8*
out_type0*
T0
J
gradients/Add_8_grad/Shape_1Const*
valueB:<*
dtype0

*gradients/Add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_8_grad/Shapegradients/Add_8_grad/Shape_1*
T0

gradients/Add_8_grad/SumSum$gradients/Sigmoid_8_grad/SigmoidGrad*gradients/Add_8_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_8_grad/ReshapeReshapegradients/Add_8_grad/Sumgradients/Add_8_grad/Shape*
Tshape0*
T0

gradients/Add_8_grad/Sum_1Sum$gradients/Sigmoid_8_grad/SigmoidGrad,gradients/Add_8_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_8_grad/Reshape_1Reshapegradients/Add_8_grad/Sum_1gradients/Add_8_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_8_grad/tuple/group_depsNoOp^gradients/Add_8_grad/Reshape^gradients/Add_8_grad/Reshape_1
š
-gradients/Add_8_grad/tuple/control_dependencyIdentitygradients/Add_8_grad/Reshape&^gradients/Add_8_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_8_grad/Reshape
ż
/gradients/Add_8_grad/tuple/control_dependency_1Identitygradients/Add_8_grad/Reshape_1&^gradients/Add_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_8_grad/Reshape_1
¤
gradients/MatMul_8_grad/MatMulMatMul-gradients/Add_8_grad/tuple/control_dependencyweight_action_2_layer_1/read*
T0*
transpose_a( *
transpose_b(

 gradients/MatMul_8_grad/MatMul_1MatMul	Sigmoid_6-gradients/Add_8_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_8_grad/tuple/group_depsNoOp^gradients/MatMul_8_grad/MatMul!^gradients/MatMul_8_grad/MatMul_1
Ă
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul
É
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1
Ś
gradients/AddNAddN1gradients/MatMul_13_grad/tuple/control_dependency1gradients/MatMul_12_grad/tuple/control_dependency0gradients/MatMul_7_grad/tuple/control_dependency0gradients/MatMul_8_grad/tuple/control_dependency*
T0*2
_class(
&$loc:@gradients/MatMul_13_grad/MatMul*
N
W
$gradients/Sigmoid_6_grad/SigmoidGradSigmoidGrad	Sigmoid_6gradients/AddN*
T0
F
gradients/Add_6_grad/ShapeShapeMatMul_6*
T0*
out_type0
J
gradients/Add_6_grad/Shape_1Const*
valueB:F*
dtype0

*gradients/Add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_6_grad/Shapegradients/Add_6_grad/Shape_1*
T0

gradients/Add_6_grad/SumSum$gradients/Sigmoid_6_grad/SigmoidGrad*gradients/Add_6_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_6_grad/ReshapeReshapegradients/Add_6_grad/Sumgradients/Add_6_grad/Shape*
T0*
Tshape0

gradients/Add_6_grad/Sum_1Sum$gradients/Sigmoid_6_grad/SigmoidGrad,gradients/Add_6_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_6_grad/Reshape_1Reshapegradients/Add_6_grad/Sum_1gradients/Add_6_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_6_grad/tuple/group_depsNoOp^gradients/Add_6_grad/Reshape^gradients/Add_6_grad/Reshape_1
š
-gradients/Add_6_grad/tuple/control_dependencyIdentitygradients/Add_6_grad/Reshape&^gradients/Add_6_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_6_grad/Reshape
ż
/gradients/Add_6_grad/tuple/control_dependency_1Identitygradients/Add_6_grad/Reshape_1&^gradients/Add_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_6_grad/Reshape_1

gradients/MatMul_6_grad/MatMulMatMul-gradients/Add_6_grad/tuple/control_dependencyweight_7/read*
transpose_a( *
transpose_b(*
T0

 gradients/MatMul_6_grad/MatMul_1MatMul	Sigmoid_5-gradients/Add_6_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
Ă
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul*
T0
É
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1
y
$gradients/Sigmoid_5_grad/SigmoidGradSigmoidGrad	Sigmoid_50gradients/MatMul_6_grad/tuple/control_dependency*
T0
F
gradients/Add_5_grad/ShapeShapeMatMul_5*
T0*
out_type0
J
gradients/Add_5_grad/Shape_1Const*
dtype0*
valueB:Z

*gradients/Add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_5_grad/Shapegradients/Add_5_grad/Shape_1*
T0

gradients/Add_5_grad/SumSum$gradients/Sigmoid_5_grad/SigmoidGrad*gradients/Add_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_5_grad/ReshapeReshapegradients/Add_5_grad/Sumgradients/Add_5_grad/Shape*
T0*
Tshape0

gradients/Add_5_grad/Sum_1Sum$gradients/Sigmoid_5_grad/SigmoidGrad,gradients/Add_5_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_5_grad/Reshape_1Reshapegradients/Add_5_grad/Sum_1gradients/Add_5_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_5_grad/tuple/group_depsNoOp^gradients/Add_5_grad/Reshape^gradients/Add_5_grad/Reshape_1
š
-gradients/Add_5_grad/tuple/control_dependencyIdentitygradients/Add_5_grad/Reshape&^gradients/Add_5_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_5_grad/Reshape
ż
/gradients/Add_5_grad/tuple/control_dependency_1Identitygradients/Add_5_grad/Reshape_1&^gradients/Add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_5_grad/Reshape_1

gradients/MatMul_5_grad/MatMulMatMul-gradients/Add_5_grad/tuple/control_dependencyweight_6/read*
transpose_a( *
transpose_b(*
T0

 gradients/MatMul_5_grad/MatMul_1MatMul	Sigmoid_4-gradients/Add_5_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_5_grad/tuple/group_depsNoOp^gradients/MatMul_5_grad/MatMul!^gradients/MatMul_5_grad/MatMul_1
Ă
0gradients/MatMul_5_grad/tuple/control_dependencyIdentitygradients/MatMul_5_grad/MatMul)^gradients/MatMul_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_5_grad/MatMul
É
2gradients/MatMul_5_grad/tuple/control_dependency_1Identity gradients/MatMul_5_grad/MatMul_1)^gradients/MatMul_5_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_5_grad/MatMul_1
y
$gradients/Sigmoid_4_grad/SigmoidGradSigmoidGrad	Sigmoid_40gradients/MatMul_5_grad/tuple/control_dependency*
T0
F
gradients/Add_4_grad/ShapeShapeMatMul_4*
T0*
out_type0
J
gradients/Add_4_grad/Shape_1Const*
valueB:d*
dtype0

*gradients/Add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_4_grad/Shapegradients/Add_4_grad/Shape_1*
T0

gradients/Add_4_grad/SumSum$gradients/Sigmoid_4_grad/SigmoidGrad*gradients/Add_4_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_4_grad/ReshapeReshapegradients/Add_4_grad/Sumgradients/Add_4_grad/Shape*
T0*
Tshape0

gradients/Add_4_grad/Sum_1Sum$gradients/Sigmoid_4_grad/SigmoidGrad,gradients/Add_4_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_4_grad/Reshape_1Reshapegradients/Add_4_grad/Sum_1gradients/Add_4_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_4_grad/tuple/group_depsNoOp^gradients/Add_4_grad/Reshape^gradients/Add_4_grad/Reshape_1
š
-gradients/Add_4_grad/tuple/control_dependencyIdentitygradients/Add_4_grad/Reshape&^gradients/Add_4_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_4_grad/Reshape
ż
/gradients/Add_4_grad/tuple/control_dependency_1Identitygradients/Add_4_grad/Reshape_1&^gradients/Add_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_4_grad/Reshape_1

gradients/MatMul_4_grad/MatMulMatMul-gradients/Add_4_grad/tuple/control_dependencyweight_5/read*
transpose_a( *
transpose_b(*
T0

 gradients/MatMul_4_grad/MatMul_1MatMul	Sigmoid_3-gradients/Add_4_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_4_grad/tuple/group_depsNoOp^gradients/MatMul_4_grad/MatMul!^gradients/MatMul_4_grad/MatMul_1
Ă
0gradients/MatMul_4_grad/tuple/control_dependencyIdentitygradients/MatMul_4_grad/MatMul)^gradients/MatMul_4_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_4_grad/MatMul
É
2gradients/MatMul_4_grad/tuple/control_dependency_1Identity gradients/MatMul_4_grad/MatMul_1)^gradients/MatMul_4_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_4_grad/MatMul_1
Ź
gradients/AddN_1AddNgradients/Square_4_grad/Mul_1/gradients/Add_4_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@gradients/Square_4_grad/Mul_1*
N
y
$gradients/Sigmoid_3_grad/SigmoidGradSigmoidGrad	Sigmoid_30gradients/MatMul_4_grad/tuple/control_dependency*
T0
F
gradients/Add_3_grad/ShapeShapeMatMul_3*
out_type0*
T0
J
gradients/Add_3_grad/Shape_1Const*
valueB:x*
dtype0

*gradients/Add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_3_grad/Shapegradients/Add_3_grad/Shape_1*
T0

gradients/Add_3_grad/SumSum$gradients/Sigmoid_3_grad/SigmoidGrad*gradients/Add_3_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_3_grad/ReshapeReshapegradients/Add_3_grad/Sumgradients/Add_3_grad/Shape*
T0*
Tshape0

gradients/Add_3_grad/Sum_1Sum$gradients/Sigmoid_3_grad/SigmoidGrad,gradients/Add_3_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_3_grad/Reshape_1Reshapegradients/Add_3_grad/Sum_1gradients/Add_3_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_3_grad/tuple/group_depsNoOp^gradients/Add_3_grad/Reshape^gradients/Add_3_grad/Reshape_1
š
-gradients/Add_3_grad/tuple/control_dependencyIdentitygradients/Add_3_grad/Reshape&^gradients/Add_3_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_3_grad/Reshape
ż
/gradients/Add_3_grad/tuple/control_dependency_1Identitygradients/Add_3_grad/Reshape_1&^gradients/Add_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_3_grad/Reshape_1

gradients/MatMul_3_grad/MatMulMatMul-gradients/Add_3_grad/tuple/control_dependencyweight_4/read*
transpose_b(*
T0*
transpose_a( 

 gradients/MatMul_3_grad/MatMul_1MatMul	Sigmoid_2-gradients/Add_3_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_3_grad/tuple/group_depsNoOp^gradients/MatMul_3_grad/MatMul!^gradients/MatMul_3_grad/MatMul_1
Ă
0gradients/MatMul_3_grad/tuple/control_dependencyIdentitygradients/MatMul_3_grad/MatMul)^gradients/MatMul_3_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_3_grad/MatMul
É
2gradients/MatMul_3_grad/tuple/control_dependency_1Identity gradients/MatMul_3_grad/MatMul_1)^gradients/MatMul_3_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_3_grad/MatMul_1
Ź
gradients/AddN_2AddNgradients/Square_3_grad/Mul_1/gradients/Add_3_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@gradients/Square_3_grad/Mul_1*
N
y
$gradients/Sigmoid_2_grad/SigmoidGradSigmoidGrad	Sigmoid_20gradients/MatMul_3_grad/tuple/control_dependency*
T0
F
gradients/Add_2_grad/ShapeShapeMatMul_2*
T0*
out_type0
K
gradients/Add_2_grad/Shape_1Const*
valueB:*
dtype0

*gradients/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_2_grad/Shapegradients/Add_2_grad/Shape_1*
T0

gradients/Add_2_grad/SumSum$gradients/Sigmoid_2_grad/SigmoidGrad*gradients/Add_2_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_2_grad/ReshapeReshapegradients/Add_2_grad/Sumgradients/Add_2_grad/Shape*
T0*
Tshape0

gradients/Add_2_grad/Sum_1Sum$gradients/Sigmoid_2_grad/SigmoidGrad,gradients/Add_2_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_2_grad/Reshape_1Reshapegradients/Add_2_grad/Sum_1gradients/Add_2_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_2_grad/tuple/group_depsNoOp^gradients/Add_2_grad/Reshape^gradients/Add_2_grad/Reshape_1
š
-gradients/Add_2_grad/tuple/control_dependencyIdentitygradients/Add_2_grad/Reshape&^gradients/Add_2_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_2_grad/Reshape
ż
/gradients/Add_2_grad/tuple/control_dependency_1Identitygradients/Add_2_grad/Reshape_1&^gradients/Add_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_2_grad/Reshape_1

gradients/MatMul_2_grad/MatMulMatMul-gradients/Add_2_grad/tuple/control_dependencyweight_3/read*
transpose_a( *
transpose_b(*
T0

 gradients/MatMul_2_grad/MatMul_1MatMul	Sigmoid_1-gradients/Add_2_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
Ă
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
É
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1*
T0
Ź
gradients/AddN_3AddNgradients/Square_2_grad/Mul_1/gradients/Add_2_grad/tuple/control_dependency_1*
N*
T0*0
_class&
$"loc:@gradients/Square_2_grad/Mul_1
y
$gradients/Sigmoid_1_grad/SigmoidGradSigmoidGrad	Sigmoid_10gradients/MatMul_2_grad/tuple/control_dependency*
T0
F
gradients/Add_1_grad/ShapeShapeMatMul_1*
T0*
out_type0
K
gradients/Add_1_grad/Shape_1Const*
valueB:ž*
dtype0

*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*
T0

gradients/Add_1_grad/SumSum$gradients/Sigmoid_1_grad/SigmoidGrad*gradients/Add_1_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_1_grad/ReshapeReshapegradients/Add_1_grad/Sumgradients/Add_1_grad/Shape*
T0*
Tshape0

gradients/Add_1_grad/Sum_1Sum$gradients/Sigmoid_1_grad/SigmoidGrad,gradients/Add_1_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
z
gradients/Add_1_grad/Reshape_1Reshapegradients/Add_1_grad/Sum_1gradients/Add_1_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_1_grad/tuple/group_depsNoOp^gradients/Add_1_grad/Reshape^gradients/Add_1_grad/Reshape_1
š
-gradients/Add_1_grad/tuple/control_dependencyIdentitygradients/Add_1_grad/Reshape&^gradients/Add_1_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_1_grad/Reshape
ż
/gradients/Add_1_grad/tuple/control_dependency_1Identitygradients/Add_1_grad/Reshape_1&^gradients/Add_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_1_grad/Reshape_1

gradients/MatMul_1_grad/MatMulMatMul-gradients/Add_1_grad/tuple/control_dependencyweight_2/read*
transpose_a( *
transpose_b(*
T0

 gradients/MatMul_1_grad/MatMul_1MatMulSigmoid-gradients/Add_1_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_1_grad/tuple/group_depsNoOp^gradients/MatMul_1_grad/MatMul!^gradients/MatMul_1_grad/MatMul_1
Ă
0gradients/MatMul_1_grad/tuple/control_dependencyIdentitygradients/MatMul_1_grad/MatMul)^gradients/MatMul_1_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_1_grad/MatMul
É
2gradients/MatMul_1_grad/tuple/control_dependency_1Identity gradients/MatMul_1_grad/MatMul_1)^gradients/MatMul_1_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_1_grad/MatMul_1
Ź
gradients/AddN_4AddNgradients/Square_1_grad/Mul_1/gradients/Add_1_grad/tuple/control_dependency_1*
T0*0
_class&
$"loc:@gradients/Square_1_grad/Mul_1*
N
u
"gradients/Sigmoid_grad/SigmoidGradSigmoidGradSigmoid0gradients/MatMul_1_grad/tuple/control_dependency*
T0
B
gradients/Add_grad/ShapeShapeMatMul*
T0*
out_type0
I
gradients/Add_grad/Shape_1Const*
valueB:Í*
dtype0

(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0

gradients/Add_grad/SumSum"gradients/Sigmoid_grad/SigmoidGrad(gradients/Add_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
n
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*
T0*
Tshape0

gradients/Add_grad/Sum_1Sum"gradients/Sigmoid_grad/SigmoidGrad*gradients/Add_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
T0*
Tshape0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
ą
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/Add_grad/Reshape
ˇ
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/Add_grad/Reshape_1

gradients/MatMul_grad/MatMulMatMul+gradients/Add_grad/tuple/control_dependencyweight_1/read*
T0*
transpose_a( *
transpose_b(

gradients/MatMul_grad/MatMul_1MatMulx+gradients/Add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
ť
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*
T0*/
_class%
#!loc:@gradients/MatMul_grad/MatMul
Á
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1
Ś
gradients/AddN_5AddNgradients/Square_grad/Mul_1-gradients/Add_grad/tuple/control_dependency_1*.
_class$
" loc:@gradients/Square_grad/Mul_1*
N*
T0
c
beta1_power/initial_valueConst*
_class
loc:@weight_1*
valueB
 *fff?*
dtype0
t
beta1_power
VariableV2*
_class
loc:@weight_1*
dtype0*
	container *
shape: *
shared_name 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@weight_1*
validate_shape(
O
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@weight_1
c
beta2_power/initial_valueConst*
_class
loc:@weight_1*
valueB
 *wž?*
dtype0
t
beta2_power
VariableV2*
shape: *
shared_name *
_class
loc:@weight_1*
dtype0*
	container 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_class
loc:@weight_1*
validate_shape(*
use_locking(
O
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@weight_1

/weight_1/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"á   Í   *
_class
loc:@weight_1*
dtype0
o
%weight_1/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_1*
dtype0
ˇ
weight_1/Adam/Initializer/zerosFill/weight_1/Adam/Initializer/zeros/shape_as_tensor%weight_1/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_1

weight_1/Adam
VariableV2*
shape:
áÍ*
shared_name *
_class
loc:@weight_1*
dtype0*
	container 

weight_1/Adam/AssignAssignweight_1/Adamweight_1/Adam/Initializer/zeros*
_class
loc:@weight_1*
validate_shape(*
use_locking(*
T0
S
weight_1/Adam/readIdentityweight_1/Adam*
T0*
_class
loc:@weight_1

1weight_1/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"á   Í   *
_class
loc:@weight_1*
dtype0
q
'weight_1/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_1*
dtype0
˝
!weight_1/Adam_1/Initializer/zerosFill1weight_1/Adam_1/Initializer/zeros/shape_as_tensor'weight_1/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_1

weight_1/Adam_1
VariableV2*
shared_name *
_class
loc:@weight_1*
dtype0*
	container *
shape:
áÍ
Ł
weight_1/Adam_1/AssignAssignweight_1/Adam_1!weight_1/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@weight_1
W
weight_1/Adam_1/readIdentityweight_1/Adam_1*
T0*
_class
loc:@weight_1

/weight_2/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"Í   ž   *
_class
loc:@weight_2*
dtype0
o
%weight_2/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_2*
dtype0
ˇ
weight_2/Adam/Initializer/zerosFill/weight_2/Adam/Initializer/zeros/shape_as_tensor%weight_2/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_2

weight_2/Adam
VariableV2*
shared_name *
_class
loc:@weight_2*
dtype0*
	container *
shape:
Íž

weight_2/Adam/AssignAssignweight_2/Adamweight_2/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@weight_2*
validate_shape(
S
weight_2/Adam/readIdentityweight_2/Adam*
T0*
_class
loc:@weight_2

1weight_2/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"Í   ž   *
_class
loc:@weight_2*
dtype0
q
'weight_2/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_class
loc:@weight_2
˝
!weight_2/Adam_1/Initializer/zerosFill1weight_2/Adam_1/Initializer/zeros/shape_as_tensor'weight_2/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_2

weight_2/Adam_1
VariableV2*
shape:
Íž*
shared_name *
_class
loc:@weight_2*
dtype0*
	container 
Ł
weight_2/Adam_1/AssignAssignweight_2/Adam_1!weight_2/Adam_1/Initializer/zeros*
_class
loc:@weight_2*
validate_shape(*
use_locking(*
T0
W
weight_2/Adam_1/readIdentityweight_2/Adam_1*
T0*
_class
loc:@weight_2

/weight_3/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"ž      *
_class
loc:@weight_3*
dtype0
o
%weight_3/Adam/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_class
loc:@weight_3
ˇ
weight_3/Adam/Initializer/zerosFill/weight_3/Adam/Initializer/zeros/shape_as_tensor%weight_3/Adam/Initializer/zeros/Const*

index_type0*
_class
loc:@weight_3*
T0

weight_3/Adam
VariableV2*
dtype0*
	container *
shape:
ž*
shared_name *
_class
loc:@weight_3

weight_3/Adam/AssignAssignweight_3/Adamweight_3/Adam/Initializer/zeros*
T0*
_class
loc:@weight_3*
validate_shape(*
use_locking(
S
weight_3/Adam/readIdentityweight_3/Adam*
T0*
_class
loc:@weight_3

1weight_3/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"ž      *
_class
loc:@weight_3
q
'weight_3/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_3*
dtype0
˝
!weight_3/Adam_1/Initializer/zerosFill1weight_3/Adam_1/Initializer/zeros/shape_as_tensor'weight_3/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_3

weight_3/Adam_1
VariableV2*
shape:
ž*
shared_name *
_class
loc:@weight_3*
dtype0*
	container 
Ł
weight_3/Adam_1/AssignAssignweight_3/Adam_1!weight_3/Adam_1/Initializer/zeros*
T0*
_class
loc:@weight_3*
validate_shape(*
use_locking(
W
weight_3/Adam_1/readIdentityweight_3/Adam_1*
_class
loc:@weight_3*
T0

/weight_4/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"   x   *
_class
loc:@weight_4
o
%weight_4/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_4*
dtype0
ˇ
weight_4/Adam/Initializer/zerosFill/weight_4/Adam/Initializer/zeros/shape_as_tensor%weight_4/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_4

weight_4/Adam
VariableV2*
	container *
shape:	x*
shared_name *
_class
loc:@weight_4*
dtype0

weight_4/Adam/AssignAssignweight_4/Adamweight_4/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@weight_4*
validate_shape(
S
weight_4/Adam/readIdentityweight_4/Adam*
T0*
_class
loc:@weight_4

1weight_4/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   x   *
_class
loc:@weight_4*
dtype0
q
'weight_4/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_4*
dtype0
˝
!weight_4/Adam_1/Initializer/zerosFill1weight_4/Adam_1/Initializer/zeros/shape_as_tensor'weight_4/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_4

weight_4/Adam_1
VariableV2*
shape:	x*
shared_name *
_class
loc:@weight_4*
dtype0*
	container 
Ł
weight_4/Adam_1/AssignAssignweight_4/Adam_1!weight_4/Adam_1/Initializer/zeros*
T0*
_class
loc:@weight_4*
validate_shape(*
use_locking(
W
weight_4/Adam_1/readIdentityweight_4/Adam_1*
T0*
_class
loc:@weight_4

/weight_5/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"x   d   *
_class
loc:@weight_5*
dtype0
o
%weight_5/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_5*
dtype0
ˇ
weight_5/Adam/Initializer/zerosFill/weight_5/Adam/Initializer/zeros/shape_as_tensor%weight_5/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_5
~
weight_5/Adam
VariableV2*
dtype0*
	container *
shape
:xd*
shared_name *
_class
loc:@weight_5

weight_5/Adam/AssignAssignweight_5/Adamweight_5/Adam/Initializer/zeros*
T0*
_class
loc:@weight_5*
validate_shape(*
use_locking(
S
weight_5/Adam/readIdentityweight_5/Adam*
T0*
_class
loc:@weight_5

1weight_5/Adam_1/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"x   d   *
_class
loc:@weight_5
q
'weight_5/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_5*
dtype0
˝
!weight_5/Adam_1/Initializer/zerosFill1weight_5/Adam_1/Initializer/zeros/shape_as_tensor'weight_5/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_5

weight_5/Adam_1
VariableV2*
_class
loc:@weight_5*
dtype0*
	container *
shape
:xd*
shared_name 
Ł
weight_5/Adam_1/AssignAssignweight_5/Adam_1!weight_5/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@weight_5*
validate_shape(
W
weight_5/Adam_1/readIdentityweight_5/Adam_1*
T0*
_class
loc:@weight_5

/weight_6/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"d   Z   *
_class
loc:@weight_6*
dtype0
o
%weight_6/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_6*
dtype0
ˇ
weight_6/Adam/Initializer/zerosFill/weight_6/Adam/Initializer/zeros/shape_as_tensor%weight_6/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_6
~
weight_6/Adam
VariableV2*
shared_name *
_class
loc:@weight_6*
dtype0*
	container *
shape
:dZ

weight_6/Adam/AssignAssignweight_6/Adamweight_6/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@weight_6*
validate_shape(
S
weight_6/Adam/readIdentityweight_6/Adam*
T0*
_class
loc:@weight_6

1weight_6/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"d   Z   *
_class
loc:@weight_6*
dtype0
q
'weight_6/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_6*
dtype0
˝
!weight_6/Adam_1/Initializer/zerosFill1weight_6/Adam_1/Initializer/zeros/shape_as_tensor'weight_6/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_6

weight_6/Adam_1
VariableV2*
	container *
shape
:dZ*
shared_name *
_class
loc:@weight_6*
dtype0
Ł
weight_6/Adam_1/AssignAssignweight_6/Adam_1!weight_6/Adam_1/Initializer/zeros*
T0*
_class
loc:@weight_6*
validate_shape(*
use_locking(
W
weight_6/Adam_1/readIdentityweight_6/Adam_1*
T0*
_class
loc:@weight_6

/weight_7/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"Z   F   *
_class
loc:@weight_7*
dtype0
o
%weight_7/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_7*
dtype0
ˇ
weight_7/Adam/Initializer/zerosFill/weight_7/Adam/Initializer/zeros/shape_as_tensor%weight_7/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_7
~
weight_7/Adam
VariableV2*
_class
loc:@weight_7*
dtype0*
	container *
shape
:ZF*
shared_name 

weight_7/Adam/AssignAssignweight_7/Adamweight_7/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@weight_7*
validate_shape(
S
weight_7/Adam/readIdentityweight_7/Adam*
T0*
_class
loc:@weight_7

1weight_7/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"Z   F   *
_class
loc:@weight_7*
dtype0
q
'weight_7/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_7*
dtype0
˝
!weight_7/Adam_1/Initializer/zerosFill1weight_7/Adam_1/Initializer/zeros/shape_as_tensor'weight_7/Adam_1/Initializer/zeros/Const*

index_type0*
_class
loc:@weight_7*
T0

weight_7/Adam_1
VariableV2*
shape
:ZF*
shared_name *
_class
loc:@weight_7*
dtype0*
	container 
Ł
weight_7/Adam_1/AssignAssignweight_7/Adam_1!weight_7/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@weight_7*
validate_shape(
W
weight_7/Adam_1/readIdentityweight_7/Adam_1*
T0*
_class
loc:@weight_7

>weight_action_1_layer_1/Adam/Initializer/zeros/shape_as_tensorConst*
dtype0*
valueB"F   <   **
_class 
loc:@weight_action_1_layer_1

4weight_action_1_layer_1/Adam/Initializer/zeros/ConstConst*
valueB
 *    **
_class 
loc:@weight_action_1_layer_1*
dtype0
ó
.weight_action_1_layer_1/Adam/Initializer/zerosFill>weight_action_1_layer_1/Adam/Initializer/zeros/shape_as_tensor4weight_action_1_layer_1/Adam/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@weight_action_1_layer_1

weight_action_1_layer_1/Adam
VariableV2*
shape
:F<*
shared_name **
_class 
loc:@weight_action_1_layer_1*
dtype0*
	container 
Ů
#weight_action_1_layer_1/Adam/AssignAssignweight_action_1_layer_1/Adam.weight_action_1_layer_1/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@weight_action_1_layer_1*
validate_shape(

!weight_action_1_layer_1/Adam/readIdentityweight_action_1_layer_1/Adam*
T0**
_class 
loc:@weight_action_1_layer_1
Ą
@weight_action_1_layer_1/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"F   <   **
_class 
loc:@weight_action_1_layer_1*
dtype0

6weight_action_1_layer_1/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    **
_class 
loc:@weight_action_1_layer_1*
dtype0
ů
0weight_action_1_layer_1/Adam_1/Initializer/zerosFill@weight_action_1_layer_1/Adam_1/Initializer/zeros/shape_as_tensor6weight_action_1_layer_1/Adam_1/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@weight_action_1_layer_1

weight_action_1_layer_1/Adam_1
VariableV2*
shared_name **
_class 
loc:@weight_action_1_layer_1*
dtype0*
	container *
shape
:F<
ß
%weight_action_1_layer_1/Adam_1/AssignAssignweight_action_1_layer_1/Adam_10weight_action_1_layer_1/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@weight_action_1_layer_1*
validate_shape(

#weight_action_1_layer_1/Adam_1/readIdentityweight_action_1_layer_1/Adam_1*
T0**
_class 
loc:@weight_action_1_layer_1

>weight_action_2_layer_1/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"F   <   **
_class 
loc:@weight_action_2_layer_1*
dtype0

4weight_action_2_layer_1/Adam/Initializer/zeros/ConstConst*
valueB
 *    **
_class 
loc:@weight_action_2_layer_1*
dtype0
ó
.weight_action_2_layer_1/Adam/Initializer/zerosFill>weight_action_2_layer_1/Adam/Initializer/zeros/shape_as_tensor4weight_action_2_layer_1/Adam/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@weight_action_2_layer_1

weight_action_2_layer_1/Adam
VariableV2*
	container *
shape
:F<*
shared_name **
_class 
loc:@weight_action_2_layer_1*
dtype0
Ů
#weight_action_2_layer_1/Adam/AssignAssignweight_action_2_layer_1/Adam.weight_action_2_layer_1/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@weight_action_2_layer_1*
validate_shape(

!weight_action_2_layer_1/Adam/readIdentityweight_action_2_layer_1/Adam*
T0**
_class 
loc:@weight_action_2_layer_1
Ą
@weight_action_2_layer_1/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"F   <   **
_class 
loc:@weight_action_2_layer_1*
dtype0

6weight_action_2_layer_1/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    **
_class 
loc:@weight_action_2_layer_1*
dtype0
ů
0weight_action_2_layer_1/Adam_1/Initializer/zerosFill@weight_action_2_layer_1/Adam_1/Initializer/zeros/shape_as_tensor6weight_action_2_layer_1/Adam_1/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@weight_action_2_layer_1

weight_action_2_layer_1/Adam_1
VariableV2*
shared_name **
_class 
loc:@weight_action_2_layer_1*
dtype0*
	container *
shape
:F<
ß
%weight_action_2_layer_1/Adam_1/AssignAssignweight_action_2_layer_1/Adam_10weight_action_2_layer_1/Adam_1/Initializer/zeros**
_class 
loc:@weight_action_2_layer_1*
validate_shape(*
use_locking(*
T0

#weight_action_2_layer_1/Adam_1/readIdentityweight_action_2_layer_1/Adam_1*
T0**
_class 
loc:@weight_action_2_layer_1

>weight_action_2_layer_2/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"<      **
_class 
loc:@weight_action_2_layer_2*
dtype0

4weight_action_2_layer_2/Adam/Initializer/zeros/ConstConst*
valueB
 *    **
_class 
loc:@weight_action_2_layer_2*
dtype0
ó
.weight_action_2_layer_2/Adam/Initializer/zerosFill>weight_action_2_layer_2/Adam/Initializer/zeros/shape_as_tensor4weight_action_2_layer_2/Adam/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@weight_action_2_layer_2

weight_action_2_layer_2/Adam
VariableV2*
shared_name **
_class 
loc:@weight_action_2_layer_2*
dtype0*
	container *
shape
:<
Ů
#weight_action_2_layer_2/Adam/AssignAssignweight_action_2_layer_2/Adam.weight_action_2_layer_2/Adam/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@weight_action_2_layer_2*
validate_shape(

!weight_action_2_layer_2/Adam/readIdentityweight_action_2_layer_2/Adam*
T0**
_class 
loc:@weight_action_2_layer_2
Ą
@weight_action_2_layer_2/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"<      **
_class 
loc:@weight_action_2_layer_2*
dtype0

6weight_action_2_layer_2/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    **
_class 
loc:@weight_action_2_layer_2*
dtype0
ů
0weight_action_2_layer_2/Adam_1/Initializer/zerosFill@weight_action_2_layer_2/Adam_1/Initializer/zeros/shape_as_tensor6weight_action_2_layer_2/Adam_1/Initializer/zeros/Const*
T0*

index_type0**
_class 
loc:@weight_action_2_layer_2

weight_action_2_layer_2/Adam_1
VariableV2*
dtype0*
	container *
shape
:<*
shared_name **
_class 
loc:@weight_action_2_layer_2
ß
%weight_action_2_layer_2/Adam_1/AssignAssignweight_action_2_layer_2/Adam_10weight_action_2_layer_2/Adam_1/Initializer/zeros*
use_locking(*
T0**
_class 
loc:@weight_action_2_layer_2*
validate_shape(

#weight_action_2_layer_2/Adam_1/readIdentityweight_action_2_layer_2/Adam_1*
T0**
_class 
loc:@weight_action_2_layer_2

*weight_out_action_1/Adam/Initializer/zerosConst*
valueB<*    *&
_class
loc:@weight_out_action_1*
dtype0

weight_out_action_1/Adam
VariableV2*&
_class
loc:@weight_out_action_1*
dtype0*
	container *
shape
:<*
shared_name 
É
weight_out_action_1/Adam/AssignAssignweight_out_action_1/Adam*weight_out_action_1/Adam/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@weight_out_action_1*
validate_shape(
t
weight_out_action_1/Adam/readIdentityweight_out_action_1/Adam*
T0*&
_class
loc:@weight_out_action_1

,weight_out_action_1/Adam_1/Initializer/zerosConst*
dtype0*
valueB<*    *&
_class
loc:@weight_out_action_1

weight_out_action_1/Adam_1
VariableV2*&
_class
loc:@weight_out_action_1*
dtype0*
	container *
shape
:<*
shared_name 
Ď
!weight_out_action_1/Adam_1/AssignAssignweight_out_action_1/Adam_1,weight_out_action_1/Adam_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@weight_out_action_1*
validate_shape(
x
weight_out_action_1/Adam_1/readIdentityweight_out_action_1/Adam_1*
T0*&
_class
loc:@weight_out_action_1

*weight_out_action_2/Adam/Initializer/zerosConst*
valueB*    *&
_class
loc:@weight_out_action_2*
dtype0

weight_out_action_2/Adam
VariableV2*&
_class
loc:@weight_out_action_2*
dtype0*
	container *
shape
:*
shared_name 
É
weight_out_action_2/Adam/AssignAssignweight_out_action_2/Adam*weight_out_action_2/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*&
_class
loc:@weight_out_action_2
t
weight_out_action_2/Adam/readIdentityweight_out_action_2/Adam*
T0*&
_class
loc:@weight_out_action_2

,weight_out_action_2/Adam_1/Initializer/zerosConst*
valueB*    *&
_class
loc:@weight_out_action_2*
dtype0

weight_out_action_2/Adam_1
VariableV2*
shape
:*
shared_name *&
_class
loc:@weight_out_action_2*
dtype0*
	container 
Ď
!weight_out_action_2/Adam_1/AssignAssignweight_out_action_2/Adam_1,weight_out_action_2/Adam_1/Initializer/zeros*&
_class
loc:@weight_out_action_2*
validate_shape(*
use_locking(*
T0
x
weight_out_action_2/Adam_1/readIdentityweight_out_action_2/Adam_1*&
_class
loc:@weight_out_action_2*
T0
}
%weight_out_loc/Adam/Initializer/zerosConst*
valueBF*    *!
_class
loc:@weight_out_loc*
dtype0

weight_out_loc/Adam
VariableV2*
shared_name *!
_class
loc:@weight_out_loc*
dtype0*
	container *
shape
:F
ľ
weight_out_loc/Adam/AssignAssignweight_out_loc/Adam%weight_out_loc/Adam/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@weight_out_loc*
validate_shape(
e
weight_out_loc/Adam/readIdentityweight_out_loc/Adam*
T0*!
_class
loc:@weight_out_loc

'weight_out_loc/Adam_1/Initializer/zerosConst*
valueBF*    *!
_class
loc:@weight_out_loc*
dtype0

weight_out_loc/Adam_1
VariableV2*!
_class
loc:@weight_out_loc*
dtype0*
	container *
shape
:F*
shared_name 
ť
weight_out_loc/Adam_1/AssignAssignweight_out_loc/Adam_1'weight_out_loc/Adam_1/Initializer/zeros*
use_locking(*
T0*!
_class
loc:@weight_out_loc*
validate_shape(
i
weight_out_loc/Adam_1/readIdentityweight_out_loc/Adam_1*
T0*!
_class
loc:@weight_out_loc

'weight_out_phone/Adam/Initializer/zerosConst*
valueBF*    *#
_class
loc:@weight_out_phone*
dtype0

weight_out_phone/Adam
VariableV2*#
_class
loc:@weight_out_phone*
dtype0*
	container *
shape
:F*
shared_name 
˝
weight_out_phone/Adam/AssignAssignweight_out_phone/Adam'weight_out_phone/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*#
_class
loc:@weight_out_phone
k
weight_out_phone/Adam/readIdentityweight_out_phone/Adam*
T0*#
_class
loc:@weight_out_phone

)weight_out_phone/Adam_1/Initializer/zerosConst*
valueBF*    *#
_class
loc:@weight_out_phone*
dtype0

weight_out_phone/Adam_1
VariableV2*
shape
:F*
shared_name *#
_class
loc:@weight_out_phone*
dtype0*
	container 
Ă
weight_out_phone/Adam_1/AssignAssignweight_out_phone/Adam_1)weight_out_phone/Adam_1/Initializer/zeros*
use_locking(*
T0*#
_class
loc:@weight_out_phone*
validate_shape(
o
weight_out_phone/Adam_1/readIdentityweight_out_phone/Adam_1*
T0*#
_class
loc:@weight_out_phone
x
$weight_1_bias/Adam/Initializer/zerosConst*
valueBÍ*    * 
_class
loc:@weight_1_bias*
dtype0

weight_1_bias/Adam
VariableV2*
shared_name * 
_class
loc:@weight_1_bias*
dtype0*
	container *
shape:Í
ą
weight_1_bias/Adam/AssignAssignweight_1_bias/Adam$weight_1_bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@weight_1_bias*
validate_shape(
b
weight_1_bias/Adam/readIdentityweight_1_bias/Adam* 
_class
loc:@weight_1_bias*
T0
z
&weight_1_bias/Adam_1/Initializer/zerosConst*
valueBÍ*    * 
_class
loc:@weight_1_bias*
dtype0

weight_1_bias/Adam_1
VariableV2*
dtype0*
	container *
shape:Í*
shared_name * 
_class
loc:@weight_1_bias
ˇ
weight_1_bias/Adam_1/AssignAssignweight_1_bias/Adam_1&weight_1_bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@weight_1_bias*
validate_shape(
f
weight_1_bias/Adam_1/readIdentityweight_1_bias/Adam_1* 
_class
loc:@weight_1_bias*
T0
x
$weight_2_bias/Adam/Initializer/zerosConst*
valueBž*    * 
_class
loc:@weight_2_bias*
dtype0

weight_2_bias/Adam
VariableV2*
shape:ž*
shared_name * 
_class
loc:@weight_2_bias*
dtype0*
	container 
ą
weight_2_bias/Adam/AssignAssignweight_2_bias/Adam$weight_2_bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@weight_2_bias
b
weight_2_bias/Adam/readIdentityweight_2_bias/Adam*
T0* 
_class
loc:@weight_2_bias
z
&weight_2_bias/Adam_1/Initializer/zerosConst*
valueBž*    * 
_class
loc:@weight_2_bias*
dtype0

weight_2_bias/Adam_1
VariableV2* 
_class
loc:@weight_2_bias*
dtype0*
	container *
shape:ž*
shared_name 
ˇ
weight_2_bias/Adam_1/AssignAssignweight_2_bias/Adam_1&weight_2_bias/Adam_1/Initializer/zeros*
T0* 
_class
loc:@weight_2_bias*
validate_shape(*
use_locking(
f
weight_2_bias/Adam_1/readIdentityweight_2_bias/Adam_1*
T0* 
_class
loc:@weight_2_bias
x
$weight_3_bias/Adam/Initializer/zerosConst*
valueB*    * 
_class
loc:@weight_3_bias*
dtype0

weight_3_bias/Adam
VariableV2*
shape:*
shared_name * 
_class
loc:@weight_3_bias*
dtype0*
	container 
ą
weight_3_bias/Adam/AssignAssignweight_3_bias/Adam$weight_3_bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@weight_3_bias*
validate_shape(
b
weight_3_bias/Adam/readIdentityweight_3_bias/Adam*
T0* 
_class
loc:@weight_3_bias
z
&weight_3_bias/Adam_1/Initializer/zerosConst*
valueB*    * 
_class
loc:@weight_3_bias*
dtype0

weight_3_bias/Adam_1
VariableV2*
shared_name * 
_class
loc:@weight_3_bias*
dtype0*
	container *
shape:
ˇ
weight_3_bias/Adam_1/AssignAssignweight_3_bias/Adam_1&weight_3_bias/Adam_1/Initializer/zeros*
T0* 
_class
loc:@weight_3_bias*
validate_shape(*
use_locking(
f
weight_3_bias/Adam_1/readIdentityweight_3_bias/Adam_1*
T0* 
_class
loc:@weight_3_bias
w
$weight_4_bias/Adam/Initializer/zerosConst*
valueBx*    * 
_class
loc:@weight_4_bias*
dtype0

weight_4_bias/Adam
VariableV2*
	container *
shape:x*
shared_name * 
_class
loc:@weight_4_bias*
dtype0
ą
weight_4_bias/Adam/AssignAssignweight_4_bias/Adam$weight_4_bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@weight_4_bias*
validate_shape(
b
weight_4_bias/Adam/readIdentityweight_4_bias/Adam*
T0* 
_class
loc:@weight_4_bias
y
&weight_4_bias/Adam_1/Initializer/zerosConst*
valueBx*    * 
_class
loc:@weight_4_bias*
dtype0

weight_4_bias/Adam_1
VariableV2*
shared_name * 
_class
loc:@weight_4_bias*
dtype0*
	container *
shape:x
ˇ
weight_4_bias/Adam_1/AssignAssignweight_4_bias/Adam_1&weight_4_bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@weight_4_bias*
validate_shape(
f
weight_4_bias/Adam_1/readIdentityweight_4_bias/Adam_1*
T0* 
_class
loc:@weight_4_bias
w
$weight_5_bias/Adam/Initializer/zerosConst*
valueBd*    * 
_class
loc:@weight_5_bias*
dtype0

weight_5_bias/Adam
VariableV2*
shared_name * 
_class
loc:@weight_5_bias*
dtype0*
	container *
shape:d
ą
weight_5_bias/Adam/AssignAssignweight_5_bias/Adam$weight_5_bias/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@weight_5_bias
b
weight_5_bias/Adam/readIdentityweight_5_bias/Adam* 
_class
loc:@weight_5_bias*
T0
y
&weight_5_bias/Adam_1/Initializer/zerosConst*
valueBd*    * 
_class
loc:@weight_5_bias*
dtype0

weight_5_bias/Adam_1
VariableV2* 
_class
loc:@weight_5_bias*
dtype0*
	container *
shape:d*
shared_name 
ˇ
weight_5_bias/Adam_1/AssignAssignweight_5_bias/Adam_1&weight_5_bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@weight_5_bias
f
weight_5_bias/Adam_1/readIdentityweight_5_bias/Adam_1*
T0* 
_class
loc:@weight_5_bias
w
$weight_6_bias/Adam/Initializer/zerosConst*
valueBZ*    * 
_class
loc:@weight_6_bias*
dtype0

weight_6_bias/Adam
VariableV2*
dtype0*
	container *
shape:Z*
shared_name * 
_class
loc:@weight_6_bias
ą
weight_6_bias/Adam/AssignAssignweight_6_bias/Adam$weight_6_bias/Adam/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@weight_6_bias*
validate_shape(
b
weight_6_bias/Adam/readIdentityweight_6_bias/Adam*
T0* 
_class
loc:@weight_6_bias
y
&weight_6_bias/Adam_1/Initializer/zerosConst*
valueBZ*    * 
_class
loc:@weight_6_bias*
dtype0

weight_6_bias/Adam_1
VariableV2*
shared_name * 
_class
loc:@weight_6_bias*
dtype0*
	container *
shape:Z
ˇ
weight_6_bias/Adam_1/AssignAssignweight_6_bias/Adam_1&weight_6_bias/Adam_1/Initializer/zeros*
use_locking(*
T0* 
_class
loc:@weight_6_bias*
validate_shape(
f
weight_6_bias/Adam_1/readIdentityweight_6_bias/Adam_1*
T0* 
_class
loc:@weight_6_bias

3weight_action_1_layer_1_bias/Adam/Initializer/zerosConst*
valueB<*    */
_class%
#!loc:@weight_action_1_layer_1_bias*
dtype0
˘
!weight_action_1_layer_1_bias/Adam
VariableV2*
shape:<*
shared_name */
_class%
#!loc:@weight_action_1_layer_1_bias*
dtype0*
	container 
í
(weight_action_1_layer_1_bias/Adam/AssignAssign!weight_action_1_layer_1_bias/Adam3weight_action_1_layer_1_bias/Adam/Initializer/zeros*/
_class%
#!loc:@weight_action_1_layer_1_bias*
validate_shape(*
use_locking(*
T0

&weight_action_1_layer_1_bias/Adam/readIdentity!weight_action_1_layer_1_bias/Adam*
T0*/
_class%
#!loc:@weight_action_1_layer_1_bias

5weight_action_1_layer_1_bias/Adam_1/Initializer/zerosConst*
valueB<*    */
_class%
#!loc:@weight_action_1_layer_1_bias*
dtype0
¤
#weight_action_1_layer_1_bias/Adam_1
VariableV2*
shape:<*
shared_name */
_class%
#!loc:@weight_action_1_layer_1_bias*
dtype0*
	container 
ó
*weight_action_1_layer_1_bias/Adam_1/AssignAssign#weight_action_1_layer_1_bias/Adam_15weight_action_1_layer_1_bias/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@weight_action_1_layer_1_bias*
validate_shape(

(weight_action_1_layer_1_bias/Adam_1/readIdentity#weight_action_1_layer_1_bias/Adam_1*
T0*/
_class%
#!loc:@weight_action_1_layer_1_bias

3weight_action_2_layer_1_bias/Adam/Initializer/zerosConst*
valueB<*    */
_class%
#!loc:@weight_action_2_layer_1_bias*
dtype0
˘
!weight_action_2_layer_1_bias/Adam
VariableV2*
shape:<*
shared_name */
_class%
#!loc:@weight_action_2_layer_1_bias*
dtype0*
	container 
í
(weight_action_2_layer_1_bias/Adam/AssignAssign!weight_action_2_layer_1_bias/Adam3weight_action_2_layer_1_bias/Adam/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_1_bias*
validate_shape(

&weight_action_2_layer_1_bias/Adam/readIdentity!weight_action_2_layer_1_bias/Adam*/
_class%
#!loc:@weight_action_2_layer_1_bias*
T0

5weight_action_2_layer_1_bias/Adam_1/Initializer/zerosConst*
valueB<*    */
_class%
#!loc:@weight_action_2_layer_1_bias*
dtype0
¤
#weight_action_2_layer_1_bias/Adam_1
VariableV2*
shape:<*
shared_name */
_class%
#!loc:@weight_action_2_layer_1_bias*
dtype0*
	container 
ó
*weight_action_2_layer_1_bias/Adam_1/AssignAssign#weight_action_2_layer_1_bias/Adam_15weight_action_2_layer_1_bias/Adam_1/Initializer/zeros*
T0*/
_class%
#!loc:@weight_action_2_layer_1_bias*
validate_shape(*
use_locking(

(weight_action_2_layer_1_bias/Adam_1/readIdentity#weight_action_2_layer_1_bias/Adam_1*
T0*/
_class%
#!loc:@weight_action_2_layer_1_bias

3weight_action_2_layer_2_bias/Adam/Initializer/zerosConst*
valueB*    */
_class%
#!loc:@weight_action_2_layer_2_bias*
dtype0
˘
!weight_action_2_layer_2_bias/Adam
VariableV2*
	container *
shape:*
shared_name */
_class%
#!loc:@weight_action_2_layer_2_bias*
dtype0
í
(weight_action_2_layer_2_bias/Adam/AssignAssign!weight_action_2_layer_2_bias/Adam3weight_action_2_layer_2_bias/Adam/Initializer/zeros*/
_class%
#!loc:@weight_action_2_layer_2_bias*
validate_shape(*
use_locking(*
T0

&weight_action_2_layer_2_bias/Adam/readIdentity!weight_action_2_layer_2_bias/Adam*
T0*/
_class%
#!loc:@weight_action_2_layer_2_bias

5weight_action_2_layer_2_bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    */
_class%
#!loc:@weight_action_2_layer_2_bias
¤
#weight_action_2_layer_2_bias/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name */
_class%
#!loc:@weight_action_2_layer_2_bias
ó
*weight_action_2_layer_2_bias/Adam_1/AssignAssign#weight_action_2_layer_2_bias/Adam_15weight_action_2_layer_2_bias/Adam_1/Initializer/zeros*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_2_bias*
validate_shape(

(weight_action_2_layer_2_bias/Adam_1/readIdentity#weight_action_2_layer_2_bias/Adam_1*
T0*/
_class%
#!loc:@weight_action_2_layer_2_bias

/weight_out_action_1_bias/Adam/Initializer/zerosConst*
valueB*    *+
_class!
loc:@weight_out_action_1_bias*
dtype0

weight_out_action_1_bias/Adam
VariableV2*
shape:*
shared_name *+
_class!
loc:@weight_out_action_1_bias*
dtype0*
	container 
Ý
$weight_out_action_1_bias/Adam/AssignAssignweight_out_action_1_bias/Adam/weight_out_action_1_bias/Adam/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@weight_out_action_1_bias*
validate_shape(

"weight_out_action_1_bias/Adam/readIdentityweight_out_action_1_bias/Adam*
T0*+
_class!
loc:@weight_out_action_1_bias

1weight_out_action_1_bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB*    *+
_class!
loc:@weight_out_action_1_bias

weight_out_action_1_bias/Adam_1
VariableV2*
shared_name *+
_class!
loc:@weight_out_action_1_bias*
dtype0*
	container *
shape:
ă
&weight_out_action_1_bias/Adam_1/AssignAssignweight_out_action_1_bias/Adam_11weight_out_action_1_bias/Adam_1/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@weight_out_action_1_bias*
validate_shape(

$weight_out_action_1_bias/Adam_1/readIdentityweight_out_action_1_bias/Adam_1*
T0*+
_class!
loc:@weight_out_action_1_bias

/weight_out_action_2_bias/Adam/Initializer/zerosConst*
valueB*    *+
_class!
loc:@weight_out_action_2_bias*
dtype0

weight_out_action_2_bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *+
_class!
loc:@weight_out_action_2_bias
Ý
$weight_out_action_2_bias/Adam/AssignAssignweight_out_action_2_bias/Adam/weight_out_action_2_bias/Adam/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@weight_out_action_2_bias*
validate_shape(

"weight_out_action_2_bias/Adam/readIdentityweight_out_action_2_bias/Adam*
T0*+
_class!
loc:@weight_out_action_2_bias

1weight_out_action_2_bias/Adam_1/Initializer/zerosConst*
valueB*    *+
_class!
loc:@weight_out_action_2_bias*
dtype0

weight_out_action_2_bias/Adam_1
VariableV2*
shape:*
shared_name *+
_class!
loc:@weight_out_action_2_bias*
dtype0*
	container 
ă
&weight_out_action_2_bias/Adam_1/AssignAssignweight_out_action_2_bias/Adam_11weight_out_action_2_bias/Adam_1/Initializer/zeros*
use_locking(*
T0*+
_class!
loc:@weight_out_action_2_bias*
validate_shape(

$weight_out_action_2_bias/Adam_1/readIdentityweight_out_action_2_bias/Adam_1*
T0*+
_class!
loc:@weight_out_action_2_bias

*weight_out_loc_bias/Adam/Initializer/zerosConst*
valueB*    *&
_class
loc:@weight_out_loc_bias*
dtype0

weight_out_loc_bias/Adam
VariableV2*
shared_name *&
_class
loc:@weight_out_loc_bias*
dtype0*
	container *
shape:
É
weight_out_loc_bias/Adam/AssignAssignweight_out_loc_bias/Adam*weight_out_loc_bias/Adam/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@weight_out_loc_bias*
validate_shape(
t
weight_out_loc_bias/Adam/readIdentityweight_out_loc_bias/Adam*&
_class
loc:@weight_out_loc_bias*
T0

,weight_out_loc_bias/Adam_1/Initializer/zerosConst*
valueB*    *&
_class
loc:@weight_out_loc_bias*
dtype0

weight_out_loc_bias/Adam_1
VariableV2*
shape:*
shared_name *&
_class
loc:@weight_out_loc_bias*
dtype0*
	container 
Ď
!weight_out_loc_bias/Adam_1/AssignAssignweight_out_loc_bias/Adam_1,weight_out_loc_bias/Adam_1/Initializer/zeros*
use_locking(*
T0*&
_class
loc:@weight_out_loc_bias*
validate_shape(
x
weight_out_loc_bias/Adam_1/readIdentityweight_out_loc_bias/Adam_1*
T0*&
_class
loc:@weight_out_loc_bias

,weight_out_phone_bias/Adam/Initializer/zerosConst*
valueB*    *(
_class
loc:@weight_out_phone_bias*
dtype0

weight_out_phone_bias/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *(
_class
loc:@weight_out_phone_bias
Ń
!weight_out_phone_bias/Adam/AssignAssignweight_out_phone_bias/Adam,weight_out_phone_bias/Adam/Initializer/zeros*
use_locking(*
T0*(
_class
loc:@weight_out_phone_bias*
validate_shape(
z
weight_out_phone_bias/Adam/readIdentityweight_out_phone_bias/Adam*
T0*(
_class
loc:@weight_out_phone_bias

.weight_out_phone_bias/Adam_1/Initializer/zerosConst*
valueB*    *(
_class
loc:@weight_out_phone_bias*
dtype0

weight_out_phone_bias/Adam_1
VariableV2*(
_class
loc:@weight_out_phone_bias*
dtype0*
	container *
shape:*
shared_name 
×
#weight_out_phone_bias/Adam_1/AssignAssignweight_out_phone_bias/Adam_1.weight_out_phone_bias/Adam_1/Initializer/zeros*(
_class
loc:@weight_out_phone_bias*
validate_shape(*
use_locking(*
T0
~
!weight_out_phone_bias/Adam_1/readIdentityweight_out_phone_bias/Adam_1*
T0*(
_class
loc:@weight_out_phone_bias
7

Adam/beta1Const*
valueB
 *fff?*
dtype0
7

Adam/beta2Const*
valueB
 *wž?*
dtype0
9
Adam/epsilonConst*
valueB
 *wĚ+2*
dtype0
°
Adam/update_weight_1/ApplyAdam	ApplyAdamweight_1weight_1/Adamweight_1/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@weight_1
˛
Adam/update_weight_2/ApplyAdam	ApplyAdamweight_2weight_2/Adamweight_2/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@weight_2*
use_nesterov( 
˛
Adam/update_weight_3/ApplyAdam	ApplyAdamweight_3weight_3/Adamweight_3/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_2_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@weight_3*
use_nesterov( 
˛
Adam/update_weight_4/ApplyAdam	ApplyAdamweight_4weight_4/Adamweight_4/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_3_grad/tuple/control_dependency_1*
T0*
_class
loc:@weight_4*
use_nesterov( *
use_locking( 
˛
Adam/update_weight_5/ApplyAdam	ApplyAdamweight_5weight_5/Adamweight_5/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_4_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@weight_5*
use_nesterov( 
˛
Adam/update_weight_6/ApplyAdam	ApplyAdamweight_6weight_6/Adamweight_6/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_5_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@weight_6*
use_nesterov( 
˛
Adam/update_weight_7/ApplyAdam	ApplyAdamweight_7weight_7/Adamweight_7/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_6_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@weight_7
ý
-Adam/update_weight_action_1_layer_1/ApplyAdam	ApplyAdamweight_action_1_layer_1weight_action_1_layer_1/Adamweight_action_1_layer_1/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_7_grad/tuple/control_dependency_1**
_class 
loc:@weight_action_1_layer_1*
use_nesterov( *
use_locking( *
T0
ý
-Adam/update_weight_action_2_layer_1/ApplyAdam	ApplyAdamweight_action_2_layer_1weight_action_2_layer_1/Adamweight_action_2_layer_1/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_8_grad/tuple/control_dependency_1*
use_locking( *
T0**
_class 
loc:@weight_action_2_layer_1*
use_nesterov( 
ý
-Adam/update_weight_action_2_layer_2/ApplyAdam	ApplyAdamweight_action_2_layer_2weight_action_2_layer_2/Adamweight_action_2_layer_2/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_9_grad/tuple/control_dependency_1*
use_locking( *
T0**
_class 
loc:@weight_action_2_layer_2*
use_nesterov( 
ę
)Adam/update_weight_out_action_1/ApplyAdam	ApplyAdamweight_out_action_1weight_out_action_1/Adamweight_out_action_1/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon3gradients/MatMul_10_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@weight_out_action_1*
use_nesterov( 
ę
)Adam/update_weight_out_action_2/ApplyAdam	ApplyAdamweight_out_action_2weight_out_action_2/Adamweight_out_action_2/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon3gradients/MatMul_11_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@weight_out_action_2*
use_nesterov( 
Ń
$Adam/update_weight_out_loc/ApplyAdam	ApplyAdamweight_out_locweight_out_loc/Adamweight_out_loc/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon3gradients/MatMul_12_grad/tuple/control_dependency_1*
T0*!
_class
loc:@weight_out_loc*
use_nesterov( *
use_locking( 
Ű
&Adam/update_weight_out_phone/ApplyAdam	ApplyAdamweight_out_phoneweight_out_phone/Adamweight_out_phone/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon3gradients/MatMul_13_grad/tuple/control_dependency_1*
use_locking( *
T0*#
_class
loc:@weight_out_phone*
use_nesterov( 
Š
#Adam/update_weight_1_bias/ApplyAdam	ApplyAdamweight_1_biasweight_1_bias/Adamweight_1_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_5*
use_locking( *
T0* 
_class
loc:@weight_1_bias*
use_nesterov( 
Š
#Adam/update_weight_2_bias/ApplyAdam	ApplyAdamweight_2_biasweight_2_bias/Adamweight_2_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_4* 
_class
loc:@weight_2_bias*
use_nesterov( *
use_locking( *
T0
Š
#Adam/update_weight_3_bias/ApplyAdam	ApplyAdamweight_3_biasweight_3_bias/Adamweight_3_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_3*
use_nesterov( *
use_locking( *
T0* 
_class
loc:@weight_3_bias
Š
#Adam/update_weight_4_bias/ApplyAdam	ApplyAdamweight_4_biasweight_4_bias/Adamweight_4_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_2*
use_locking( *
T0* 
_class
loc:@weight_4_bias*
use_nesterov( 
Š
#Adam/update_weight_5_bias/ApplyAdam	ApplyAdamweight_5_biasweight_5_bias/Adamweight_5_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_1*
use_locking( *
T0* 
_class
loc:@weight_5_bias*
use_nesterov( 
Č
#Adam/update_weight_6_bias/ApplyAdam	ApplyAdamweight_6_biasweight_6_bias/Adamweight_6_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_5_grad/tuple/control_dependency_1*
T0* 
_class
loc:@weight_6_bias*
use_nesterov( *
use_locking( 
´
 Adam/update_weight_7_1/ApplyAdam	ApplyAdamweight_7weight_7/Adamweight_7/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_6_grad/tuple/control_dependency_1*
T0*
_class
loc:@weight_7*
use_nesterov( *
use_locking( 

2Adam/update_weight_action_1_layer_1_bias/ApplyAdam	ApplyAdamweight_action_1_layer_1_bias!weight_action_1_layer_1_bias/Adam#weight_action_1_layer_1_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_7_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@weight_action_1_layer_1_bias*
use_nesterov( 

2Adam/update_weight_action_2_layer_1_bias/ApplyAdam	ApplyAdamweight_action_2_layer_1_bias!weight_action_2_layer_1_bias/Adam#weight_action_2_layer_1_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_8_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@weight_action_2_layer_1_bias*
use_nesterov( 

2Adam/update_weight_action_2_layer_2_bias/ApplyAdam	ApplyAdamweight_action_2_layer_2_bias!weight_action_2_layer_2_bias/Adam#weight_action_2_layer_2_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_9_grad/tuple/control_dependency_1*
use_locking( *
T0*/
_class%
#!loc:@weight_action_2_layer_2_bias*
use_nesterov( 

.Adam/update_weight_out_action_1_bias/ApplyAdam	ApplyAdamweight_out_action_1_biasweight_out_action_1_bias/Adamweight_out_action_1_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Add_10_grad/tuple/control_dependency_1*
use_locking( *
T0*+
_class!
loc:@weight_out_action_1_bias*
use_nesterov( 

.Adam/update_weight_out_action_2_bias/ApplyAdam	ApplyAdamweight_out_action_2_biasweight_out_action_2_bias/Adamweight_out_action_2_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Add_11_grad/tuple/control_dependency_1*
use_locking( *
T0*+
_class!
loc:@weight_out_action_2_bias*
use_nesterov( 
ç
)Adam/update_weight_out_loc_bias/ApplyAdam	ApplyAdamweight_out_loc_biasweight_out_loc_bias/Adamweight_out_loc_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Add_12_grad/tuple/control_dependency_1*
use_locking( *
T0*&
_class
loc:@weight_out_loc_bias*
use_nesterov( 
ń
+Adam/update_weight_out_phone_bias/ApplyAdam	ApplyAdamweight_out_phone_biasweight_out_phone_bias/Adamweight_out_phone_bias/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Add_13_grad/tuple/control_dependency_1*
use_locking( *
T0*(
_class
loc:@weight_out_phone_bias*
use_nesterov( 
Ô	
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_weight_1/ApplyAdam$^Adam/update_weight_1_bias/ApplyAdam^Adam/update_weight_2/ApplyAdam$^Adam/update_weight_2_bias/ApplyAdam^Adam/update_weight_3/ApplyAdam$^Adam/update_weight_3_bias/ApplyAdam^Adam/update_weight_4/ApplyAdam$^Adam/update_weight_4_bias/ApplyAdam^Adam/update_weight_5/ApplyAdam$^Adam/update_weight_5_bias/ApplyAdam^Adam/update_weight_6/ApplyAdam$^Adam/update_weight_6_bias/ApplyAdam^Adam/update_weight_7/ApplyAdam!^Adam/update_weight_7_1/ApplyAdam.^Adam/update_weight_action_1_layer_1/ApplyAdam3^Adam/update_weight_action_1_layer_1_bias/ApplyAdam.^Adam/update_weight_action_2_layer_1/ApplyAdam3^Adam/update_weight_action_2_layer_1_bias/ApplyAdam.^Adam/update_weight_action_2_layer_2/ApplyAdam3^Adam/update_weight_action_2_layer_2_bias/ApplyAdam*^Adam/update_weight_out_action_1/ApplyAdam/^Adam/update_weight_out_action_1_bias/ApplyAdam*^Adam/update_weight_out_action_2/ApplyAdam/^Adam/update_weight_out_action_2_bias/ApplyAdam%^Adam/update_weight_out_loc/ApplyAdam*^Adam/update_weight_out_loc_bias/ApplyAdam'^Adam/update_weight_out_phone/ApplyAdam,^Adam/update_weight_out_phone_bias/ApplyAdam*
T0*
_class
loc:@weight_1
{
Adam/AssignAssignbeta1_powerAdam/mul*
use_locking( *
T0*
_class
loc:@weight_1*
validate_shape(
Ö	

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_weight_1/ApplyAdam$^Adam/update_weight_1_bias/ApplyAdam^Adam/update_weight_2/ApplyAdam$^Adam/update_weight_2_bias/ApplyAdam^Adam/update_weight_3/ApplyAdam$^Adam/update_weight_3_bias/ApplyAdam^Adam/update_weight_4/ApplyAdam$^Adam/update_weight_4_bias/ApplyAdam^Adam/update_weight_5/ApplyAdam$^Adam/update_weight_5_bias/ApplyAdam^Adam/update_weight_6/ApplyAdam$^Adam/update_weight_6_bias/ApplyAdam^Adam/update_weight_7/ApplyAdam!^Adam/update_weight_7_1/ApplyAdam.^Adam/update_weight_action_1_layer_1/ApplyAdam3^Adam/update_weight_action_1_layer_1_bias/ApplyAdam.^Adam/update_weight_action_2_layer_1/ApplyAdam3^Adam/update_weight_action_2_layer_1_bias/ApplyAdam.^Adam/update_weight_action_2_layer_2/ApplyAdam3^Adam/update_weight_action_2_layer_2_bias/ApplyAdam*^Adam/update_weight_out_action_1/ApplyAdam/^Adam/update_weight_out_action_1_bias/ApplyAdam*^Adam/update_weight_out_action_2/ApplyAdam/^Adam/update_weight_out_action_2_bias/ApplyAdam%^Adam/update_weight_out_loc/ApplyAdam*^Adam/update_weight_out_loc_bias/ApplyAdam'^Adam/update_weight_out_phone/ApplyAdam,^Adam/update_weight_out_phone_bias/ApplyAdam*
T0*
_class
loc:@weight_1

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
use_locking( *
T0*
_class
loc:@weight_1
Ť	
AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_weight_1/ApplyAdam$^Adam/update_weight_1_bias/ApplyAdam^Adam/update_weight_2/ApplyAdam$^Adam/update_weight_2_bias/ApplyAdam^Adam/update_weight_3/ApplyAdam$^Adam/update_weight_3_bias/ApplyAdam^Adam/update_weight_4/ApplyAdam$^Adam/update_weight_4_bias/ApplyAdam^Adam/update_weight_5/ApplyAdam$^Adam/update_weight_5_bias/ApplyAdam^Adam/update_weight_6/ApplyAdam$^Adam/update_weight_6_bias/ApplyAdam^Adam/update_weight_7/ApplyAdam!^Adam/update_weight_7_1/ApplyAdam.^Adam/update_weight_action_1_layer_1/ApplyAdam3^Adam/update_weight_action_1_layer_1_bias/ApplyAdam.^Adam/update_weight_action_2_layer_1/ApplyAdam3^Adam/update_weight_action_2_layer_1_bias/ApplyAdam.^Adam/update_weight_action_2_layer_2/ApplyAdam3^Adam/update_weight_action_2_layer_2_bias/ApplyAdam*^Adam/update_weight_out_action_1/ApplyAdam/^Adam/update_weight_out_action_1_bias/ApplyAdam*^Adam/update_weight_out_action_2/ApplyAdam/^Adam/update_weight_out_action_2_bias/ApplyAdam%^Adam/update_weight_out_loc/ApplyAdam*^Adam/update_weight_out_loc_bias/ApplyAdam'^Adam/update_weight_out_phone/ApplyAdam,^Adam/update_weight_out_phone_bias/ApplyAdam
:
ArgMax/dimensionConst*
value	B :*
dtype0
V
ArgMaxArgMax
y_action_1ArgMax/dimension*

Tidx0*
T0*
output_type0	
<
ArgMax_1/dimensionConst*
value	B :*
dtype0
`
ArgMax_1ArgMaxpredict_action_1ArgMax_1/dimension*
T0*
output_type0	*

Tidx0
)
EqualEqualArgMaxArgMax_1*
T0	
<
ArgMax_2/dimensionConst*
value	B :*
dtype0
Z
ArgMax_2ArgMax
y_action_2ArgMax_2/dimension*
T0*
output_type0	*

Tidx0
<
ArgMax_3/dimensionConst*
value	B :*
dtype0
`
ArgMax_3ArgMaxpredict_action_2ArgMax_3/dimension*
output_type0	*

Tidx0*
T0
-
Equal_1EqualArgMax_2ArgMax_3*
T0	
<
ArgMax_4/dimensionConst*
value	B :*
dtype0
Z
ArgMax_4ArgMax
y_locationArgMax_4/dimension*

Tidx0*
T0*
output_type0	
<
ArgMax_5/dimensionConst*
value	B :*
dtype0
[
ArgMax_5ArgMaxpredict_locArgMax_5/dimension*
T0*
output_type0	*

Tidx0
-
Equal_2EqualArgMax_4ArgMax_5*
T0	
<
ArgMax_6/dimensionConst*
value	B :*
dtype0
W
ArgMax_6ArgMaxy_phoneArgMax_6/dimension*
T0*
output_type0	*

Tidx0
<
ArgMax_7/dimensionConst*
value	B :*
dtype0
]
ArgMax_7ArgMaxpredict_phoneArgMax_7/dimension*
output_type0	*

Tidx0*
T0
-
Equal_3EqualArgMax_6ArgMax_7*
T0	
;
CastCastEqual*

DstT0*

SrcT0
*
Truncate( 
5
Const_9Const*
valueB: *
dtype0
C
Mean_4MeanCastConst_9*
T0*

Tidx0*
	keep_dims( 
?
Cast_1CastEqual_1*

SrcT0
*
Truncate( *

DstT0
6
Const_10Const*
dtype0*
valueB: 
F
Mean_5MeanCast_1Const_10*
T0*

Tidx0*
	keep_dims( 
?
Cast_2CastEqual_2*

SrcT0
*
Truncate( *

DstT0
6
Const_11Const*
valueB: *
dtype0
F
Mean_6MeanCast_2Const_11*

Tidx0*
	keep_dims( *
T0
?
Cast_3CastEqual_3*

SrcT0
*
Truncate( *

DstT0
6
Const_12Const*
valueB: *
dtype0
F
Mean_7MeanCast_3Const_12*

Tidx0*
	keep_dims( *
T0
&
add_22AddMean_4Mean_5*
T0
&
add_23Addadd_22Mean_6*
T0
&
add_24Addadd_23Mean_7*
T0
6
	truediv/yConst*
valueB
 *  @*
dtype0
.
truedivRealDivadd_24	truediv/y*
T0
A
save/filename/inputConst*
valueB Bmodel*
dtype0
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
shape: *
dtype0

save/SaveV2/tensor_namesConst*Ő
valueËBČTBbeta1_powerBbeta2_powerBweight_1Bweight_1/AdamBweight_1/Adam_1Bweight_1_biasBweight_1_bias/AdamBweight_1_bias/Adam_1Bweight_2Bweight_2/AdamBweight_2/Adam_1Bweight_2_biasBweight_2_bias/AdamBweight_2_bias/Adam_1Bweight_3Bweight_3/AdamBweight_3/Adam_1Bweight_3_biasBweight_3_bias/AdamBweight_3_bias/Adam_1Bweight_4Bweight_4/AdamBweight_4/Adam_1Bweight_4_biasBweight_4_bias/AdamBweight_4_bias/Adam_1Bweight_5Bweight_5/AdamBweight_5/Adam_1Bweight_5_biasBweight_5_bias/AdamBweight_5_bias/Adam_1Bweight_6Bweight_6/AdamBweight_6/Adam_1Bweight_6_biasBweight_6_bias/AdamBweight_6_bias/Adam_1Bweight_7Bweight_7/AdamBweight_7/Adam_1Bweight_7_biasBweight_action_1_layer_1Bweight_action_1_layer_1/AdamBweight_action_1_layer_1/Adam_1Bweight_action_1_layer_1_biasB!weight_action_1_layer_1_bias/AdamB#weight_action_1_layer_1_bias/Adam_1Bweight_action_2_layer_1Bweight_action_2_layer_1/AdamBweight_action_2_layer_1/Adam_1Bweight_action_2_layer_1_biasB!weight_action_2_layer_1_bias/AdamB#weight_action_2_layer_1_bias/Adam_1Bweight_action_2_layer_2Bweight_action_2_layer_2/AdamBweight_action_2_layer_2/Adam_1Bweight_action_2_layer_2_biasB!weight_action_2_layer_2_bias/AdamB#weight_action_2_layer_2_bias/Adam_1Bweight_out_action_1Bweight_out_action_1/AdamBweight_out_action_1/Adam_1Bweight_out_action_1_biasBweight_out_action_1_bias/AdamBweight_out_action_1_bias/Adam_1Bweight_out_action_2Bweight_out_action_2/AdamBweight_out_action_2/Adam_1Bweight_out_action_2_biasBweight_out_action_2_bias/AdamBweight_out_action_2_bias/Adam_1Bweight_out_locBweight_out_loc/AdamBweight_out_loc/Adam_1Bweight_out_loc_biasBweight_out_loc_bias/AdamBweight_out_loc_bias/Adam_1Bweight_out_phoneBweight_out_phone/AdamBweight_out_phone/Adam_1Bweight_out_phone_biasBweight_out_phone_bias/AdamBweight_out_phone_bias/Adam_1*
dtype0
ň
save/SaveV2/shape_and_slicesConst*˝
valuełB°TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ý
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesbeta1_powerbeta2_powerweight_1weight_1/Adamweight_1/Adam_1weight_1_biasweight_1_bias/Adamweight_1_bias/Adam_1weight_2weight_2/Adamweight_2/Adam_1weight_2_biasweight_2_bias/Adamweight_2_bias/Adam_1weight_3weight_3/Adamweight_3/Adam_1weight_3_biasweight_3_bias/Adamweight_3_bias/Adam_1weight_4weight_4/Adamweight_4/Adam_1weight_4_biasweight_4_bias/Adamweight_4_bias/Adam_1weight_5weight_5/Adamweight_5/Adam_1weight_5_biasweight_5_bias/Adamweight_5_bias/Adam_1weight_6weight_6/Adamweight_6/Adam_1weight_6_biasweight_6_bias/Adamweight_6_bias/Adam_1weight_7weight_7/Adamweight_7/Adam_1weight_7_biasweight_action_1_layer_1weight_action_1_layer_1/Adamweight_action_1_layer_1/Adam_1weight_action_1_layer_1_bias!weight_action_1_layer_1_bias/Adam#weight_action_1_layer_1_bias/Adam_1weight_action_2_layer_1weight_action_2_layer_1/Adamweight_action_2_layer_1/Adam_1weight_action_2_layer_1_bias!weight_action_2_layer_1_bias/Adam#weight_action_2_layer_1_bias/Adam_1weight_action_2_layer_2weight_action_2_layer_2/Adamweight_action_2_layer_2/Adam_1weight_action_2_layer_2_bias!weight_action_2_layer_2_bias/Adam#weight_action_2_layer_2_bias/Adam_1weight_out_action_1weight_out_action_1/Adamweight_out_action_1/Adam_1weight_out_action_1_biasweight_out_action_1_bias/Adamweight_out_action_1_bias/Adam_1weight_out_action_2weight_out_action_2/Adamweight_out_action_2/Adam_1weight_out_action_2_biasweight_out_action_2_bias/Adamweight_out_action_2_bias/Adam_1weight_out_locweight_out_loc/Adamweight_out_loc/Adam_1weight_out_loc_biasweight_out_loc_bias/Adamweight_out_loc_bias/Adam_1weight_out_phoneweight_out_phone/Adamweight_out_phone/Adam_1weight_out_phone_biasweight_out_phone_bias/Adamweight_out_phone_bias/Adam_1*b
dtypesX
V2T
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const

save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*Ő
valueËBČTBbeta1_powerBbeta2_powerBweight_1Bweight_1/AdamBweight_1/Adam_1Bweight_1_biasBweight_1_bias/AdamBweight_1_bias/Adam_1Bweight_2Bweight_2/AdamBweight_2/Adam_1Bweight_2_biasBweight_2_bias/AdamBweight_2_bias/Adam_1Bweight_3Bweight_3/AdamBweight_3/Adam_1Bweight_3_biasBweight_3_bias/AdamBweight_3_bias/Adam_1Bweight_4Bweight_4/AdamBweight_4/Adam_1Bweight_4_biasBweight_4_bias/AdamBweight_4_bias/Adam_1Bweight_5Bweight_5/AdamBweight_5/Adam_1Bweight_5_biasBweight_5_bias/AdamBweight_5_bias/Adam_1Bweight_6Bweight_6/AdamBweight_6/Adam_1Bweight_6_biasBweight_6_bias/AdamBweight_6_bias/Adam_1Bweight_7Bweight_7/AdamBweight_7/Adam_1Bweight_7_biasBweight_action_1_layer_1Bweight_action_1_layer_1/AdamBweight_action_1_layer_1/Adam_1Bweight_action_1_layer_1_biasB!weight_action_1_layer_1_bias/AdamB#weight_action_1_layer_1_bias/Adam_1Bweight_action_2_layer_1Bweight_action_2_layer_1/AdamBweight_action_2_layer_1/Adam_1Bweight_action_2_layer_1_biasB!weight_action_2_layer_1_bias/AdamB#weight_action_2_layer_1_bias/Adam_1Bweight_action_2_layer_2Bweight_action_2_layer_2/AdamBweight_action_2_layer_2/Adam_1Bweight_action_2_layer_2_biasB!weight_action_2_layer_2_bias/AdamB#weight_action_2_layer_2_bias/Adam_1Bweight_out_action_1Bweight_out_action_1/AdamBweight_out_action_1/Adam_1Bweight_out_action_1_biasBweight_out_action_1_bias/AdamBweight_out_action_1_bias/Adam_1Bweight_out_action_2Bweight_out_action_2/AdamBweight_out_action_2/Adam_1Bweight_out_action_2_biasBweight_out_action_2_bias/AdamBweight_out_action_2_bias/Adam_1Bweight_out_locBweight_out_loc/AdamBweight_out_loc/Adam_1Bweight_out_loc_biasBweight_out_loc_bias/AdamBweight_out_loc_bias/Adam_1Bweight_out_phoneBweight_out_phone/AdamBweight_out_phone/Adam_1Bweight_out_phone_biasBweight_out_phone_bias/AdamBweight_out_phone_bias/Adam_1

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*˝
valuełB°TB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Ř
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*b
dtypesX
V2T

save/AssignAssignbeta1_powersave/RestoreV2*
use_locking(*
T0*
_class
loc:@weight_1*
validate_shape(

save/Assign_1Assignbeta2_powersave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@weight_1*
validate_shape(

save/Assign_2Assignweight_1save/RestoreV2:2*
T0*
_class
loc:@weight_1*
validate_shape(*
use_locking(

save/Assign_3Assignweight_1/Adamsave/RestoreV2:3*
T0*
_class
loc:@weight_1*
validate_shape(*
use_locking(

save/Assign_4Assignweight_1/Adam_1save/RestoreV2:4*
use_locking(*
T0*
_class
loc:@weight_1*
validate_shape(

save/Assign_5Assignweight_1_biassave/RestoreV2:5* 
_class
loc:@weight_1_bias*
validate_shape(*
use_locking(*
T0

save/Assign_6Assignweight_1_bias/Adamsave/RestoreV2:6*
validate_shape(*
use_locking(*
T0* 
_class
loc:@weight_1_bias

save/Assign_7Assignweight_1_bias/Adam_1save/RestoreV2:7*
use_locking(*
T0* 
_class
loc:@weight_1_bias*
validate_shape(

save/Assign_8Assignweight_2save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@weight_2*
validate_shape(

save/Assign_9Assignweight_2/Adamsave/RestoreV2:9*
use_locking(*
T0*
_class
loc:@weight_2*
validate_shape(

save/Assign_10Assignweight_2/Adam_1save/RestoreV2:10*
_class
loc:@weight_2*
validate_shape(*
use_locking(*
T0

save/Assign_11Assignweight_2_biassave/RestoreV2:11*
use_locking(*
T0* 
_class
loc:@weight_2_bias*
validate_shape(

save/Assign_12Assignweight_2_bias/Adamsave/RestoreV2:12*
use_locking(*
T0* 
_class
loc:@weight_2_bias*
validate_shape(

save/Assign_13Assignweight_2_bias/Adam_1save/RestoreV2:13* 
_class
loc:@weight_2_bias*
validate_shape(*
use_locking(*
T0

save/Assign_14Assignweight_3save/RestoreV2:14*
use_locking(*
T0*
_class
loc:@weight_3*
validate_shape(

save/Assign_15Assignweight_3/Adamsave/RestoreV2:15*
validate_shape(*
use_locking(*
T0*
_class
loc:@weight_3

save/Assign_16Assignweight_3/Adam_1save/RestoreV2:16*
use_locking(*
T0*
_class
loc:@weight_3*
validate_shape(

save/Assign_17Assignweight_3_biassave/RestoreV2:17*
use_locking(*
T0* 
_class
loc:@weight_3_bias*
validate_shape(

save/Assign_18Assignweight_3_bias/Adamsave/RestoreV2:18*
validate_shape(*
use_locking(*
T0* 
_class
loc:@weight_3_bias

save/Assign_19Assignweight_3_bias/Adam_1save/RestoreV2:19* 
_class
loc:@weight_3_bias*
validate_shape(*
use_locking(*
T0

save/Assign_20Assignweight_4save/RestoreV2:20*
use_locking(*
T0*
_class
loc:@weight_4*
validate_shape(

save/Assign_21Assignweight_4/Adamsave/RestoreV2:21*
use_locking(*
T0*
_class
loc:@weight_4*
validate_shape(

save/Assign_22Assignweight_4/Adam_1save/RestoreV2:22*
use_locking(*
T0*
_class
loc:@weight_4*
validate_shape(

save/Assign_23Assignweight_4_biassave/RestoreV2:23*
use_locking(*
T0* 
_class
loc:@weight_4_bias*
validate_shape(

save/Assign_24Assignweight_4_bias/Adamsave/RestoreV2:24*
use_locking(*
T0* 
_class
loc:@weight_4_bias*
validate_shape(

save/Assign_25Assignweight_4_bias/Adam_1save/RestoreV2:25*
use_locking(*
T0* 
_class
loc:@weight_4_bias*
validate_shape(

save/Assign_26Assignweight_5save/RestoreV2:26*
_class
loc:@weight_5*
validate_shape(*
use_locking(*
T0

save/Assign_27Assignweight_5/Adamsave/RestoreV2:27*
validate_shape(*
use_locking(*
T0*
_class
loc:@weight_5

save/Assign_28Assignweight_5/Adam_1save/RestoreV2:28*
T0*
_class
loc:@weight_5*
validate_shape(*
use_locking(

save/Assign_29Assignweight_5_biassave/RestoreV2:29*
use_locking(*
T0* 
_class
loc:@weight_5_bias*
validate_shape(

save/Assign_30Assignweight_5_bias/Adamsave/RestoreV2:30*
use_locking(*
T0* 
_class
loc:@weight_5_bias*
validate_shape(

save/Assign_31Assignweight_5_bias/Adam_1save/RestoreV2:31*
use_locking(*
T0* 
_class
loc:@weight_5_bias*
validate_shape(

save/Assign_32Assignweight_6save/RestoreV2:32*
_class
loc:@weight_6*
validate_shape(*
use_locking(*
T0

save/Assign_33Assignweight_6/Adamsave/RestoreV2:33*
use_locking(*
T0*
_class
loc:@weight_6*
validate_shape(

save/Assign_34Assignweight_6/Adam_1save/RestoreV2:34*
use_locking(*
T0*
_class
loc:@weight_6*
validate_shape(

save/Assign_35Assignweight_6_biassave/RestoreV2:35*
T0* 
_class
loc:@weight_6_bias*
validate_shape(*
use_locking(

save/Assign_36Assignweight_6_bias/Adamsave/RestoreV2:36*
use_locking(*
T0* 
_class
loc:@weight_6_bias*
validate_shape(

save/Assign_37Assignweight_6_bias/Adam_1save/RestoreV2:37*
use_locking(*
T0* 
_class
loc:@weight_6_bias*
validate_shape(

save/Assign_38Assignweight_7save/RestoreV2:38*
_class
loc:@weight_7*
validate_shape(*
use_locking(*
T0

save/Assign_39Assignweight_7/Adamsave/RestoreV2:39*
validate_shape(*
use_locking(*
T0*
_class
loc:@weight_7

save/Assign_40Assignweight_7/Adam_1save/RestoreV2:40*
T0*
_class
loc:@weight_7*
validate_shape(*
use_locking(

save/Assign_41Assignweight_7_biassave/RestoreV2:41*
T0* 
_class
loc:@weight_7_bias*
validate_shape(*
use_locking(
˘
save/Assign_42Assignweight_action_1_layer_1save/RestoreV2:42*
T0**
_class 
loc:@weight_action_1_layer_1*
validate_shape(*
use_locking(
§
save/Assign_43Assignweight_action_1_layer_1/Adamsave/RestoreV2:43*
use_locking(*
T0**
_class 
loc:@weight_action_1_layer_1*
validate_shape(
Š
save/Assign_44Assignweight_action_1_layer_1/Adam_1save/RestoreV2:44*
use_locking(*
T0**
_class 
loc:@weight_action_1_layer_1*
validate_shape(
Ź
save/Assign_45Assignweight_action_1_layer_1_biassave/RestoreV2:45*/
_class%
#!loc:@weight_action_1_layer_1_bias*
validate_shape(*
use_locking(*
T0
ą
save/Assign_46Assign!weight_action_1_layer_1_bias/Adamsave/RestoreV2:46*
use_locking(*
T0*/
_class%
#!loc:@weight_action_1_layer_1_bias*
validate_shape(
ł
save/Assign_47Assign#weight_action_1_layer_1_bias/Adam_1save/RestoreV2:47*
use_locking(*
T0*/
_class%
#!loc:@weight_action_1_layer_1_bias*
validate_shape(
˘
save/Assign_48Assignweight_action_2_layer_1save/RestoreV2:48*
use_locking(*
T0**
_class 
loc:@weight_action_2_layer_1*
validate_shape(
§
save/Assign_49Assignweight_action_2_layer_1/Adamsave/RestoreV2:49*
use_locking(*
T0**
_class 
loc:@weight_action_2_layer_1*
validate_shape(
Š
save/Assign_50Assignweight_action_2_layer_1/Adam_1save/RestoreV2:50*
use_locking(*
T0**
_class 
loc:@weight_action_2_layer_1*
validate_shape(
Ź
save/Assign_51Assignweight_action_2_layer_1_biassave/RestoreV2:51*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_1_bias*
validate_shape(
ą
save/Assign_52Assign!weight_action_2_layer_1_bias/Adamsave/RestoreV2:52*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_1_bias*
validate_shape(
ł
save/Assign_53Assign#weight_action_2_layer_1_bias/Adam_1save/RestoreV2:53*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_1_bias*
validate_shape(
˘
save/Assign_54Assignweight_action_2_layer_2save/RestoreV2:54*
use_locking(*
T0**
_class 
loc:@weight_action_2_layer_2*
validate_shape(
§
save/Assign_55Assignweight_action_2_layer_2/Adamsave/RestoreV2:55*
use_locking(*
T0**
_class 
loc:@weight_action_2_layer_2*
validate_shape(
Š
save/Assign_56Assignweight_action_2_layer_2/Adam_1save/RestoreV2:56**
_class 
loc:@weight_action_2_layer_2*
validate_shape(*
use_locking(*
T0
Ź
save/Assign_57Assignweight_action_2_layer_2_biassave/RestoreV2:57*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_2_bias*
validate_shape(
ą
save/Assign_58Assign!weight_action_2_layer_2_bias/Adamsave/RestoreV2:58*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_2_bias*
validate_shape(
ł
save/Assign_59Assign#weight_action_2_layer_2_bias/Adam_1save/RestoreV2:59*
use_locking(*
T0*/
_class%
#!loc:@weight_action_2_layer_2_bias*
validate_shape(

save/Assign_60Assignweight_out_action_1save/RestoreV2:60*
validate_shape(*
use_locking(*
T0*&
_class
loc:@weight_out_action_1

save/Assign_61Assignweight_out_action_1/Adamsave/RestoreV2:61*&
_class
loc:@weight_out_action_1*
validate_shape(*
use_locking(*
T0
Ą
save/Assign_62Assignweight_out_action_1/Adam_1save/RestoreV2:62*
validate_shape(*
use_locking(*
T0*&
_class
loc:@weight_out_action_1
¤
save/Assign_63Assignweight_out_action_1_biassave/RestoreV2:63*
use_locking(*
T0*+
_class!
loc:@weight_out_action_1_bias*
validate_shape(
Š
save/Assign_64Assignweight_out_action_1_bias/Adamsave/RestoreV2:64*
use_locking(*
T0*+
_class!
loc:@weight_out_action_1_bias*
validate_shape(
Ť
save/Assign_65Assignweight_out_action_1_bias/Adam_1save/RestoreV2:65*
T0*+
_class!
loc:@weight_out_action_1_bias*
validate_shape(*
use_locking(

save/Assign_66Assignweight_out_action_2save/RestoreV2:66*
use_locking(*
T0*&
_class
loc:@weight_out_action_2*
validate_shape(

save/Assign_67Assignweight_out_action_2/Adamsave/RestoreV2:67*
use_locking(*
T0*&
_class
loc:@weight_out_action_2*
validate_shape(
Ą
save/Assign_68Assignweight_out_action_2/Adam_1save/RestoreV2:68*
validate_shape(*
use_locking(*
T0*&
_class
loc:@weight_out_action_2
¤
save/Assign_69Assignweight_out_action_2_biassave/RestoreV2:69*
validate_shape(*
use_locking(*
T0*+
_class!
loc:@weight_out_action_2_bias
Š
save/Assign_70Assignweight_out_action_2_bias/Adamsave/RestoreV2:70*
use_locking(*
T0*+
_class!
loc:@weight_out_action_2_bias*
validate_shape(
Ť
save/Assign_71Assignweight_out_action_2_bias/Adam_1save/RestoreV2:71*
use_locking(*
T0*+
_class!
loc:@weight_out_action_2_bias*
validate_shape(

save/Assign_72Assignweight_out_locsave/RestoreV2:72*
use_locking(*
T0*!
_class
loc:@weight_out_loc*
validate_shape(

save/Assign_73Assignweight_out_loc/Adamsave/RestoreV2:73*
T0*!
_class
loc:@weight_out_loc*
validate_shape(*
use_locking(

save/Assign_74Assignweight_out_loc/Adam_1save/RestoreV2:74*
use_locking(*
T0*!
_class
loc:@weight_out_loc*
validate_shape(

save/Assign_75Assignweight_out_loc_biassave/RestoreV2:75*
use_locking(*
T0*&
_class
loc:@weight_out_loc_bias*
validate_shape(

save/Assign_76Assignweight_out_loc_bias/Adamsave/RestoreV2:76*
use_locking(*
T0*&
_class
loc:@weight_out_loc_bias*
validate_shape(
Ą
save/Assign_77Assignweight_out_loc_bias/Adam_1save/RestoreV2:77*
use_locking(*
T0*&
_class
loc:@weight_out_loc_bias*
validate_shape(

save/Assign_78Assignweight_out_phonesave/RestoreV2:78*#
_class
loc:@weight_out_phone*
validate_shape(*
use_locking(*
T0

save/Assign_79Assignweight_out_phone/Adamsave/RestoreV2:79*
use_locking(*
T0*#
_class
loc:@weight_out_phone*
validate_shape(

save/Assign_80Assignweight_out_phone/Adam_1save/RestoreV2:80*
validate_shape(*
use_locking(*
T0*#
_class
loc:@weight_out_phone

save/Assign_81Assignweight_out_phone_biassave/RestoreV2:81*
use_locking(*
T0*(
_class
loc:@weight_out_phone_bias*
validate_shape(
Ł
save/Assign_82Assignweight_out_phone_bias/Adamsave/RestoreV2:82*
use_locking(*
T0*(
_class
loc:@weight_out_phone_bias*
validate_shape(
Ľ
save/Assign_83Assignweight_out_phone_bias/Adam_1save/RestoreV2:83*
use_locking(*
T0*(
_class
loc:@weight_out_phone_bias*
validate_shape(
 
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_68^save/Assign_69^save/Assign_7^save/Assign_70^save/Assign_71^save/Assign_72^save/Assign_73^save/Assign_74^save/Assign_75^save/Assign_76^save/Assign_77^save/Assign_78^save/Assign_79^save/Assign_8^save/Assign_80^save/Assign_81^save/Assign_82^save/Assign_83^save/Assign_9
ě
initNoOp^beta1_power/Assign^beta2_power/Assign^weight_1/Adam/Assign^weight_1/Adam_1/Assign^weight_1/Assign^weight_1_bias/Adam/Assign^weight_1_bias/Adam_1/Assign^weight_1_bias/Assign^weight_2/Adam/Assign^weight_2/Adam_1/Assign^weight_2/Assign^weight_2_bias/Adam/Assign^weight_2_bias/Adam_1/Assign^weight_2_bias/Assign^weight_3/Adam/Assign^weight_3/Adam_1/Assign^weight_3/Assign^weight_3_bias/Adam/Assign^weight_3_bias/Adam_1/Assign^weight_3_bias/Assign^weight_4/Adam/Assign^weight_4/Adam_1/Assign^weight_4/Assign^weight_4_bias/Adam/Assign^weight_4_bias/Adam_1/Assign^weight_4_bias/Assign^weight_5/Adam/Assign^weight_5/Adam_1/Assign^weight_5/Assign^weight_5_bias/Adam/Assign^weight_5_bias/Adam_1/Assign^weight_5_bias/Assign^weight_6/Adam/Assign^weight_6/Adam_1/Assign^weight_6/Assign^weight_6_bias/Adam/Assign^weight_6_bias/Adam_1/Assign^weight_6_bias/Assign^weight_7/Adam/Assign^weight_7/Adam_1/Assign^weight_7/Assign^weight_7_bias/Assign$^weight_action_1_layer_1/Adam/Assign&^weight_action_1_layer_1/Adam_1/Assign^weight_action_1_layer_1/Assign)^weight_action_1_layer_1_bias/Adam/Assign+^weight_action_1_layer_1_bias/Adam_1/Assign$^weight_action_1_layer_1_bias/Assign$^weight_action_2_layer_1/Adam/Assign&^weight_action_2_layer_1/Adam_1/Assign^weight_action_2_layer_1/Assign)^weight_action_2_layer_1_bias/Adam/Assign+^weight_action_2_layer_1_bias/Adam_1/Assign$^weight_action_2_layer_1_bias/Assign$^weight_action_2_layer_2/Adam/Assign&^weight_action_2_layer_2/Adam_1/Assign^weight_action_2_layer_2/Assign)^weight_action_2_layer_2_bias/Adam/Assign+^weight_action_2_layer_2_bias/Adam_1/Assign$^weight_action_2_layer_2_bias/Assign ^weight_out_action_1/Adam/Assign"^weight_out_action_1/Adam_1/Assign^weight_out_action_1/Assign%^weight_out_action_1_bias/Adam/Assign'^weight_out_action_1_bias/Adam_1/Assign ^weight_out_action_1_bias/Assign ^weight_out_action_2/Adam/Assign"^weight_out_action_2/Adam_1/Assign^weight_out_action_2/Assign%^weight_out_action_2_bias/Adam/Assign'^weight_out_action_2_bias/Adam_1/Assign ^weight_out_action_2_bias/Assign^weight_out_loc/Adam/Assign^weight_out_loc/Adam_1/Assign^weight_out_loc/Assign ^weight_out_loc_bias/Adam/Assign"^weight_out_loc_bias/Adam_1/Assign^weight_out_loc_bias/Assign^weight_out_phone/Adam/Assign^weight_out_phone/Adam_1/Assign^weight_out_phone/Assign"^weight_out_phone_bias/Adam/Assign$^weight_out_phone_bias/Adam_1/Assign^weight_out_phone_bias/Assign"&
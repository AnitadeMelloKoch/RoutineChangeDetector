
<
xPlaceholder*
dtype0*
shape:˙˙˙˙˙˙˙˙˙
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
valueB"  ˙   *
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
"random_normal/RandomStandardNormalRandomStandardNormalrandom_normal/shape*
T0*
dtype0*
seed2 *

seed 
[
random_normal/mulMul"random_normal/RandomStandardNormalrandom_normal/stddev*
T0
D
random_normalAddrandom_normal/mulrandom_normal/mean*
T0
^
weight_1
VariableV2*
dtype0*
	container *
shape:
˙*
shared_name 

weight_1/AssignAssignweight_1random_normal*
_class
loc:@weight_1*
validate_shape(*
use_locking(*
T0
I
weight_1/readIdentityweight_1*
T0*
_class
loc:@weight_1
D
random_normal_1/shapeConst*
dtype0*
valueB:˙
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
shape:˙*
shared_name 

weight_1_bias/AssignAssignweight_1_biasrandom_normal_1*
use_locking(*
T0* 
_class
loc:@weight_1_bias*
validate_shape(
X
weight_1_bias/readIdentityweight_1_bias*
T0* 
_class
loc:@weight_1_bias
J
random_normal_2/shapeConst*
valueB"˙   ×   *
dtype0
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
$random_normal_2/RandomStandardNormalRandomStandardNormalrandom_normal_2/shape*
dtype0*
seed2 *

seed *
T0
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
˙×*
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
weight_2/readIdentityweight_2*
_class
loc:@weight_2*
T0
D
random_normal_3/shapeConst*
valueB:×*
dtype0
A
random_normal_3/meanConst*
valueB
 *    *
dtype0
C
random_normal_3/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_3/RandomStandardNormalRandomStandardNormalrandom_normal_3/shape*
dtype0*
seed2 *

seed *
T0
a
random_normal_3/mulMul$random_normal_3/RandomStandardNormalrandom_normal_3/stddev*
T0
J
random_normal_3Addrandom_normal_3/mulrandom_normal_3/mean*
T0
Y
Variable
VariableV2*
shared_name *
dtype0*
	container *
shape:×

Variable/AssignAssignVariablerandom_normal_3*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0
I
Variable/readIdentityVariable*
T0*
_class
loc:@Variable
J
random_normal_4/shapeConst*
dtype0*
valueB"×   ´   
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
$random_normal_4/RandomStandardNormalRandomStandardNormalrandom_normal_4/shape*
dtype0*
seed2 *

seed *
T0
a
random_normal_4/mulMul$random_normal_4/RandomStandardNormalrandom_normal_4/stddev*
T0
J
random_normal_4Addrandom_normal_4/mulrandom_normal_4/mean*
T0
`

Variable_1
VariableV2*
shared_name *
dtype0*
	container *
shape:
×´

Variable_1/AssignAssign
Variable_1random_normal_4*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_1
O
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0
D
random_normal_5/shapeConst*
dtype0*
valueB:´
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
$random_normal_5/RandomStandardNormalRandomStandardNormalrandom_normal_5/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_5/mulMul$random_normal_5/RandomStandardNormalrandom_normal_5/stddev*
T0
J
random_normal_5Addrandom_normal_5/mulrandom_normal_5/mean*
T0
[

Variable_2
VariableV2*
dtype0*
	container *
shape:´*
shared_name 

Variable_2/AssignAssign
Variable_2random_normal_5*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(
O
Variable_2/readIdentity
Variable_2*
T0*
_class
loc:@Variable_2
J
random_normal_6/shapeConst*
valueB"´      *
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
seed2 *

seed *
T0*
dtype0
a
random_normal_6/mulMul$random_normal_6/RandomStandardNormalrandom_normal_6/stddev*
T0
J
random_normal_6Addrandom_normal_6/mulrandom_normal_6/mean*
T0
`

Variable_3
VariableV2*
dtype0*
	container *
shape:
´*
shared_name 

Variable_3/AssignAssign
Variable_3random_normal_6*
_class
loc:@Variable_3*
validate_shape(*
use_locking(*
T0
O
Variable_3/readIdentity
Variable_3*
T0*
_class
loc:@Variable_3
D
random_normal_7/shapeConst*
dtype0*
valueB:
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
$random_normal_7/RandomStandardNormalRandomStandardNormalrandom_normal_7/shape*
T0*
dtype0*
seed2 *

seed 
a
random_normal_7/mulMul$random_normal_7/RandomStandardNormalrandom_normal_7/stddev*
T0
J
random_normal_7Addrandom_normal_7/mulrandom_normal_7/mean*
T0
[

Variable_4
VariableV2*
shared_name *
dtype0*
	container *
shape:

Variable_4/AssignAssign
Variable_4random_normal_7*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(
O
Variable_4/readIdentity
Variable_4*
T0*
_class
loc:@Variable_4
J
random_normal_8/shapeConst*
valueB"   n   *
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
_

Variable_5
VariableV2*
	container *
shape:	n*
shared_name *
dtype0

Variable_5/AssignAssign
Variable_5random_normal_8*
_class
loc:@Variable_5*
validate_shape(*
use_locking(*
T0
O
Variable_5/readIdentity
Variable_5*
T0*
_class
loc:@Variable_5
C
random_normal_9/shapeConst*
valueB:n*
dtype0
A
random_normal_9/meanConst*
dtype0*
valueB
 *    
C
random_normal_9/stddevConst*
valueB
 *  ?*
dtype0

$random_normal_9/RandomStandardNormalRandomStandardNormalrandom_normal_9/shape*

seed *
T0*
dtype0*
seed2 
a
random_normal_9/mulMul$random_normal_9/RandomStandardNormalrandom_normal_9/stddev*
T0
J
random_normal_9Addrandom_normal_9/mulrandom_normal_9/mean*
T0
Z

Variable_6
VariableV2*
shape:n*
shared_name *
dtype0*
	container 

Variable_6/AssignAssign
Variable_6random_normal_9*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(
O
Variable_6/readIdentity
Variable_6*
T0*
_class
loc:@Variable_6
K
random_normal_10/shapeConst*
dtype0*
valueB"n   Z   
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

seed *
T0*
dtype0*
seed2 
d
random_normal_10/mulMul%random_normal_10/RandomStandardNormalrandom_normal_10/stddev*
T0
M
random_normal_10Addrandom_normal_10/mulrandom_normal_10/mean*
T0
^

Variable_7
VariableV2*
	container *
shape
:nZ*
shared_name *
dtype0

Variable_7/AssignAssign
Variable_7random_normal_10*
_class
loc:@Variable_7*
validate_shape(*
use_locking(*
T0
O
Variable_7/readIdentity
Variable_7*
T0*
_class
loc:@Variable_7
D
random_normal_11/shapeConst*
dtype0*
valueB:Z
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
dtype0*
seed2 *

seed *
T0
d
random_normal_11/mulMul%random_normal_11/RandomStandardNormalrandom_normal_11/stddev*
T0
M
random_normal_11Addrandom_normal_11/mulrandom_normal_11/mean*
T0
Z

Variable_8
VariableV2*
dtype0*
	container *
shape:Z*
shared_name 

Variable_8/AssignAssign
Variable_8random_normal_11*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(
O
Variable_8/readIdentity
Variable_8*
T0*
_class
loc:@Variable_8
K
random_normal_12/shapeConst*
valueB"n   Z   *
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
dtype0*
seed2 *

seed *
T0
d
random_normal_12/mulMul%random_normal_12/RandomStandardNormalrandom_normal_12/stddev*
T0
M
random_normal_12Addrandom_normal_12/mulrandom_normal_12/mean*
T0
^

Variable_9
VariableV2*
shared_name *
dtype0*
	container *
shape
:nZ

Variable_9/AssignAssign
Variable_9random_normal_12*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_9
O
Variable_9/readIdentity
Variable_9*
T0*
_class
loc:@Variable_9
D
random_normal_13/shapeConst*
valueB:Z*
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

seed *
T0*
dtype0*
seed2 
d
random_normal_13/mulMul%random_normal_13/RandomStandardNormalrandom_normal_13/stddev*
T0
M
random_normal_13Addrandom_normal_13/mulrandom_normal_13/mean*
T0
[
Variable_10
VariableV2*
dtype0*
	container *
shape:Z*
shared_name 

Variable_10/AssignAssignVariable_10random_normal_13*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(
R
Variable_10/readIdentityVariable_10*
T0*
_class
loc:@Variable_10
K
random_normal_14/shapeConst*
valueB"Z      *
dtype0
B
random_normal_14/meanConst*
valueB
 *    *
dtype0
D
random_normal_14/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_14/RandomStandardNormalRandomStandardNormalrandom_normal_14/shape*

seed *
T0*
dtype0*
seed2 
d
random_normal_14/mulMul%random_normal_14/RandomStandardNormalrandom_normal_14/stddev*
T0
M
random_normal_14Addrandom_normal_14/mulrandom_normal_14/mean*
T0
_
Variable_11
VariableV2*
dtype0*
	container *
shape
:Z*
shared_name 

Variable_11/AssignAssignVariable_11random_normal_14*
T0*
_class
loc:@Variable_11*
validate_shape(*
use_locking(
R
Variable_11/readIdentityVariable_11*
T0*
_class
loc:@Variable_11
D
random_normal_15/shapeConst*
valueB:*
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
dtype0*
seed2 *

seed *
T0
d
random_normal_15/mulMul%random_normal_15/RandomStandardNormalrandom_normal_15/stddev*
T0
M
random_normal_15Addrandom_normal_15/mulrandom_normal_15/mean*
T0
[
Variable_12
VariableV2*
	container *
shape:*
shared_name *
dtype0

Variable_12/AssignAssignVariable_12random_normal_15*
_class
loc:@Variable_12*
validate_shape(*
use_locking(*
T0
R
Variable_12/readIdentityVariable_12*
T0*
_class
loc:@Variable_12
K
random_normal_16/shapeConst*
valueB"Z      *
dtype0
B
random_normal_16/meanConst*
valueB
 *    *
dtype0
D
random_normal_16/stddevConst*
valueB
 *  ?*
dtype0

%random_normal_16/RandomStandardNormalRandomStandardNormalrandom_normal_16/shape*

seed *
T0*
dtype0*
seed2 
d
random_normal_16/mulMul%random_normal_16/RandomStandardNormalrandom_normal_16/stddev*
T0
M
random_normal_16Addrandom_normal_16/mulrandom_normal_16/mean*
T0
_
Variable_13
VariableV2*
dtype0*
	container *
shape
:Z*
shared_name 

Variable_13/AssignAssignVariable_13random_normal_16*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(
R
Variable_13/readIdentityVariable_13*
_class
loc:@Variable_13*
T0
D
random_normal_17/shapeConst*
valueB:*
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
dtype0*
seed2 *

seed *
T0
d
random_normal_17/mulMul%random_normal_17/RandomStandardNormalrandom_normal_17/stddev*
T0
M
random_normal_17Addrandom_normal_17/mulrandom_normal_17/mean*
T0
[
Variable_14
VariableV2*
shape:*
shared_name *
dtype0*
	container 

Variable_14/AssignAssignVariable_14random_normal_17*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(
R
Variable_14/readIdentityVariable_14*
T0*
_class
loc:@Variable_14
K
random_normal_18/shapeConst*
dtype0*
valueB"n      
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
%random_normal_18/RandomStandardNormalRandomStandardNormalrandom_normal_18/shape*
T0*
dtype0*
seed2 *

seed 
d
random_normal_18/mulMul%random_normal_18/RandomStandardNormalrandom_normal_18/stddev*
T0
M
random_normal_18Addrandom_normal_18/mulrandom_normal_18/mean*
T0
_
Variable_15
VariableV2*
	container *
shape
:n*
shared_name *
dtype0

Variable_15/AssignAssignVariable_15random_normal_18*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(
R
Variable_15/readIdentityVariable_15*
T0*
_class
loc:@Variable_15
D
random_normal_19/shapeConst*
dtype0*
valueB:
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
seed2 *

seed *
T0*
dtype0
d
random_normal_19/mulMul%random_normal_19/RandomStandardNormalrandom_normal_19/stddev*
T0
M
random_normal_19Addrandom_normal_19/mulrandom_normal_19/mean*
T0
[
Variable_16
VariableV2*
dtype0*
	container *
shape:*
shared_name 

Variable_16/AssignAssignVariable_16random_normal_19*
_class
loc:@Variable_16*
validate_shape(*
use_locking(*
T0
R
Variable_16/readIdentityVariable_16*
T0*
_class
loc:@Variable_16
K
random_normal_20/shapeConst*
valueB"n      *
dtype0
B
random_normal_20/meanConst*
valueB
 *    *
dtype0
D
random_normal_20/stddevConst*
dtype0*
valueB
 *  ?
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
_
Variable_17
VariableV2*
shared_name *
dtype0*
	container *
shape
:n

Variable_17/AssignAssignVariable_17random_normal_20*
T0*
_class
loc:@Variable_17*
validate_shape(*
use_locking(
R
Variable_17/readIdentityVariable_17*
T0*
_class
loc:@Variable_17
D
random_normal_21/shapeConst*
valueB:*
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

seed *
T0*
dtype0*
seed2 
d
random_normal_21/mulMul%random_normal_21/RandomStandardNormalrandom_normal_21/stddev*
T0
M
random_normal_21Addrandom_normal_21/mulrandom_normal_21/mean*
T0
[
Variable_18
VariableV2*
	container *
shape:*
shared_name *
dtype0

Variable_18/AssignAssignVariable_18random_normal_21*
_class
loc:@Variable_18*
validate_shape(*
use_locking(*
T0
R
Variable_18/readIdentityVariable_18*
T0*
_class
loc:@Variable_18
Q
MatMulMatMulxweight_1/read*
T0*
transpose_a( *
transpose_b( 
/
AddAddMatMulweight_1_bias/read*
T0
 
SigmoidSigmoidAdd*
T0
Y
MatMul_1MatMulSigmoidweight_2/read*
transpose_b( *
T0*
transpose_a( 
.
Add_1AddMatMul_1Variable/read*
T0
$
	Sigmoid_1SigmoidAdd_1*
T0
]
MatMul_2MatMul	Sigmoid_1Variable_1/read*
T0*
transpose_a( *
transpose_b( 
0
Add_2AddMatMul_2Variable_2/read*
T0
$
	Sigmoid_2SigmoidAdd_2*
T0
]
MatMul_3MatMul	Sigmoid_2Variable_3/read*
transpose_b( *
T0*
transpose_a( 
0
Add_3AddMatMul_3Variable_4/read*
T0
$
	Sigmoid_3SigmoidAdd_3*
T0
]
MatMul_4MatMul	Sigmoid_3Variable_5/read*
transpose_a( *
transpose_b( *
T0
0
Add_4AddMatMul_4Variable_6/read*
T0
$
	Sigmoid_4SigmoidAdd_4*
T0
]
MatMul_5MatMul	Sigmoid_4Variable_7/read*
T0*
transpose_a( *
transpose_b( 
0
Add_5AddMatMul_5Variable_8/read*
T0
$
	Sigmoid_5SigmoidAdd_5*
T0
]
MatMul_6MatMul	Sigmoid_4Variable_9/read*
transpose_b( *
T0*
transpose_a( 
1
Add_6AddMatMul_6Variable_10/read*
T0
$
	Sigmoid_6SigmoidAdd_6*
T0
^
MatMul_7MatMul	Sigmoid_5Variable_11/read*
T0*
transpose_a( *
transpose_b( 
1
Add_7AddMatMul_7Variable_12/read*
T0
$
	Sigmoid_7SigmoidAdd_7*
T0
^
MatMul_8MatMul	Sigmoid_6Variable_13/read*
T0*
transpose_a( *
transpose_b( 
1
Add_8AddMatMul_8Variable_14/read*
T0
$
	Sigmoid_8SigmoidAdd_8*
T0
^
MatMul_9MatMul	Sigmoid_4Variable_15/read*
transpose_a( *
transpose_b( *
T0
1
Add_9AddMatMul_9Variable_16/read*
T0
$
	Sigmoid_9SigmoidAdd_9*
T0
_
	MatMul_10MatMul	Sigmoid_4Variable_17/read*
transpose_a( *
transpose_b( *
T0
3
Add_10Add	MatMul_10Variable_18/read*
T0
&

Sigmoid_10SigmoidAdd_10*
T0
P
&softmax_cross_entropy_with_logits/RankConst*
value	B :*
dtype0
T
'softmax_cross_entropy_with_logits/ShapeShape	Sigmoid_7*
T0*
out_type0
R
(softmax_cross_entropy_with_logits/Rank_1Const*
value	B :*
dtype0
V
)softmax_cross_entropy_with_logits/Shape_1Shape	Sigmoid_7*
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
-softmax_cross_entropy_with_logits/Slice/beginPack%softmax_cross_entropy_with_logits/Sub*
T0*

axis *
N
Z
,softmax_cross_entropy_with_logits/Slice/sizeConst*
valueB:*
dtype0
Î
'softmax_cross_entropy_with_logits/SliceSlice)softmax_cross_entropy_with_logits/Shape_1-softmax_cross_entropy_with_logits/Slice/begin,softmax_cross_entropy_with_logits/Slice/size*
T0*
Index0
h
1softmax_cross_entropy_with_logits/concat/values_0Const*
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
W
-softmax_cross_entropy_with_logits/concat/axisConst*
dtype0*
value	B : 
Ý
(softmax_cross_entropy_with_logits/concatConcatV21softmax_cross_entropy_with_logits/concat/values_0'softmax_cross_entropy_with_logits/Slice-softmax_cross_entropy_with_logits/concat/axis*
T0*
N*

Tidx0

)softmax_cross_entropy_with_logits/ReshapeReshape	Sigmoid_7(softmax_cross_entropy_with_logits/concat*
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
T0*
N*

Tidx0
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
 *×Łđ>*
dtype0
 
mulMulmul/xMean*
T0
R
(softmax_cross_entropy_with_logits_1/RankConst*
value	B :*
dtype0
V
)softmax_cross_entropy_with_logits_1/ShapeShape	Sigmoid_8*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_1/Rank_1Const*
value	B :*
dtype0
X
+softmax_cross_entropy_with_logits_1/Shape_1Shape	Sigmoid_8*
out_type0*
T0
S
)softmax_cross_entropy_with_logits_1/Sub/yConst*
value	B :*
dtype0
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
*softmax_cross_entropy_with_logits_1/concatConcatV23softmax_cross_entropy_with_logits_1/concat/values_0)softmax_cross_entropy_with_logits_1/Slice/softmax_cross_entropy_with_logits_1/concat/axis*

Tidx0*
T0*
N

+softmax_cross_entropy_with_logits_1/ReshapeReshape	Sigmoid_8*softmax_cross_entropy_with_logits_1/concat*
T0*
Tshape0
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
1softmax_cross_entropy_with_logits_1/Slice_1/beginPack)softmax_cross_entropy_with_logits_1/Sub_1*
N*
T0*

axis 
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
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0
[
1softmax_cross_entropy_with_logits_1/concat_1/axisConst*
value	B : *
dtype0
í
,softmax_cross_entropy_with_logits_1/concat_1ConcatV25softmax_cross_entropy_with_logits_1/concat_1/values_0+softmax_cross_entropy_with_logits_1/Slice_11softmax_cross_entropy_with_logits_1/concat_1/axis*
T0*
N*

Tidx0
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
Const_1Const*
valueB: *
dtype0
l
Mean_1Mean-softmax_cross_entropy_with_logits_1/Reshape_2Const_1*

Tidx0*
	keep_dims( *
T0
4
mul_1/xConst*
valueB
 *Âu>*
dtype0
&
mul_1Mulmul_1/xMean_1*
T0
"
add_11Addmulmul_1*
T0
R
(softmax_cross_entropy_with_logits_2/RankConst*
value	B :*
dtype0
V
)softmax_cross_entropy_with_logits_2/ShapeShape	Sigmoid_9*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_2/Rank_1Const*
value	B :*
dtype0
X
+softmax_cross_entropy_with_logits_2/Shape_1Shape	Sigmoid_9*
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
*softmax_cross_entropy_with_logits_2/concatConcatV23softmax_cross_entropy_with_logits_2/concat/values_0)softmax_cross_entropy_with_logits_2/Slice/softmax_cross_entropy_with_logits_2/concat/axis*

Tidx0*
T0*
N

+softmax_cross_entropy_with_logits_2/ReshapeReshape	Sigmoid_9*softmax_cross_entropy_with_logits_2/concat*
T0*
Tshape0
T
*softmax_cross_entropy_with_logits_2/Rank_2Const*
dtype0*
value	B :
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
+softmax_cross_entropy_with_logits_2/Sub_2/yConst*
value	B :*
dtype0
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
Mean_2Mean-softmax_cross_entropy_with_logits_2/Reshape_2Const_2*

Tidx0*
	keep_dims( *
T0
4
mul_2/xConst*
valueB
 *¸>*
dtype0
&
mul_2Mulmul_2/xMean_2*
T0
%
add_12Addadd_11mul_2*
T0
R
(softmax_cross_entropy_with_logits_3/RankConst*
value	B :*
dtype0
W
)softmax_cross_entropy_with_logits_3/ShapeShape
Sigmoid_10*
T0*
out_type0
T
*softmax_cross_entropy_with_logits_3/Rank_1Const*
value	B :*
dtype0
Y
+softmax_cross_entropy_with_logits_3/Shape_1Shape
Sigmoid_10*
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
N*
T0*

axis 
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
dtype0*
valueB:
˙˙˙˙˙˙˙˙˙
Y
/softmax_cross_entropy_with_logits_3/concat/axisConst*
dtype0*
value	B : 
ĺ
*softmax_cross_entropy_with_logits_3/concatConcatV23softmax_cross_entropy_with_logits_3/concat/values_0)softmax_cross_entropy_with_logits_3/Slice/softmax_cross_entropy_with_logits_3/concat/axis*

Tidx0*
T0*
N

+softmax_cross_entropy_with_logits_3/ReshapeReshape
Sigmoid_10*softmax_cross_entropy_with_logits_3/concat*
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
T0*

axis *
N
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
,softmax_cross_entropy_with_logits_3/concat_1ConcatV25softmax_cross_entropy_with_logits_3/concat_1/values_0+softmax_cross_entropy_with_logits_3/Slice_11softmax_cross_entropy_with_logits_3/concat_1/axis*
N*

Tidx0*
T0
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
Const_3Const*
valueB: *
dtype0
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
add_13Addadd_12mul_3*
T0
-
SquareSquareweight_1_bias/read*
T0
5
Const_4Const*
dtype0*
valueB: 
A
SumSumSquareConst_4*

Tidx0*
	keep_dims( *
T0
*
Square_1SquareVariable/read*
T0
5
Const_5Const*
valueB: *
dtype0
E
Sum_1SumSquare_1Const_5*
T0*

Tidx0*
	keep_dims( 
"
add_14AddSumSum_1*
T0
,
Square_2SquareVariable_2/read*
T0
5
Const_6Const*
valueB: *
dtype0
E
Sum_2SumSquare_2Const_6*

Tidx0*
	keep_dims( *
T0
%
add_15Addadd_14Sum_2*
T0
,
Square_3SquareVariable_4/read*
T0
5
Const_7Const*
valueB: *
dtype0
E
Sum_3SumSquare_3Const_7*

Tidx0*
	keep_dims( *
T0
%
add_16Addadd_15Sum_3*
T0
,
Square_4SquareVariable_6/read*
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
add_17Addadd_16Sum_4*
T0
4
mul_4/xConst*
valueB
 *ÍĚĚ=*
dtype0
&
mul_4Mulmul_4/xadd_17*
T0
%
add_18Addadd_13mul_4*
T0
S
&ExponentialDecay/initial_learning_rateConst*
dtype0*
valueB
 *o:
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
ExponentialDecay/Cast_1/xConst*
dtype0*
valueB
 *Y?
C
ExponentialDecay/Cast_2/xConst*
value	B : *
dtype0
b
ExponentialDecay/Cast_2CastExponentialDecay/Cast_2/x*

SrcT0*
Truncate( *

DstT0
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
&gradients/add_18_grad/tuple/group_depsNoOp^gradients/Fill

.gradients/add_18_grad/tuple/control_dependencyIdentitygradients/Fill'^gradients/add_18_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Ą
0gradients/add_18_grad/tuple/control_dependency_1Identitygradients/Fill'^gradients/add_18_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
_
&gradients/add_13_grad/tuple/group_depsNoOp/^gradients/add_18_grad/tuple/control_dependency
ż
.gradients/add_13_grad/tuple/control_dependencyIdentity.gradients/add_18_grad/tuple/control_dependency'^gradients/add_13_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Á
0gradients/add_13_grad/tuple/control_dependency_1Identity.gradients/add_18_grad/tuple/control_dependency'^gradients/add_13_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
b
gradients/mul_4_grad/MulMul0gradients/add_18_grad/tuple/control_dependency_1add_17*
T0
e
gradients/mul_4_grad/Mul_1Mul0gradients/add_18_grad/tuple/control_dependency_1mul_4/x*
T0
e
%gradients/mul_4_grad/tuple/group_depsNoOp^gradients/mul_4_grad/Mul^gradients/mul_4_grad/Mul_1
ą
-gradients/mul_4_grad/tuple/control_dependencyIdentitygradients/mul_4_grad/Mul&^gradients/mul_4_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_4_grad/Mul
ˇ
/gradients/mul_4_grad/tuple/control_dependency_1Identitygradients/mul_4_grad/Mul_1&^gradients/mul_4_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
_
&gradients/add_12_grad/tuple/group_depsNoOp/^gradients/add_13_grad/tuple/control_dependency
ż
.gradients/add_12_grad/tuple/control_dependencyIdentity.gradients/add_13_grad/tuple/control_dependency'^gradients/add_12_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Á
0gradients/add_12_grad/tuple/control_dependency_1Identity.gradients/add_13_grad/tuple/control_dependency'^gradients/add_12_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
b
gradients/mul_3_grad/MulMul0gradients/add_13_grad/tuple/control_dependency_1Mean_3*
T0
e
gradients/mul_3_grad/Mul_1Mul0gradients/add_13_grad/tuple/control_dependency_1mul_3/x*
T0
e
%gradients/mul_3_grad/tuple/group_depsNoOp^gradients/mul_3_grad/Mul^gradients/mul_3_grad/Mul_1
ą
-gradients/mul_3_grad/tuple/control_dependencyIdentitygradients/mul_3_grad/Mul&^gradients/mul_3_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_3_grad/Mul
ˇ
/gradients/mul_3_grad/tuple/control_dependency_1Identitygradients/mul_3_grad/Mul_1&^gradients/mul_3_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_3_grad/Mul_1
`
&gradients/add_17_grad/tuple/group_depsNoOp0^gradients/mul_4_grad/tuple/control_dependency_1
Ě
.gradients/add_17_grad/tuple/control_dependencyIdentity/gradients/mul_4_grad/tuple/control_dependency_1'^gradients/add_17_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
Î
0gradients/add_17_grad/tuple/control_dependency_1Identity/gradients/mul_4_grad/tuple/control_dependency_1'^gradients/add_17_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
_
&gradients/add_11_grad/tuple/group_depsNoOp/^gradients/add_12_grad/tuple/control_dependency
ż
.gradients/add_11_grad/tuple/control_dependencyIdentity.gradients/add_12_grad/tuple/control_dependency'^gradients/add_11_grad/tuple/group_deps*
T0*!
_class
loc:@gradients/Fill
Á
0gradients/add_11_grad/tuple/control_dependency_1Identity.gradients/add_12_grad/tuple/control_dependency'^gradients/add_11_grad/tuple/group_deps*!
_class
loc:@gradients/Fill*
T0
b
gradients/mul_2_grad/MulMul0gradients/add_12_grad/tuple/control_dependency_1Mean_2*
T0
e
gradients/mul_2_grad/Mul_1Mul0gradients/add_12_grad/tuple/control_dependency_1mul_2/x*
T0
e
%gradients/mul_2_grad/tuple/group_depsNoOp^gradients/mul_2_grad/Mul^gradients/mul_2_grad/Mul_1
ą
-gradients/mul_2_grad/tuple/control_dependencyIdentitygradients/mul_2_grad/Mul&^gradients/mul_2_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_2_grad/Mul
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
gradients/Mean_3_grad/TileTilegradients/Mean_3_grad/Reshapegradients/Mean_3_grad/Shape*
T0*

Tmultiples0
n
gradients/Mean_3_grad/Shape_1Shape-softmax_cross_entropy_with_logits_3/Reshape_2*
T0*
out_type0
F
gradients/Mean_3_grad/Shape_2Const*
valueB *
dtype0
I
gradients/Mean_3_grad/ConstConst*
valueB: *
dtype0

gradients/Mean_3_grad/ProdProdgradients/Mean_3_grad/Shape_1gradients/Mean_3_grad/Const*

Tidx0*
	keep_dims( *
T0
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
&gradients/add_16_grad/tuple/group_depsNoOp/^gradients/add_17_grad/tuple/control_dependency
Ë
.gradients/add_16_grad/tuple/control_dependencyIdentity.gradients/add_17_grad/tuple/control_dependency'^gradients/add_16_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
Í
0gradients/add_16_grad/tuple/control_dependency_1Identity.gradients/add_17_grad/tuple/control_dependency'^gradients/add_16_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
P
"gradients/Sum_4_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Sum_4_grad/ReshapeReshape0gradients/add_17_grad/tuple/control_dependency_1"gradients/Sum_4_grad/Reshape/shape*
T0*
Tshape0
H
gradients/Sum_4_grad/ConstConst*
valueB:n*
dtype0
v
gradients/Sum_4_grad/TileTilegradients/Sum_4_grad/Reshapegradients/Sum_4_grad/Const*

Tmultiples0*
T0
\
gradients/mul_grad/MulMul.gradients/add_11_grad/tuple/control_dependencyMean*
T0
_
gradients/mul_grad/Mul_1Mul.gradients/add_11_grad/tuple/control_dependencymul/x*
T0
_
#gradients/mul_grad/tuple/group_depsNoOp^gradients/mul_grad/Mul^gradients/mul_grad/Mul_1
Š
+gradients/mul_grad/tuple/control_dependencyIdentitygradients/mul_grad/Mul$^gradients/mul_grad/tuple/group_deps*
T0*)
_class
loc:@gradients/mul_grad/Mul
Ż
-gradients/mul_grad/tuple/control_dependency_1Identitygradients/mul_grad/Mul_1$^gradients/mul_grad/tuple/group_deps*
T0*+
_class!
loc:@gradients/mul_grad/Mul_1
b
gradients/mul_1_grad/MulMul0gradients/add_11_grad/tuple/control_dependency_1Mean_1*
T0
e
gradients/mul_1_grad/Mul_1Mul0gradients/add_11_grad/tuple/control_dependency_1mul_1/x*
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
gradients/Mean_2_grad/Shape_2Const*
dtype0*
valueB 
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
Dgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeReshapegradients/Mean_3_grad/truedivBgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/Shape*
T0*
Tshape0
_
&gradients/add_15_grad/tuple/group_depsNoOp/^gradients/add_16_grad/tuple/control_dependency
Ë
.gradients/add_15_grad/tuple/control_dependencyIdentity.gradients/add_16_grad/tuple/control_dependency'^gradients/add_15_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
Í
0gradients/add_15_grad/tuple/control_dependency_1Identity.gradients/add_16_grad/tuple/control_dependency'^gradients/add_15_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
P
"gradients/Sum_3_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Sum_3_grad/ReshapeReshape0gradients/add_16_grad/tuple/control_dependency_1"gradients/Sum_3_grad/Reshape/shape*
T0*
Tshape0
I
gradients/Sum_3_grad/ConstConst*
valueB:*
dtype0
v
gradients/Sum_3_grad/TileTilegradients/Sum_3_grad/Reshapegradients/Sum_3_grad/Const*

Tmultiples0*
T0
f
gradients/Square_4_grad/ConstConst^gradients/Sum_4_grad/Tile*
dtype0*
valueB
 *   @
[
gradients/Square_4_grad/MulMulVariable_6/readgradients/Square_4_grad/Const*
T0
e
gradients/Square_4_grad/Mul_1Mulgradients/Sum_4_grad/Tilegradients/Square_4_grad/Mul*
T0
O
!gradients/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Mean_grad/ReshapeReshape-gradients/mul_grad/tuple/control_dependency_1!gradients/Mean_grad/Reshape/shape*
T0*
Tshape0
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
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
T0*

Tidx0*
	keep_dims( 
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
gradients/Mean_1_grad/ShapeShape-softmax_cross_entropy_with_logits_1/Reshape_2*
T0*
out_type0
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
gradients/Mean_1_grad/ConstConst*
valueB: *
dtype0
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

DstT0*

SrcT0*
Truncate( 
i
gradients/Mean_1_grad/truedivRealDivgradients/Mean_1_grad/Tilegradients/Mean_1_grad/Cast*
T0

Bgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ShapeShape#softmax_cross_entropy_with_logits_2*
out_type0*
T0
É
Dgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/ReshapeReshapegradients/Mean_2_grad/truedivBgradients/softmax_cross_entropy_with_logits_2/Reshape_2_grad/Shape*
Tshape0*
T0
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
ExpandDimsDgradients/softmax_cross_entropy_with_logits_3/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_3_grad/ExpandDims/dim*

Tdim0*
T0
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
&gradients/add_14_grad/tuple/group_depsNoOp/^gradients/add_15_grad/tuple/control_dependency
Ë
.gradients/add_14_grad/tuple/control_dependencyIdentity.gradients/add_15_grad/tuple/control_dependency'^gradients/add_14_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
Í
0gradients/add_14_grad/tuple/control_dependency_1Identity.gradients/add_15_grad/tuple/control_dependency'^gradients/add_14_grad/tuple/group_deps*
T0*-
_class#
!loc:@gradients/mul_4_grad/Mul_1
P
"gradients/Sum_2_grad/Reshape/shapeConst*
valueB:*
dtype0

gradients/Sum_2_grad/ReshapeReshape0gradients/add_15_grad/tuple/control_dependency_1"gradients/Sum_2_grad/Reshape/shape*
Tshape0*
T0
I
gradients/Sum_2_grad/ConstConst*
valueB:´*
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
[
gradients/Square_3_grad/MulMulVariable_4/readgradients/Square_3_grad/Const*
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
Dgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeReshapegradients/Mean_1_grad/truedivBgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/Shape*
T0*
Tshape0
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
n
@gradients/softmax_cross_entropy_with_logits_3/Reshape_grad/ShapeShape
Sigmoid_10*
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
gradients/Sum_grad/ReshapeReshape.gradients/add_14_grad/tuple/control_dependency gradients/Sum_grad/Reshape/shape*
T0*
Tshape0
G
gradients/Sum_grad/ConstConst*
valueB:˙*
dtype0
p
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/Const*

Tmultiples0*
T0
P
"gradients/Sum_1_grad/Reshape/shapeConst*
dtype0*
valueB:

gradients/Sum_1_grad/ReshapeReshape0gradients/add_14_grad/tuple/control_dependency_1"gradients/Sum_1_grad/Reshape/shape*
T0*
Tshape0
I
gradients/Sum_1_grad/ConstConst*
valueB:×*
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
[
gradients/Square_2_grad/MulMulVariable_2/readgradients/Square_2_grad/Const*
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
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeAgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims/dim*
T0*

Tdim0
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
Cgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0
í
?gradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1
ExpandDimsDgradients/softmax_cross_entropy_with_logits_1/Reshape_2_grad/ReshapeCgradients/softmax_cross_entropy_with_logits_1_grad/ExpandDims_1/dim*

Tdim0*
T0
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
m
@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ShapeShape	Sigmoid_9*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_2_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Shape*
T0*
Tshape0

%gradients/Sigmoid_10_grad/SigmoidGradSigmoidGrad
Sigmoid_10Bgradients/softmax_cross_entropy_with_logits_3/Reshape_grad/Reshape*
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
gradients/Square_1_grad/ConstConst^gradients/Sum_1_grad/Tile*
valueB
 *   @*
dtype0
Y
gradients/Square_1_grad/MulMulVariable/readgradients/Square_1_grad/Const*
T0
e
gradients/Square_1_grad/Mul_1Mulgradients/Sum_1_grad/Tilegradients/Square_1_grad/Mul*
T0
k
>gradients/softmax_cross_entropy_with_logits/Reshape_grad/ShapeShape	Sigmoid_7*
T0*
out_type0
í
@gradients/softmax_cross_entropy_with_logits/Reshape_grad/ReshapeReshapeIgradients/softmax_cross_entropy_with_logits_grad/tuple/control_dependency>gradients/softmax_cross_entropy_with_logits/Reshape_grad/Shape*
T0*
Tshape0
m
@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ShapeShape	Sigmoid_8*
T0*
out_type0
ó
Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/ReshapeReshapeKgradients/softmax_cross_entropy_with_logits_1_grad/tuple/control_dependency@gradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Shape*
T0*
Tshape0

$gradients/Sigmoid_9_grad/SigmoidGradSigmoidGrad	Sigmoid_9Bgradients/softmax_cross_entropy_with_logits_2/Reshape_grad/Reshape*
T0
H
gradients/Add_10_grad/ShapeShape	MatMul_10*
T0*
out_type0
K
gradients/Add_10_grad/Shape_1Const*
dtype0*
valueB:

+gradients/Add_10_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_10_grad/Shapegradients/Add_10_grad/Shape_1*
T0

gradients/Add_10_grad/SumSum%gradients/Sigmoid_10_grad/SigmoidGrad+gradients/Add_10_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
w
gradients/Add_10_grad/ReshapeReshapegradients/Add_10_grad/Sumgradients/Add_10_grad/Shape*
Tshape0*
T0

gradients/Add_10_grad/Sum_1Sum%gradients/Sigmoid_10_grad/SigmoidGrad-gradients/Add_10_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
}
gradients/Add_10_grad/Reshape_1Reshapegradients/Add_10_grad/Sum_1gradients/Add_10_grad/Shape_1*
T0*
Tshape0
p
&gradients/Add_10_grad/tuple/group_depsNoOp^gradients/Add_10_grad/Reshape ^gradients/Add_10_grad/Reshape_1
˝
.gradients/Add_10_grad/tuple/control_dependencyIdentitygradients/Add_10_grad/Reshape'^gradients/Add_10_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/Add_10_grad/Reshape
Ă
0gradients/Add_10_grad/tuple/control_dependency_1Identitygradients/Add_10_grad/Reshape_1'^gradients/Add_10_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Add_10_grad/Reshape_1

$gradients/Sigmoid_7_grad/SigmoidGradSigmoidGrad	Sigmoid_7@gradients/softmax_cross_entropy_with_logits/Reshape_grad/Reshape*
T0

$gradients/Sigmoid_8_grad/SigmoidGradSigmoidGrad	Sigmoid_8Bgradients/softmax_cross_entropy_with_logits_1/Reshape_grad/Reshape*
T0
F
gradients/Add_9_grad/ShapeShapeMatMul_9*
T0*
out_type0
J
gradients/Add_9_grad/Shape_1Const*
valueB:*
dtype0

*gradients/Add_9_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_9_grad/Shapegradients/Add_9_grad/Shape_1*
T0

gradients/Add_9_grad/SumSum$gradients/Sigmoid_9_grad/SigmoidGrad*gradients/Add_9_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_9_grad/ReshapeReshapegradients/Add_9_grad/Sumgradients/Add_9_grad/Shape*
T0*
Tshape0

gradients/Add_9_grad/Sum_1Sum$gradients/Sigmoid_9_grad/SigmoidGrad,gradients/Add_9_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
z
gradients/Add_9_grad/Reshape_1Reshapegradients/Add_9_grad/Sum_1gradients/Add_9_grad/Shape_1*
T0*
Tshape0
m
%gradients/Add_9_grad/tuple/group_depsNoOp^gradients/Add_9_grad/Reshape^gradients/Add_9_grad/Reshape_1
š
-gradients/Add_9_grad/tuple/control_dependencyIdentitygradients/Add_9_grad/Reshape&^gradients/Add_9_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Add_9_grad/Reshape*
T0
ż
/gradients/Add_9_grad/tuple/control_dependency_1Identitygradients/Add_9_grad/Reshape_1&^gradients/Add_9_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_9_grad/Reshape_1

gradients/MatMul_10_grad/MatMulMatMul.gradients/Add_10_grad/tuple/control_dependencyVariable_17/read*
transpose_a( *
transpose_b(*
T0

!gradients/MatMul_10_grad/MatMul_1MatMul	Sigmoid_4.gradients/Add_10_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
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
F
gradients/Add_7_grad/ShapeShapeMatMul_7*
T0*
out_type0
J
gradients/Add_7_grad/Shape_1Const*
valueB:*
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
gradients/Add_7_grad/Sum_1Sum$gradients/Sigmoid_7_grad/SigmoidGrad,gradients/Add_7_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
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
/gradients/Add_7_grad/tuple/control_dependency_1Identitygradients/Add_7_grad/Reshape_1&^gradients/Add_7_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Add_7_grad/Reshape_1*
T0
F
gradients/Add_8_grad/ShapeShapeMatMul_8*
T0*
out_type0
J
gradients/Add_8_grad/Shape_1Const*
valueB:*
dtype0

*gradients/Add_8_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_8_grad/Shapegradients/Add_8_grad/Shape_1*
T0

gradients/Add_8_grad/SumSum$gradients/Sigmoid_8_grad/SigmoidGrad*gradients/Add_8_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_8_grad/ReshapeReshapegradients/Add_8_grad/Sumgradients/Add_8_grad/Shape*
Tshape0*
T0

gradients/Add_8_grad/Sum_1Sum$gradients/Sigmoid_8_grad/SigmoidGrad,gradients/Add_8_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
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

gradients/MatMul_9_grad/MatMulMatMul-gradients/Add_9_grad/tuple/control_dependencyVariable_15/read*
transpose_a( *
transpose_b(*
T0

 gradients/MatMul_9_grad/MatMul_1MatMul	Sigmoid_4-gradients/Add_9_grad/tuple/control_dependency*
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

gradients/MatMul_7_grad/MatMulMatMul-gradients/Add_7_grad/tuple/control_dependencyVariable_11/read*
transpose_a( *
transpose_b(*
T0

 gradients/MatMul_7_grad/MatMul_1MatMul	Sigmoid_5-gradients/Add_7_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
t
(gradients/MatMul_7_grad/tuple/group_depsNoOp^gradients/MatMul_7_grad/MatMul!^gradients/MatMul_7_grad/MatMul_1
Ă
0gradients/MatMul_7_grad/tuple/control_dependencyIdentitygradients/MatMul_7_grad/MatMul)^gradients/MatMul_7_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_7_grad/MatMul*
T0
É
2gradients/MatMul_7_grad/tuple/control_dependency_1Identity gradients/MatMul_7_grad/MatMul_1)^gradients/MatMul_7_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_7_grad/MatMul_1

gradients/MatMul_8_grad/MatMulMatMul-gradients/Add_8_grad/tuple/control_dependencyVariable_13/read*
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
0gradients/MatMul_8_grad/tuple/control_dependencyIdentitygradients/MatMul_8_grad/MatMul)^gradients/MatMul_8_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_8_grad/MatMul*
T0
É
2gradients/MatMul_8_grad/tuple/control_dependency_1Identity gradients/MatMul_8_grad/MatMul_1)^gradients/MatMul_8_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_8_grad/MatMul_1
y
$gradients/Sigmoid_5_grad/SigmoidGradSigmoidGrad	Sigmoid_50gradients/MatMul_7_grad/tuple/control_dependency*
T0
y
$gradients/Sigmoid_6_grad/SigmoidGradSigmoidGrad	Sigmoid_60gradients/MatMul_8_grad/tuple/control_dependency*
T0
F
gradients/Add_5_grad/ShapeShapeMatMul_5*
T0*
out_type0
J
gradients/Add_5_grad/Shape_1Const*
valueB:Z*
dtype0

*gradients/Add_5_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_5_grad/Shapegradients/Add_5_grad/Shape_1*
T0

gradients/Add_5_grad/SumSum$gradients/Sigmoid_5_grad/SigmoidGrad*gradients/Add_5_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_5_grad/ReshapeReshapegradients/Add_5_grad/Sumgradients/Add_5_grad/Shape*
Tshape0*
T0
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
-gradients/Add_5_grad/tuple/control_dependencyIdentitygradients/Add_5_grad/Reshape&^gradients/Add_5_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Add_5_grad/Reshape*
T0
ż
/gradients/Add_5_grad/tuple/control_dependency_1Identitygradients/Add_5_grad/Reshape_1&^gradients/Add_5_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/Add_5_grad/Reshape_1
F
gradients/Add_6_grad/ShapeShapeMatMul_6*
T0*
out_type0
J
gradients/Add_6_grad/Shape_1Const*
valueB:Z*
dtype0

*gradients/Add_6_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_6_grad/Shapegradients/Add_6_grad/Shape_1*
T0

gradients/Add_6_grad/SumSum$gradients/Sigmoid_6_grad/SigmoidGrad*gradients/Add_6_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
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

gradients/MatMul_5_grad/MatMulMatMul-gradients/Add_5_grad/tuple/control_dependencyVariable_7/read*
T0*
transpose_a( *
transpose_b(
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

gradients/MatMul_6_grad/MatMulMatMul-gradients/Add_6_grad/tuple/control_dependencyVariable_9/read*
transpose_a( *
transpose_b(*
T0

 gradients/MatMul_6_grad/MatMul_1MatMul	Sigmoid_4-gradients/Add_6_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0
t
(gradients/MatMul_6_grad/tuple/group_depsNoOp^gradients/MatMul_6_grad/MatMul!^gradients/MatMul_6_grad/MatMul_1
Ă
0gradients/MatMul_6_grad/tuple/control_dependencyIdentitygradients/MatMul_6_grad/MatMul)^gradients/MatMul_6_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_6_grad/MatMul
É
2gradients/MatMul_6_grad/tuple/control_dependency_1Identity gradients/MatMul_6_grad/MatMul_1)^gradients/MatMul_6_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_6_grad/MatMul_1
Ľ
gradients/AddNAddN1gradients/MatMul_10_grad/tuple/control_dependency0gradients/MatMul_9_grad/tuple/control_dependency0gradients/MatMul_5_grad/tuple/control_dependency0gradients/MatMul_6_grad/tuple/control_dependency*
T0*2
_class(
&$loc:@gradients/MatMul_10_grad/MatMul*
N
W
$gradients/Sigmoid_4_grad/SigmoidGradSigmoidGrad	Sigmoid_4gradients/AddN*
T0
F
gradients/Add_4_grad/ShapeShapeMatMul_4*
T0*
out_type0
J
gradients/Add_4_grad/Shape_1Const*
valueB:n*
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
gradients/Add_4_grad/ReshapeReshapegradients/Add_4_grad/Sumgradients/Add_4_grad/Shape*
Tshape0*
T0
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

gradients/MatMul_4_grad/MatMulMatMul-gradients/Add_4_grad/tuple/control_dependencyVariable_5/read*
T0*
transpose_a( *
transpose_b(

 gradients/MatMul_4_grad/MatMul_1MatMul	Sigmoid_3-gradients/Add_4_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
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
gradients/Add_3_grad/ShapeShapeMatMul_3*
T0*
out_type0
K
gradients/Add_3_grad/Shape_1Const*
valueB:*
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

gradients/MatMul_3_grad/MatMulMatMul-gradients/Add_3_grad/tuple/control_dependencyVariable_3/read*
T0*
transpose_a( *
transpose_b(

 gradients/MatMul_3_grad/MatMul_1MatMul	Sigmoid_2-gradients/Add_3_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
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
gradients/AddN_2AddNgradients/Square_3_grad/Mul_1/gradients/Add_3_grad/tuple/control_dependency_1*0
_class&
$"loc:@gradients/Square_3_grad/Mul_1*
N*
T0
y
$gradients/Sigmoid_2_grad/SigmoidGradSigmoidGrad	Sigmoid_20gradients/MatMul_3_grad/tuple/control_dependency*
T0
F
gradients/Add_2_grad/ShapeShapeMatMul_2*
T0*
out_type0
K
gradients/Add_2_grad/Shape_1Const*
valueB:´*
dtype0

*gradients/Add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_2_grad/Shapegradients/Add_2_grad/Shape_1*
T0

gradients/Add_2_grad/SumSum$gradients/Sigmoid_2_grad/SigmoidGrad*gradients/Add_2_grad/BroadcastGradientArgs*

Tidx0*
	keep_dims( *
T0
t
gradients/Add_2_grad/ReshapeReshapegradients/Add_2_grad/Sumgradients/Add_2_grad/Shape*
T0*
Tshape0

gradients/Add_2_grad/Sum_1Sum$gradients/Sigmoid_2_grad/SigmoidGrad,gradients/Add_2_grad/BroadcastGradientArgs:1*

Tidx0*
	keep_dims( *
T0
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
/gradients/Add_2_grad/tuple/control_dependency_1Identitygradients/Add_2_grad/Reshape_1&^gradients/Add_2_grad/tuple/group_deps*1
_class'
%#loc:@gradients/Add_2_grad/Reshape_1*
T0

gradients/MatMul_2_grad/MatMulMatMul-gradients/Add_2_grad/tuple/control_dependencyVariable_1/read*
T0*
transpose_a( *
transpose_b(

 gradients/MatMul_2_grad/MatMul_1MatMul	Sigmoid_1-gradients/Add_2_grad/tuple/control_dependency*
transpose_b( *
T0*
transpose_a(
t
(gradients/MatMul_2_grad/tuple/group_depsNoOp^gradients/MatMul_2_grad/MatMul!^gradients/MatMul_2_grad/MatMul_1
Ă
0gradients/MatMul_2_grad/tuple/control_dependencyIdentitygradients/MatMul_2_grad/MatMul)^gradients/MatMul_2_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/MatMul_2_grad/MatMul
É
2gradients/MatMul_2_grad/tuple/control_dependency_1Identity gradients/MatMul_2_grad/MatMul_1)^gradients/MatMul_2_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/MatMul_2_grad/MatMul_1
Ź
gradients/AddN_3AddNgradients/Square_2_grad/Mul_1/gradients/Add_2_grad/tuple/control_dependency_1*0
_class&
$"loc:@gradients/Square_2_grad/Mul_1*
N*
T0
y
$gradients/Sigmoid_1_grad/SigmoidGradSigmoidGrad	Sigmoid_10gradients/MatMul_2_grad/tuple/control_dependency*
T0
F
gradients/Add_1_grad/ShapeShapeMatMul_1*
out_type0*
T0
K
gradients/Add_1_grad/Shape_1Const*
valueB:×*
dtype0

*gradients/Add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_1_grad/Shapegradients/Add_1_grad/Shape_1*
T0

gradients/Add_1_grad/SumSum$gradients/Sigmoid_1_grad/SigmoidGrad*gradients/Add_1_grad/BroadcastGradientArgs*
T0*

Tidx0*
	keep_dims( 
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
gradients/MatMul_1_grad/MatMulMatMul-gradients/Add_1_grad/tuple/control_dependencyweight_2/read*
T0*
transpose_a( *
transpose_b(
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
valueB:˙*
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
gradients/Add_grad/Sum_1Sum"gradients/Sigmoid_grad/SigmoidGrad*gradients/Add_grad/BroadcastGradientArgs:1*
T0*

Tidx0*
	keep_dims( 
t
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
Tshape0*
T0
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
gradients/MatMul_grad/MatMul_1MatMulx+gradients/Add_grad/tuple/control_dependency*
T0*
transpose_a(*
transpose_b( 
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
gradients/AddN_5AddNgradients/Square_grad/Mul_1-gradients/Add_grad/tuple/control_dependency_1*
N*
T0*.
_class$
" loc:@gradients/Square_grad/Mul_1
c
beta1_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *fff?*
dtype0
t
beta1_power
VariableV2*
shared_name *
_class
loc:@Variable*
dtype0*
	container *
shape: 

beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
O
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@Variable
c
beta2_power/initial_valueConst*
_class
loc:@Variable*
valueB
 *wž?*
dtype0
t
beta2_power
VariableV2*
_class
loc:@Variable*
dtype0*
	container *
shape: *
shared_name 

beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(
O
beta2_power/readIdentitybeta2_power*
_class
loc:@Variable*
T0

/weight_1/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"  ˙   *
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
weight_1/Adam/Initializer/zerosFill/weight_1/Adam/Initializer/zeros/shape_as_tensor%weight_1/Adam/Initializer/zeros/Const*

index_type0*
_class
loc:@weight_1*
T0

weight_1/Adam
VariableV2*
shared_name *
_class
loc:@weight_1*
dtype0*
	container *
shape:
˙

weight_1/Adam/AssignAssignweight_1/Adamweight_1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@weight_1*
validate_shape(
S
weight_1/Adam/readIdentityweight_1/Adam*
T0*
_class
loc:@weight_1

1weight_1/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"  ˙   *
_class
loc:@weight_1*
dtype0
q
'weight_1/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_class
loc:@weight_1
˝
!weight_1/Adam_1/Initializer/zerosFill1weight_1/Adam_1/Initializer/zeros/shape_as_tensor'weight_1/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_1

weight_1/Adam_1
VariableV2*
_class
loc:@weight_1*
dtype0*
	container *
shape:
˙*
shared_name 
Ł
weight_1/Adam_1/AssignAssignweight_1/Adam_1!weight_1/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@weight_1*
validate_shape(
W
weight_1/Adam_1/readIdentityweight_1/Adam_1*
_class
loc:@weight_1*
T0

/weight_2/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"˙   ×   *
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
VariableV2*
	container *
shape:
˙×*
shared_name *
_class
loc:@weight_2*
dtype0
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
valueB"˙   ×   *
_class
loc:@weight_2*
dtype0
q
'weight_2/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@weight_2*
dtype0
˝
!weight_2/Adam_1/Initializer/zerosFill1weight_2/Adam_1/Initializer/zeros/shape_as_tensor'weight_2/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@weight_2

weight_2/Adam_1
VariableV2*
shared_name *
_class
loc:@weight_2*
dtype0*
	container *
shape:
˙×
Ł
weight_2/Adam_1/AssignAssignweight_2/Adam_1!weight_2/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@weight_2*
validate_shape(
W
weight_2/Adam_1/readIdentityweight_2/Adam_1*
_class
loc:@weight_2*
T0

1Variable_1/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"×   ´   *
_class
loc:@Variable_1*
dtype0
s
'Variable_1/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_1*
dtype0
ż
!Variable_1/Adam/Initializer/zerosFill1Variable_1/Adam/Initializer/zeros/shape_as_tensor'Variable_1/Adam/Initializer/zeros/Const*

index_type0*
_class
loc:@Variable_1*
T0

Variable_1/Adam
VariableV2*
dtype0*
	container *
shape:
×´*
shared_name *
_class
loc:@Variable_1
Ľ
Variable_1/Adam/AssignAssignVariable_1/Adam!Variable_1/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(
Y
Variable_1/Adam/readIdentityVariable_1/Adam*
T0*
_class
loc:@Variable_1

3Variable_1/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"×   ´   *
_class
loc:@Variable_1*
dtype0
u
)Variable_1/Adam_1/Initializer/zeros/ConstConst*
dtype0*
valueB
 *    *
_class
loc:@Variable_1
Ĺ
#Variable_1/Adam_1/Initializer/zerosFill3Variable_1/Adam_1/Initializer/zeros/shape_as_tensor)Variable_1/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_1

Variable_1/Adam_1
VariableV2*
_class
loc:@Variable_1*
dtype0*
	container *
shape:
×´*
shared_name 
Ť
Variable_1/Adam_1/AssignAssignVariable_1/Adam_1#Variable_1/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(
]
Variable_1/Adam_1/readIdentityVariable_1/Adam_1*
T0*
_class
loc:@Variable_1

1Variable_3/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"´      *
_class
loc:@Variable_3*
dtype0
s
'Variable_3/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_3*
dtype0
ż
!Variable_3/Adam/Initializer/zerosFill1Variable_3/Adam/Initializer/zeros/shape_as_tensor'Variable_3/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_3

Variable_3/Adam
VariableV2*
shared_name *
_class
loc:@Variable_3*
dtype0*
	container *
shape:
´
Ľ
Variable_3/Adam/AssignAssignVariable_3/Adam!Variable_3/Adam/Initializer/zeros*
_class
loc:@Variable_3*
validate_shape(*
use_locking(*
T0
Y
Variable_3/Adam/readIdentityVariable_3/Adam*
T0*
_class
loc:@Variable_3

3Variable_3/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"´      *
_class
loc:@Variable_3*
dtype0
u
)Variable_3/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_3*
dtype0
Ĺ
#Variable_3/Adam_1/Initializer/zerosFill3Variable_3/Adam_1/Initializer/zeros/shape_as_tensor)Variable_3/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_3

Variable_3/Adam_1
VariableV2*
_class
loc:@Variable_3*
dtype0*
	container *
shape:
´*
shared_name 
Ť
Variable_3/Adam_1/AssignAssignVariable_3/Adam_1#Variable_3/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(
]
Variable_3/Adam_1/readIdentityVariable_3/Adam_1*
T0*
_class
loc:@Variable_3

1Variable_5/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"   n   *
_class
loc:@Variable_5*
dtype0
s
'Variable_5/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_5*
dtype0
ż
!Variable_5/Adam/Initializer/zerosFill1Variable_5/Adam/Initializer/zeros/shape_as_tensor'Variable_5/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_5

Variable_5/Adam
VariableV2*
shared_name *
_class
loc:@Variable_5*
dtype0*
	container *
shape:	n
Ľ
Variable_5/Adam/AssignAssignVariable_5/Adam!Variable_5/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(
Y
Variable_5/Adam/readIdentityVariable_5/Adam*
T0*
_class
loc:@Variable_5

3Variable_5/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"   n   *
_class
loc:@Variable_5*
dtype0
u
)Variable_5/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_5*
dtype0
Ĺ
#Variable_5/Adam_1/Initializer/zerosFill3Variable_5/Adam_1/Initializer/zeros/shape_as_tensor)Variable_5/Adam_1/Initializer/zeros/Const*

index_type0*
_class
loc:@Variable_5*
T0

Variable_5/Adam_1
VariableV2*
shape:	n*
shared_name *
_class
loc:@Variable_5*
dtype0*
	container 
Ť
Variable_5/Adam_1/AssignAssignVariable_5/Adam_1#Variable_5/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(
]
Variable_5/Adam_1/readIdentityVariable_5/Adam_1*
T0*
_class
loc:@Variable_5

1Variable_7/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"n   Z   *
_class
loc:@Variable_7*
dtype0
s
'Variable_7/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_7*
dtype0
ż
!Variable_7/Adam/Initializer/zerosFill1Variable_7/Adam/Initializer/zeros/shape_as_tensor'Variable_7/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_7

Variable_7/Adam
VariableV2*
_class
loc:@Variable_7*
dtype0*
	container *
shape
:nZ*
shared_name 
Ľ
Variable_7/Adam/AssignAssignVariable_7/Adam!Variable_7/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(
Y
Variable_7/Adam/readIdentityVariable_7/Adam*
_class
loc:@Variable_7*
T0

3Variable_7/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"n   Z   *
_class
loc:@Variable_7*
dtype0
u
)Variable_7/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_7*
dtype0
Ĺ
#Variable_7/Adam_1/Initializer/zerosFill3Variable_7/Adam_1/Initializer/zeros/shape_as_tensor)Variable_7/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_7

Variable_7/Adam_1
VariableV2*
_class
loc:@Variable_7*
dtype0*
	container *
shape
:nZ*
shared_name 
Ť
Variable_7/Adam_1/AssignAssignVariable_7/Adam_1#Variable_7/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(
]
Variable_7/Adam_1/readIdentityVariable_7/Adam_1*
_class
loc:@Variable_7*
T0

1Variable_9/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"n   Z   *
_class
loc:@Variable_9*
dtype0
s
'Variable_9/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_9*
dtype0
ż
!Variable_9/Adam/Initializer/zerosFill1Variable_9/Adam/Initializer/zeros/shape_as_tensor'Variable_9/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_9

Variable_9/Adam
VariableV2*
_class
loc:@Variable_9*
dtype0*
	container *
shape
:nZ*
shared_name 
Ľ
Variable_9/Adam/AssignAssignVariable_9/Adam!Variable_9/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
Y
Variable_9/Adam/readIdentityVariable_9/Adam*
T0*
_class
loc:@Variable_9

3Variable_9/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"n   Z   *
_class
loc:@Variable_9*
dtype0
u
)Variable_9/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_9*
dtype0
Ĺ
#Variable_9/Adam_1/Initializer/zerosFill3Variable_9/Adam_1/Initializer/zeros/shape_as_tensor)Variable_9/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_9

Variable_9/Adam_1
VariableV2*
_class
loc:@Variable_9*
dtype0*
	container *
shape
:nZ*
shared_name 
Ť
Variable_9/Adam_1/AssignAssignVariable_9/Adam_1#Variable_9/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(
]
Variable_9/Adam_1/readIdentityVariable_9/Adam_1*
_class
loc:@Variable_9*
T0

2Variable_11/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"Z      *
_class
loc:@Variable_11*
dtype0
u
(Variable_11/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_11*
dtype0
Ă
"Variable_11/Adam/Initializer/zerosFill2Variable_11/Adam/Initializer/zeros/shape_as_tensor(Variable_11/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_11

Variable_11/Adam
VariableV2*
_class
loc:@Variable_11*
dtype0*
	container *
shape
:Z*
shared_name 
Š
Variable_11/Adam/AssignAssignVariable_11/Adam"Variable_11/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(
\
Variable_11/Adam/readIdentityVariable_11/Adam*
T0*
_class
loc:@Variable_11

4Variable_11/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"Z      *
_class
loc:@Variable_11*
dtype0
w
*Variable_11/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_11*
dtype0
É
$Variable_11/Adam_1/Initializer/zerosFill4Variable_11/Adam_1/Initializer/zeros/shape_as_tensor*Variable_11/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_11

Variable_11/Adam_1
VariableV2*
	container *
shape
:Z*
shared_name *
_class
loc:@Variable_11*
dtype0
Ż
Variable_11/Adam_1/AssignAssignVariable_11/Adam_1$Variable_11/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(
`
Variable_11/Adam_1/readIdentityVariable_11/Adam_1*
T0*
_class
loc:@Variable_11

2Variable_13/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"Z      *
_class
loc:@Variable_13*
dtype0
u
(Variable_13/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_13*
dtype0
Ă
"Variable_13/Adam/Initializer/zerosFill2Variable_13/Adam/Initializer/zeros/shape_as_tensor(Variable_13/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_13

Variable_13/Adam
VariableV2*
dtype0*
	container *
shape
:Z*
shared_name *
_class
loc:@Variable_13
Š
Variable_13/Adam/AssignAssignVariable_13/Adam"Variable_13/Adam/Initializer/zeros*
T0*
_class
loc:@Variable_13*
validate_shape(*
use_locking(
\
Variable_13/Adam/readIdentityVariable_13/Adam*
T0*
_class
loc:@Variable_13

4Variable_13/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"Z      *
_class
loc:@Variable_13*
dtype0
w
*Variable_13/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_13*
dtype0
É
$Variable_13/Adam_1/Initializer/zerosFill4Variable_13/Adam_1/Initializer/zeros/shape_as_tensor*Variable_13/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_13

Variable_13/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_13*
dtype0*
	container *
shape
:Z
Ż
Variable_13/Adam_1/AssignAssignVariable_13/Adam_1$Variable_13/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(
`
Variable_13/Adam_1/readIdentityVariable_13/Adam_1*
T0*
_class
loc:@Variable_13

2Variable_15/Adam/Initializer/zeros/shape_as_tensorConst*
valueB"n      *
_class
loc:@Variable_15*
dtype0
u
(Variable_15/Adam/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_15*
dtype0
Ă
"Variable_15/Adam/Initializer/zerosFill2Variable_15/Adam/Initializer/zeros/shape_as_tensor(Variable_15/Adam/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_15

Variable_15/Adam
VariableV2*
shared_name *
_class
loc:@Variable_15*
dtype0*
	container *
shape
:n
Š
Variable_15/Adam/AssignAssignVariable_15/Adam"Variable_15/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(
\
Variable_15/Adam/readIdentityVariable_15/Adam*
T0*
_class
loc:@Variable_15

4Variable_15/Adam_1/Initializer/zeros/shape_as_tensorConst*
valueB"n      *
_class
loc:@Variable_15*
dtype0
w
*Variable_15/Adam_1/Initializer/zeros/ConstConst*
valueB
 *    *
_class
loc:@Variable_15*
dtype0
É
$Variable_15/Adam_1/Initializer/zerosFill4Variable_15/Adam_1/Initializer/zeros/shape_as_tensor*Variable_15/Adam_1/Initializer/zeros/Const*
T0*

index_type0*
_class
loc:@Variable_15

Variable_15/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_15*
dtype0*
	container *
shape
:n
Ż
Variable_15/Adam_1/AssignAssignVariable_15/Adam_1$Variable_15/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(
`
Variable_15/Adam_1/readIdentityVariable_15/Adam_1*
T0*
_class
loc:@Variable_15
w
"Variable_17/Adam/Initializer/zerosConst*
valueBn*    *
_class
loc:@Variable_17*
dtype0

Variable_17/Adam
VariableV2*
shape
:n*
shared_name *
_class
loc:@Variable_17*
dtype0*
	container 
Š
Variable_17/Adam/AssignAssignVariable_17/Adam"Variable_17/Adam/Initializer/zeros*
_class
loc:@Variable_17*
validate_shape(*
use_locking(*
T0
\
Variable_17/Adam/readIdentityVariable_17/Adam*
T0*
_class
loc:@Variable_17
y
$Variable_17/Adam_1/Initializer/zerosConst*
valueBn*    *
_class
loc:@Variable_17*
dtype0

Variable_17/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_17*
dtype0*
	container *
shape
:n
Ż
Variable_17/Adam_1/AssignAssignVariable_17/Adam_1$Variable_17/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_17*
validate_shape(
`
Variable_17/Adam_1/readIdentityVariable_17/Adam_1*
T0*
_class
loc:@Variable_17
x
$weight_1_bias/Adam/Initializer/zerosConst*
dtype0*
valueB˙*    * 
_class
loc:@weight_1_bias

weight_1_bias/Adam
VariableV2*
shape:˙*
shared_name * 
_class
loc:@weight_1_bias*
dtype0*
	container 
ą
weight_1_bias/Adam/AssignAssignweight_1_bias/Adam$weight_1_bias/Adam/Initializer/zeros* 
_class
loc:@weight_1_bias*
validate_shape(*
use_locking(*
T0
b
weight_1_bias/Adam/readIdentityweight_1_bias/Adam* 
_class
loc:@weight_1_bias*
T0
z
&weight_1_bias/Adam_1/Initializer/zerosConst*
dtype0*
valueB˙*    * 
_class
loc:@weight_1_bias

weight_1_bias/Adam_1
VariableV2* 
_class
loc:@weight_1_bias*
dtype0*
	container *
shape:˙*
shared_name 
ˇ
weight_1_bias/Adam_1/AssignAssignweight_1_bias/Adam_1&weight_1_bias/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0* 
_class
loc:@weight_1_bias
f
weight_1_bias/Adam_1/readIdentityweight_1_bias/Adam_1*
T0* 
_class
loc:@weight_1_bias
n
Variable/Adam/Initializer/zerosConst*
valueB×*    *
_class
loc:@Variable*
dtype0
{
Variable/Adam
VariableV2*
shared_name *
_class
loc:@Variable*
dtype0*
	container *
shape:×

Variable/Adam/AssignAssignVariable/AdamVariable/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
S
Variable/Adam/readIdentityVariable/Adam*
T0*
_class
loc:@Variable
p
!Variable/Adam_1/Initializer/zerosConst*
valueB×*    *
_class
loc:@Variable*
dtype0
}
Variable/Adam_1
VariableV2*
shape:×*
shared_name *
_class
loc:@Variable*
dtype0*
	container 
Ł
Variable/Adam_1/AssignAssignVariable/Adam_1!Variable/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(
W
Variable/Adam_1/readIdentityVariable/Adam_1*
T0*
_class
loc:@Variable
r
!Variable_2/Adam/Initializer/zerosConst*
dtype0*
valueB´*    *
_class
loc:@Variable_2

Variable_2/Adam
VariableV2*
_class
loc:@Variable_2*
dtype0*
	container *
shape:´*
shared_name 
Ľ
Variable_2/Adam/AssignAssignVariable_2/Adam!Variable_2/Adam/Initializer/zeros*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0
Y
Variable_2/Adam/readIdentityVariable_2/Adam*
T0*
_class
loc:@Variable_2
t
#Variable_2/Adam_1/Initializer/zerosConst*
valueB´*    *
_class
loc:@Variable_2*
dtype0

Variable_2/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_2*
dtype0*
	container *
shape:´
Ť
Variable_2/Adam_1/AssignAssignVariable_2/Adam_1#Variable_2/Adam_1/Initializer/zeros*
_class
loc:@Variable_2*
validate_shape(*
use_locking(*
T0
]
Variable_2/Adam_1/readIdentityVariable_2/Adam_1*
T0*
_class
loc:@Variable_2
r
!Variable_4/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_4*
dtype0

Variable_4/Adam
VariableV2*
	container *
shape:*
shared_name *
_class
loc:@Variable_4*
dtype0
Ľ
Variable_4/Adam/AssignAssignVariable_4/Adam!Variable_4/Adam/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_4
Y
Variable_4/Adam/readIdentityVariable_4/Adam*
T0*
_class
loc:@Variable_4
t
#Variable_4/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_4*
dtype0

Variable_4/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@Variable_4
Ť
Variable_4/Adam_1/AssignAssignVariable_4/Adam_1#Variable_4/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_4
]
Variable_4/Adam_1/readIdentityVariable_4/Adam_1*
T0*
_class
loc:@Variable_4
q
!Variable_6/Adam/Initializer/zerosConst*
valueBn*    *
_class
loc:@Variable_6*
dtype0
~
Variable_6/Adam
VariableV2*
shared_name *
_class
loc:@Variable_6*
dtype0*
	container *
shape:n
Ľ
Variable_6/Adam/AssignAssignVariable_6/Adam!Variable_6/Adam/Initializer/zeros*
T0*
_class
loc:@Variable_6*
validate_shape(*
use_locking(
Y
Variable_6/Adam/readIdentityVariable_6/Adam*
T0*
_class
loc:@Variable_6
s
#Variable_6/Adam_1/Initializer/zerosConst*
valueBn*    *
_class
loc:@Variable_6*
dtype0

Variable_6/Adam_1
VariableV2*
	container *
shape:n*
shared_name *
_class
loc:@Variable_6*
dtype0
Ť
Variable_6/Adam_1/AssignAssignVariable_6/Adam_1#Variable_6/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(
]
Variable_6/Adam_1/readIdentityVariable_6/Adam_1*
T0*
_class
loc:@Variable_6
q
!Variable_8/Adam/Initializer/zerosConst*
dtype0*
valueBZ*    *
_class
loc:@Variable_8
~
Variable_8/Adam
VariableV2*
shape:Z*
shared_name *
_class
loc:@Variable_8*
dtype0*
	container 
Ľ
Variable_8/Adam/AssignAssignVariable_8/Adam!Variable_8/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(
Y
Variable_8/Adam/readIdentityVariable_8/Adam*
T0*
_class
loc:@Variable_8
s
#Variable_8/Adam_1/Initializer/zerosConst*
valueBZ*    *
_class
loc:@Variable_8*
dtype0

Variable_8/Adam_1
VariableV2*
	container *
shape:Z*
shared_name *
_class
loc:@Variable_8*
dtype0
Ť
Variable_8/Adam_1/AssignAssignVariable_8/Adam_1#Variable_8/Adam_1/Initializer/zeros*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_8
]
Variable_8/Adam_1/readIdentityVariable_8/Adam_1*
T0*
_class
loc:@Variable_8
s
"Variable_10/Adam/Initializer/zerosConst*
valueBZ*    *
_class
loc:@Variable_10*
dtype0

Variable_10/Adam
VariableV2*
_class
loc:@Variable_10*
dtype0*
	container *
shape:Z*
shared_name 
Š
Variable_10/Adam/AssignAssignVariable_10/Adam"Variable_10/Adam/Initializer/zeros*
_class
loc:@Variable_10*
validate_shape(*
use_locking(*
T0
\
Variable_10/Adam/readIdentityVariable_10/Adam*
T0*
_class
loc:@Variable_10
u
$Variable_10/Adam_1/Initializer/zerosConst*
valueBZ*    *
_class
loc:@Variable_10*
dtype0

Variable_10/Adam_1
VariableV2*
_class
loc:@Variable_10*
dtype0*
	container *
shape:Z*
shared_name 
Ż
Variable_10/Adam_1/AssignAssignVariable_10/Adam_1$Variable_10/Adam_1/Initializer/zeros*
T0*
_class
loc:@Variable_10*
validate_shape(*
use_locking(
`
Variable_10/Adam_1/readIdentityVariable_10/Adam_1*
T0*
_class
loc:@Variable_10
s
"Variable_12/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_12*
dtype0

Variable_12/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@Variable_12
Š
Variable_12/Adam/AssignAssignVariable_12/Adam"Variable_12/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(
\
Variable_12/Adam/readIdentityVariable_12/Adam*
T0*
_class
loc:@Variable_12
u
$Variable_12/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_12*
dtype0

Variable_12/Adam_1
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@Variable_12
Ż
Variable_12/Adam_1/AssignAssignVariable_12/Adam_1$Variable_12/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(
`
Variable_12/Adam_1/readIdentityVariable_12/Adam_1*
T0*
_class
loc:@Variable_12
s
"Variable_14/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_14*
dtype0

Variable_14/Adam
VariableV2*
dtype0*
	container *
shape:*
shared_name *
_class
loc:@Variable_14
Š
Variable_14/Adam/AssignAssignVariable_14/Adam"Variable_14/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(
\
Variable_14/Adam/readIdentityVariable_14/Adam*
T0*
_class
loc:@Variable_14
u
$Variable_14/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_14*
dtype0

Variable_14/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_14*
dtype0*
	container *
shape:
Ż
Variable_14/Adam_1/AssignAssignVariable_14/Adam_1$Variable_14/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(
`
Variable_14/Adam_1/readIdentityVariable_14/Adam_1*
T0*
_class
loc:@Variable_14
s
"Variable_16/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_16*
dtype0

Variable_16/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@Variable_16*
dtype0*
	container 
Š
Variable_16/Adam/AssignAssignVariable_16/Adam"Variable_16/Adam/Initializer/zeros*
T0*
_class
loc:@Variable_16*
validate_shape(*
use_locking(
\
Variable_16/Adam/readIdentityVariable_16/Adam*
T0*
_class
loc:@Variable_16
u
$Variable_16/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_16*
dtype0

Variable_16/Adam_1
VariableV2*
shared_name *
_class
loc:@Variable_16*
dtype0*
	container *
shape:
Ż
Variable_16/Adam_1/AssignAssignVariable_16/Adam_1$Variable_16/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_16*
validate_shape(
`
Variable_16/Adam_1/readIdentityVariable_16/Adam_1*
T0*
_class
loc:@Variable_16
s
"Variable_18/Adam/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_18*
dtype0

Variable_18/Adam
VariableV2*
shape:*
shared_name *
_class
loc:@Variable_18*
dtype0*
	container 
Š
Variable_18/Adam/AssignAssignVariable_18/Adam"Variable_18/Adam/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_18*
validate_shape(
\
Variable_18/Adam/readIdentityVariable_18/Adam*
T0*
_class
loc:@Variable_18
u
$Variable_18/Adam_1/Initializer/zerosConst*
valueB*    *
_class
loc:@Variable_18*
dtype0

Variable_18/Adam_1
VariableV2*
_class
loc:@Variable_18*
dtype0*
	container *
shape:*
shared_name 
Ż
Variable_18/Adam_1/AssignAssignVariable_18/Adam_1$Variable_18/Adam_1/Initializer/zeros*
use_locking(*
T0*
_class
loc:@Variable_18*
validate_shape(
`
Variable_18/Adam_1/readIdentityVariable_18/Adam_1*
T0*
_class
loc:@Variable_18
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
Adam/beta2Adam/epsilon0gradients/MatMul_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@weight_1*
use_nesterov( 
˛
Adam/update_weight_2/ApplyAdam	ApplyAdamweight_2weight_2/Adamweight_2/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_1_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@weight_2*
use_nesterov( 
ź
 Adam/update_Variable_1/ApplyAdam	ApplyAdam
Variable_1Variable_1/AdamVariable_1/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_2_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_1*
use_nesterov( *
use_locking( 
ź
 Adam/update_Variable_3/ApplyAdam	ApplyAdam
Variable_3Variable_3/AdamVariable_3/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_3_grad/tuple/control_dependency_1*
T0*
_class
loc:@Variable_3*
use_nesterov( *
use_locking( 
ź
 Adam/update_Variable_5/ApplyAdam	ApplyAdam
Variable_5Variable_5/AdamVariable_5/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_4_grad/tuple/control_dependency_1*
_class
loc:@Variable_5*
use_nesterov( *
use_locking( *
T0
ź
 Adam/update_Variable_7/ApplyAdam	ApplyAdam
Variable_7Variable_7/AdamVariable_7/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_5_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_7*
use_nesterov( 
ź
 Adam/update_Variable_9/ApplyAdam	ApplyAdam
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_6_grad/tuple/control_dependency_1*
_class
loc:@Variable_9*
use_nesterov( *
use_locking( *
T0
Á
!Adam/update_Variable_11/ApplyAdam	ApplyAdamVariable_11Variable_11/AdamVariable_11/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_7_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_11*
use_nesterov( 
Á
!Adam/update_Variable_13/ApplyAdam	ApplyAdamVariable_13Variable_13/AdamVariable_13/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_8_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_13*
use_nesterov( 
Á
!Adam/update_Variable_15/ApplyAdam	ApplyAdamVariable_15Variable_15/AdamVariable_15/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon2gradients/MatMul_9_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_15*
use_nesterov( 
Â
!Adam/update_Variable_17/ApplyAdam	ApplyAdamVariable_17Variable_17/AdamVariable_17/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon3gradients/MatMul_10_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_17*
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

Adam/update_Variable/ApplyAdam	ApplyAdamVariableVariable/AdamVariable/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_4*
use_locking( *
T0*
_class
loc:@Variable*
use_nesterov( 

 Adam/update_Variable_2/ApplyAdam	ApplyAdam
Variable_2Variable_2/AdamVariable_2/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_3*
use_locking( *
T0*
_class
loc:@Variable_2*
use_nesterov( 

 Adam/update_Variable_4/ApplyAdam	ApplyAdam
Variable_4Variable_4/AdamVariable_4/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_2*
use_locking( *
T0*
_class
loc:@Variable_4*
use_nesterov( 

 Adam/update_Variable_6/ApplyAdam	ApplyAdam
Variable_6Variable_6/AdamVariable_6/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_1*
use_locking( *
T0*
_class
loc:@Variable_6*
use_nesterov( 
š
 Adam/update_Variable_8/ApplyAdam	ApplyAdam
Variable_8Variable_8/AdamVariable_8/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_5_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_8*
use_nesterov( 
ž
!Adam/update_Variable_10/ApplyAdam	ApplyAdamVariable_10Variable_10/AdamVariable_10/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_6_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_10*
use_nesterov( 
ž
!Adam/update_Variable_12/ApplyAdam	ApplyAdamVariable_12Variable_12/AdamVariable_12/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_7_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_12*
use_nesterov( 
ž
!Adam/update_Variable_14/ApplyAdam	ApplyAdamVariable_14Variable_14/AdamVariable_14/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_8_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@Variable_14
ž
!Adam/update_Variable_16/ApplyAdam	ApplyAdamVariable_16Variable_16/AdamVariable_16/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon/gradients/Add_9_grad/tuple/control_dependency_1*
use_nesterov( *
use_locking( *
T0*
_class
loc:@Variable_16
ż
!Adam/update_Variable_18/ApplyAdam	ApplyAdamVariable_18Variable_18/AdamVariable_18/Adam_1beta1_power/readbeta2_power/readExponentialDecay
Adam/beta1
Adam/beta2Adam/epsilon0gradients/Add_10_grad/tuple/control_dependency_1*
use_locking( *
T0*
_class
loc:@Variable_18*
use_nesterov( 
Ű
Adam/mulMulbeta1_power/read
Adam/beta1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam"^Adam/update_Variable_10/ApplyAdam"^Adam/update_Variable_11/ApplyAdam"^Adam/update_Variable_12/ApplyAdam"^Adam/update_Variable_13/ApplyAdam"^Adam/update_Variable_14/ApplyAdam"^Adam/update_Variable_15/ApplyAdam"^Adam/update_Variable_16/ApplyAdam"^Adam/update_Variable_17/ApplyAdam"^Adam/update_Variable_18/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam^Adam/update_weight_1/ApplyAdam$^Adam/update_weight_1_bias/ApplyAdam^Adam/update_weight_2/ApplyAdam*
T0*
_class
loc:@Variable
{
Adam/AssignAssignbeta1_powerAdam/mul*
_class
loc:@Variable*
validate_shape(*
use_locking( *
T0
Ý

Adam/mul_1Mulbeta2_power/read
Adam/beta2^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam"^Adam/update_Variable_10/ApplyAdam"^Adam/update_Variable_11/ApplyAdam"^Adam/update_Variable_12/ApplyAdam"^Adam/update_Variable_13/ApplyAdam"^Adam/update_Variable_14/ApplyAdam"^Adam/update_Variable_15/ApplyAdam"^Adam/update_Variable_16/ApplyAdam"^Adam/update_Variable_17/ApplyAdam"^Adam/update_Variable_18/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam^Adam/update_weight_1/ApplyAdam$^Adam/update_weight_1_bias/ApplyAdam^Adam/update_weight_2/ApplyAdam*
T0*
_class
loc:@Variable

Adam/Assign_1Assignbeta2_power
Adam/mul_1*
validate_shape(*
use_locking( *
T0*
_class
loc:@Variable
˛
AdamNoOp^Adam/Assign^Adam/Assign_1^Adam/update_Variable/ApplyAdam!^Adam/update_Variable_1/ApplyAdam"^Adam/update_Variable_10/ApplyAdam"^Adam/update_Variable_11/ApplyAdam"^Adam/update_Variable_12/ApplyAdam"^Adam/update_Variable_13/ApplyAdam"^Adam/update_Variable_14/ApplyAdam"^Adam/update_Variable_15/ApplyAdam"^Adam/update_Variable_16/ApplyAdam"^Adam/update_Variable_17/ApplyAdam"^Adam/update_Variable_18/ApplyAdam!^Adam/update_Variable_2/ApplyAdam!^Adam/update_Variable_3/ApplyAdam!^Adam/update_Variable_4/ApplyAdam!^Adam/update_Variable_5/ApplyAdam!^Adam/update_Variable_6/ApplyAdam!^Adam/update_Variable_7/ApplyAdam!^Adam/update_Variable_8/ApplyAdam!^Adam/update_Variable_9/ApplyAdam^Adam/update_weight_1/ApplyAdam$^Adam/update_weight_1_bias/ApplyAdam^Adam/update_weight_2/ApplyAdam
:
ArgMax/dimensionConst*
value	B :*
dtype0
V
ArgMaxArgMax
y_action_1ArgMax/dimension*
T0*
output_type0	*

Tidx0
<
ArgMax_1/dimensionConst*
value	B :*
dtype0
Y
ArgMax_1ArgMax	Sigmoid_7ArgMax_1/dimension*
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
y_action_2ArgMax_2/dimension*

Tidx0*
T0*
output_type0	
<
ArgMax_3/dimensionConst*
value	B :*
dtype0
Y
ArgMax_3ArgMax	Sigmoid_8ArgMax_3/dimension*

Tidx0*
T0*
output_type0	
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
Y
ArgMax_5ArgMax	Sigmoid_9ArgMax_5/dimension*
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
ArgMax_6ArgMaxy_phoneArgMax_6/dimension*

Tidx0*
T0*
output_type0	
<
ArgMax_7/dimensionConst*
dtype0*
value	B :
Z
ArgMax_7ArgMax
Sigmoid_10ArgMax_7/dimension*

Tidx0*
T0*
output_type0	
-
Equal_3EqualArgMax_6ArgMax_7*
T0	
;
CastCastEqual*
Truncate( *

DstT0*

SrcT0

5
Const_9Const*
valueB: *
dtype0
C
Mean_4MeanCastConst_9*

Tidx0*
	keep_dims( *
T0
?
Cast_1CastEqual_1*

SrcT0
*
Truncate( *

DstT0
6
Const_10Const*
valueB: *
dtype0
F
Mean_5MeanCast_1Const_10*

Tidx0*
	keep_dims( *
T0
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
add_19AddMean_4Mean_5*
T0
&
add_20Addadd_19Mean_6*
T0
&
add_21Addadd_20Mean_7*
T0
6
	truediv/yConst*
valueB
 *  @*
dtype0
.
truedivRealDivadd_21	truediv/y*
T0
A
save/filename/inputConst*
dtype0*
valueB Bmodel
V
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
shape: 
M

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
shape: 
	
save/SaveV2/tensor_namesConst*á
value×BÔDBVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1BVariable_10BVariable_10/AdamBVariable_10/Adam_1BVariable_11BVariable_11/AdamBVariable_11/Adam_1BVariable_12BVariable_12/AdamBVariable_12/Adam_1BVariable_13BVariable_13/AdamBVariable_13/Adam_1BVariable_14BVariable_14/AdamBVariable_14/Adam_1BVariable_15BVariable_15/AdamBVariable_15/Adam_1BVariable_16BVariable_16/AdamBVariable_16/Adam_1BVariable_17BVariable_17/AdamBVariable_17/Adam_1BVariable_18BVariable_18/AdamBVariable_18/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_powerBweight_1Bweight_1/AdamBweight_1/Adam_1Bweight_1_biasBweight_1_bias/AdamBweight_1_bias/Adam_1Bweight_2Bweight_2/AdamBweight_2/Adam_1*
dtype0
Ň
save/SaveV2/shape_and_slicesConst*
valueBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
ů	
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesVariableVariable/AdamVariable/Adam_1
Variable_1Variable_1/AdamVariable_1/Adam_1Variable_10Variable_10/AdamVariable_10/Adam_1Variable_11Variable_11/AdamVariable_11/Adam_1Variable_12Variable_12/AdamVariable_12/Adam_1Variable_13Variable_13/AdamVariable_13/Adam_1Variable_14Variable_14/AdamVariable_14/Adam_1Variable_15Variable_15/AdamVariable_15/Adam_1Variable_16Variable_16/AdamVariable_16/Adam_1Variable_17Variable_17/AdamVariable_17/Adam_1Variable_18Variable_18/AdamVariable_18/Adam_1
Variable_2Variable_2/AdamVariable_2/Adam_1
Variable_3Variable_3/AdamVariable_3/Adam_1
Variable_4Variable_4/AdamVariable_4/Adam_1
Variable_5Variable_5/AdamVariable_5/Adam_1
Variable_6Variable_6/AdamVariable_6/Adam_1
Variable_7Variable_7/AdamVariable_7/Adam_1
Variable_8Variable_8/AdamVariable_8/Adam_1
Variable_9Variable_9/AdamVariable_9/Adam_1beta1_powerbeta2_powerweight_1weight_1/Adamweight_1/Adam_1weight_1_biasweight_1_bias/Adamweight_1_bias/Adam_1weight_2weight_2/Adamweight_2/Adam_1*R
dtypesH
F2D
e
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const
¤	
save/RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*á
value×BÔDBVariableBVariable/AdamBVariable/Adam_1B
Variable_1BVariable_1/AdamBVariable_1/Adam_1BVariable_10BVariable_10/AdamBVariable_10/Adam_1BVariable_11BVariable_11/AdamBVariable_11/Adam_1BVariable_12BVariable_12/AdamBVariable_12/Adam_1BVariable_13BVariable_13/AdamBVariable_13/Adam_1BVariable_14BVariable_14/AdamBVariable_14/Adam_1BVariable_15BVariable_15/AdamBVariable_15/Adam_1BVariable_16BVariable_16/AdamBVariable_16/Adam_1BVariable_17BVariable_17/AdamBVariable_17/Adam_1BVariable_18BVariable_18/AdamBVariable_18/Adam_1B
Variable_2BVariable_2/AdamBVariable_2/Adam_1B
Variable_3BVariable_3/AdamBVariable_3/Adam_1B
Variable_4BVariable_4/AdamBVariable_4/Adam_1B
Variable_5BVariable_5/AdamBVariable_5/Adam_1B
Variable_6BVariable_6/AdamBVariable_6/Adam_1B
Variable_7BVariable_7/AdamBVariable_7/Adam_1B
Variable_8BVariable_8/AdamBVariable_8/Adam_1B
Variable_9BVariable_9/AdamBVariable_9/Adam_1Bbeta1_powerBbeta2_powerBweight_1Bweight_1/AdamBweight_1/Adam_1Bweight_1_biasBweight_1_bias/AdamBweight_1_bias/Adam_1Bweight_2Bweight_2/AdamBweight_2/Adam_1
ä
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBDB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B *
dtype0
Č
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*R
dtypesH
F2D
~
save/AssignAssignVariablesave/RestoreV2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable

save/Assign_1AssignVariable/Adamsave/RestoreV2:1*
use_locking(*
T0*
_class
loc:@Variable*
validate_shape(

save/Assign_2AssignVariable/Adam_1save/RestoreV2:2*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable

save/Assign_3Assign
Variable_1save/RestoreV2:3*
T0*
_class
loc:@Variable_1*
validate_shape(*
use_locking(

save/Assign_4AssignVariable_1/Adamsave/RestoreV2:4*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(

save/Assign_5AssignVariable_1/Adam_1save/RestoreV2:5*
use_locking(*
T0*
_class
loc:@Variable_1*
validate_shape(

save/Assign_6AssignVariable_10save/RestoreV2:6*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(

save/Assign_7AssignVariable_10/Adamsave/RestoreV2:7*
T0*
_class
loc:@Variable_10*
validate_shape(*
use_locking(

save/Assign_8AssignVariable_10/Adam_1save/RestoreV2:8*
use_locking(*
T0*
_class
loc:@Variable_10*
validate_shape(

save/Assign_9AssignVariable_11save/RestoreV2:9*
T0*
_class
loc:@Variable_11*
validate_shape(*
use_locking(

save/Assign_10AssignVariable_11/Adamsave/RestoreV2:10*
use_locking(*
T0*
_class
loc:@Variable_11*
validate_shape(

save/Assign_11AssignVariable_11/Adam_1save/RestoreV2:11*
_class
loc:@Variable_11*
validate_shape(*
use_locking(*
T0

save/Assign_12AssignVariable_12save/RestoreV2:12*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(

save/Assign_13AssignVariable_12/Adamsave/RestoreV2:13*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(

save/Assign_14AssignVariable_12/Adam_1save/RestoreV2:14*
use_locking(*
T0*
_class
loc:@Variable_12*
validate_shape(

save/Assign_15AssignVariable_13save/RestoreV2:15*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(

save/Assign_16AssignVariable_13/Adamsave/RestoreV2:16*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(

save/Assign_17AssignVariable_13/Adam_1save/RestoreV2:17*
use_locking(*
T0*
_class
loc:@Variable_13*
validate_shape(

save/Assign_18AssignVariable_14save/RestoreV2:18*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(

save/Assign_19AssignVariable_14/Adamsave/RestoreV2:19*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_14

save/Assign_20AssignVariable_14/Adam_1save/RestoreV2:20*
use_locking(*
T0*
_class
loc:@Variable_14*
validate_shape(

save/Assign_21AssignVariable_15save/RestoreV2:21*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(

save/Assign_22AssignVariable_15/Adamsave/RestoreV2:22*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(

save/Assign_23AssignVariable_15/Adam_1save/RestoreV2:23*
use_locking(*
T0*
_class
loc:@Variable_15*
validate_shape(

save/Assign_24AssignVariable_16save/RestoreV2:24*
use_locking(*
T0*
_class
loc:@Variable_16*
validate_shape(

save/Assign_25AssignVariable_16/Adamsave/RestoreV2:25*
T0*
_class
loc:@Variable_16*
validate_shape(*
use_locking(

save/Assign_26AssignVariable_16/Adam_1save/RestoreV2:26*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_16

save/Assign_27AssignVariable_17save/RestoreV2:27*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_17

save/Assign_28AssignVariable_17/Adamsave/RestoreV2:28*
use_locking(*
T0*
_class
loc:@Variable_17*
validate_shape(

save/Assign_29AssignVariable_17/Adam_1save/RestoreV2:29*
use_locking(*
T0*
_class
loc:@Variable_17*
validate_shape(

save/Assign_30AssignVariable_18save/RestoreV2:30*
T0*
_class
loc:@Variable_18*
validate_shape(*
use_locking(

save/Assign_31AssignVariable_18/Adamsave/RestoreV2:31*
T0*
_class
loc:@Variable_18*
validate_shape(*
use_locking(

save/Assign_32AssignVariable_18/Adam_1save/RestoreV2:32*
use_locking(*
T0*
_class
loc:@Variable_18*
validate_shape(

save/Assign_33Assign
Variable_2save/RestoreV2:33*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(

save/Assign_34AssignVariable_2/Adamsave/RestoreV2:34*
use_locking(*
T0*
_class
loc:@Variable_2*
validate_shape(

save/Assign_35AssignVariable_2/Adam_1save/RestoreV2:35*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_2

save/Assign_36Assign
Variable_3save/RestoreV2:36*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(

save/Assign_37AssignVariable_3/Adamsave/RestoreV2:37*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(

save/Assign_38AssignVariable_3/Adam_1save/RestoreV2:38*
use_locking(*
T0*
_class
loc:@Variable_3*
validate_shape(

save/Assign_39Assign
Variable_4save/RestoreV2:39*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(

save/Assign_40AssignVariable_4/Adamsave/RestoreV2:40*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(

save/Assign_41AssignVariable_4/Adam_1save/RestoreV2:41*
use_locking(*
T0*
_class
loc:@Variable_4*
validate_shape(

save/Assign_42Assign
Variable_5save/RestoreV2:42*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(

save/Assign_43AssignVariable_5/Adamsave/RestoreV2:43*
use_locking(*
T0*
_class
loc:@Variable_5*
validate_shape(

save/Assign_44AssignVariable_5/Adam_1save/RestoreV2:44*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_5

save/Assign_45Assign
Variable_6save/RestoreV2:45*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_6

save/Assign_46AssignVariable_6/Adamsave/RestoreV2:46*
use_locking(*
T0*
_class
loc:@Variable_6*
validate_shape(

save/Assign_47AssignVariable_6/Adam_1save/RestoreV2:47*
_class
loc:@Variable_6*
validate_shape(*
use_locking(*
T0

save/Assign_48Assign
Variable_7save/RestoreV2:48*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(

save/Assign_49AssignVariable_7/Adamsave/RestoreV2:49*
T0*
_class
loc:@Variable_7*
validate_shape(*
use_locking(

save/Assign_50AssignVariable_7/Adam_1save/RestoreV2:50*
use_locking(*
T0*
_class
loc:@Variable_7*
validate_shape(

save/Assign_51Assign
Variable_8save/RestoreV2:51*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(

save/Assign_52AssignVariable_8/Adamsave/RestoreV2:52*
T0*
_class
loc:@Variable_8*
validate_shape(*
use_locking(

save/Assign_53AssignVariable_8/Adam_1save/RestoreV2:53*
use_locking(*
T0*
_class
loc:@Variable_8*
validate_shape(

save/Assign_54Assign
Variable_9save/RestoreV2:54*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(

save/Assign_55AssignVariable_9/Adamsave/RestoreV2:55*
validate_shape(*
use_locking(*
T0*
_class
loc:@Variable_9

save/Assign_56AssignVariable_9/Adam_1save/RestoreV2:56*
use_locking(*
T0*
_class
loc:@Variable_9*
validate_shape(

save/Assign_57Assignbeta1_powersave/RestoreV2:57*
_class
loc:@Variable*
validate_shape(*
use_locking(*
T0

save/Assign_58Assignbeta2_powersave/RestoreV2:58*
T0*
_class
loc:@Variable*
validate_shape(*
use_locking(

save/Assign_59Assignweight_1save/RestoreV2:59*
use_locking(*
T0*
_class
loc:@weight_1*
validate_shape(

save/Assign_60Assignweight_1/Adamsave/RestoreV2:60*
_class
loc:@weight_1*
validate_shape(*
use_locking(*
T0

save/Assign_61Assignweight_1/Adam_1save/RestoreV2:61*
use_locking(*
T0*
_class
loc:@weight_1*
validate_shape(

save/Assign_62Assignweight_1_biassave/RestoreV2:62*
use_locking(*
T0* 
_class
loc:@weight_1_bias*
validate_shape(

save/Assign_63Assignweight_1_bias/Adamsave/RestoreV2:63*
use_locking(*
T0* 
_class
loc:@weight_1_bias*
validate_shape(

save/Assign_64Assignweight_1_bias/Adam_1save/RestoreV2:64*
use_locking(*
T0* 
_class
loc:@weight_1_bias*
validate_shape(

save/Assign_65Assignweight_2save/RestoreV2:65*
T0*
_class
loc:@weight_2*
validate_shape(*
use_locking(

save/Assign_66Assignweight_2/Adamsave/RestoreV2:66*
use_locking(*
T0*
_class
loc:@weight_2*
validate_shape(

save/Assign_67Assignweight_2/Adam_1save/RestoreV2:67*
use_locking(*
T0*
_class
loc:@weight_2*
validate_shape(
	
save/restore_allNoOp^save/Assign^save/Assign_1^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15^save/Assign_16^save/Assign_17^save/Assign_18^save/Assign_19^save/Assign_2^save/Assign_20^save/Assign_21^save/Assign_22^save/Assign_23^save/Assign_24^save/Assign_25^save/Assign_26^save/Assign_27^save/Assign_28^save/Assign_29^save/Assign_3^save/Assign_30^save/Assign_31^save/Assign_32^save/Assign_33^save/Assign_34^save/Assign_35^save/Assign_36^save/Assign_37^save/Assign_38^save/Assign_39^save/Assign_4^save/Assign_40^save/Assign_41^save/Assign_42^save/Assign_43^save/Assign_44^save/Assign_45^save/Assign_46^save/Assign_47^save/Assign_48^save/Assign_49^save/Assign_5^save/Assign_50^save/Assign_51^save/Assign_52^save/Assign_53^save/Assign_54^save/Assign_55^save/Assign_56^save/Assign_57^save/Assign_58^save/Assign_59^save/Assign_6^save/Assign_60^save/Assign_61^save/Assign_62^save/Assign_63^save/Assign_64^save/Assign_65^save/Assign_66^save/Assign_67^save/Assign_7^save/Assign_8^save/Assign_9
ř
initNoOp^Variable/Adam/Assign^Variable/Adam_1/Assign^Variable/Assign^Variable_1/Adam/Assign^Variable_1/Adam_1/Assign^Variable_1/Assign^Variable_10/Adam/Assign^Variable_10/Adam_1/Assign^Variable_10/Assign^Variable_11/Adam/Assign^Variable_11/Adam_1/Assign^Variable_11/Assign^Variable_12/Adam/Assign^Variable_12/Adam_1/Assign^Variable_12/Assign^Variable_13/Adam/Assign^Variable_13/Adam_1/Assign^Variable_13/Assign^Variable_14/Adam/Assign^Variable_14/Adam_1/Assign^Variable_14/Assign^Variable_15/Adam/Assign^Variable_15/Adam_1/Assign^Variable_15/Assign^Variable_16/Adam/Assign^Variable_16/Adam_1/Assign^Variable_16/Assign^Variable_17/Adam/Assign^Variable_17/Adam_1/Assign^Variable_17/Assign^Variable_18/Adam/Assign^Variable_18/Adam_1/Assign^Variable_18/Assign^Variable_2/Adam/Assign^Variable_2/Adam_1/Assign^Variable_2/Assign^Variable_3/Adam/Assign^Variable_3/Adam_1/Assign^Variable_3/Assign^Variable_4/Adam/Assign^Variable_4/Adam_1/Assign^Variable_4/Assign^Variable_5/Adam/Assign^Variable_5/Adam_1/Assign^Variable_5/Assign^Variable_6/Adam/Assign^Variable_6/Adam_1/Assign^Variable_6/Assign^Variable_7/Adam/Assign^Variable_7/Adam_1/Assign^Variable_7/Assign^Variable_8/Adam/Assign^Variable_8/Adam_1/Assign^Variable_8/Assign^Variable_9/Adam/Assign^Variable_9/Adam_1/Assign^Variable_9/Assign^beta1_power/Assign^beta2_power/Assign^weight_1/Adam/Assign^weight_1/Adam_1/Assign^weight_1/Assign^weight_1_bias/Adam/Assign^weight_1_bias/Adam_1/Assign^weight_1_bias/Assign^weight_2/Adam/Assign^weight_2/Adam_1/Assign^weight_2/Assign"&
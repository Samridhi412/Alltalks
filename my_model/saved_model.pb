Á0
ç
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68ú¸.
t
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*
shared_namedense/kernel
m
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*
_output_shapes

:@@*
dtype0
l

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name
dense/bias
e
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes
:@*
dtype0
x
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namedense_1/kernel
q
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes

:@ *
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
: *
dtype0
x
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namedense_2/kernel
q
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes

: *
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0

lstm/lstm_cell/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
þ*&
shared_namelstm/lstm_cell/kernel

)lstm/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/kernel* 
_output_shapes
:
þ*
dtype0

lstm/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*0
shared_name!lstm/lstm_cell/recurrent_kernel

3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOplstm/lstm_cell/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm/lstm_cell/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_namelstm/lstm_cell/bias
x
'lstm/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm/lstm_cell/bias*
_output_shapes	
:*
dtype0

lstm_1/lstm_cell_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@**
shared_namelstm_1/lstm_cell_1/kernel

-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/kernel*
_output_shapes
:	@*
dtype0
¤
#lstm_1/lstm_cell_1/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*4
shared_name%#lstm_1/lstm_cell_1/recurrent_kernel

7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_1/lstm_cell_1/recurrent_kernel* 
_output_shapes
:
*
dtype0

lstm_1/lstm_cell_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_1/lstm_cell_1/bias

+lstm_1/lstm_cell_1/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell_1/bias*
_output_shapes	
:*
dtype0

lstm_2/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_namelstm_2/lstm_cell_2/kernel

-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/kernel* 
_output_shapes
:
*
dtype0
£
#lstm_2/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*4
shared_name%#lstm_2/lstm_cell_2/recurrent_kernel

7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_2/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm_2/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_2/lstm_cell_2/bias

+lstm_2/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/bias*
_output_shapes	
:*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*$
shared_nameAdam/dense/kernel/m
{
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m*
_output_shapes

:@@*
dtype0
z
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/m
s
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes
:@*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes

:@ *
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
: *
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes

: *
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0

Adam/lstm/lstm_cell/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
þ*-
shared_nameAdam/lstm/lstm_cell/kernel/m

0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/m* 
_output_shapes
:
þ*
dtype0
©
&Adam/lstm/lstm_cell/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/m
¢
:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

Adam/lstm/lstm_cell/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/m

.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/m*
_output_shapes	
:*
dtype0

 Adam/lstm_1/lstm_cell_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/m

4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/m*
_output_shapes
:	@*
dtype0
²
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
«
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m* 
_output_shapes
:
*
dtype0

Adam/lstm_1/lstm_cell_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_1/lstm_cell_1/bias/m

2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/m*
_output_shapes	
:*
dtype0

 Adam/lstm_2/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/m

4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/m* 
_output_shapes
:
*
dtype0
±
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
ª
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

Adam/lstm_2/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_2/lstm_cell_2/bias/m

2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/m*
_output_shapes	
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@@*$
shared_nameAdam/dense/kernel/v
{
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v*
_output_shapes

:@@*
dtype0
z
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*"
shared_nameAdam/dense/bias/v
s
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes
:@*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes

:@ *
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
: *
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes

: *
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

Adam/lstm/lstm_cell/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
þ*-
shared_nameAdam/lstm/lstm_cell/kernel/v

0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/kernel/v* 
_output_shapes
:
þ*
dtype0
©
&Adam/lstm/lstm_cell/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*7
shared_name(&Adam/lstm/lstm_cell/recurrent_kernel/v
¢
:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp&Adam/lstm/lstm_cell/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

Adam/lstm/lstm_cell/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_nameAdam/lstm/lstm_cell/bias/v

.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm/lstm_cell/bias/v*
_output_shapes	
:*
dtype0

 Adam/lstm_1/lstm_cell_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*1
shared_name" Adam/lstm_1/lstm_cell_1/kernel/v

4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_1/lstm_cell_1/kernel/v*
_output_shapes
:	@*
dtype0
²
*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*;
shared_name,*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
«
>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v* 
_output_shapes
:
*
dtype0

Adam/lstm_1/lstm_cell_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_1/lstm_cell_1/bias/v

2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_1/lstm_cell_1/bias/v*
_output_shapes	
:*
dtype0

 Adam/lstm_2/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/v

4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/v* 
_output_shapes
:
*
dtype0
±
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
ª
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

Adam/lstm_2/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_2/lstm_cell_2/bias/v

2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
¬e
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*çd
valueÝdBÚd BÓd
¶
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
Á
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
Á
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses*
Á
"cell
#
state_spec
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(_random_generator
)__call__
**&call_and_return_all_conditional_losses*
¦

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses*
¦

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses*
¦

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses*
ð
Citer

Dbeta_1

Ebeta_2
	Fdecay
Glearning_rate+mª,m«3m¬4m­;m®<m¯Hm°Im±Jm²Km³Lm´MmµNm¶Om·Pm¸+v¹,vº3v»4v¼;v½<v¾Hv¿IvÀJvÁKvÂLvÃMvÄNvÅOvÆPvÇ*
r
H0
I1
J2
K3
L4
M5
N6
O7
P8
+9
,10
311
412
;13
<14*
r
H0
I1
J2
K3
L4
M5
N6
O7
P8
+9
,10
311
412
;13
<14*
* 
°
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Vserving_default* 
ã
W
state_size

Hkernel
Irecurrent_kernel
Jbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\_random_generator
]__call__
*^&call_and_return_all_conditional_losses*
* 

H0
I1
J2*

H0
I1
J2*
* 


_states
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
ã
e
state_size

Kkernel
Lrecurrent_kernel
Mbias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses*
* 

K0
L1
M2*

K0
L1
M2*
* 


mstates
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*
* 
* 
* 
ã
s
state_size

Nkernel
Orecurrent_kernel
Pbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x_random_generator
y__call__
*z&call_and_return_all_conditional_losses*
* 

N0
O1
P2*

N0
O1
P2*
* 
 

{states
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
$	variables
%trainable_variables
&regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses*
* 
* 
* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

+0
,1*

+0
,1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

30
41*

30
41*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

;0
<1*

;0
<1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUElstm/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUElstm/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_1/lstm_cell_1/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_1/lstm_cell_1/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_1/lstm_cell_1/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_2/lstm_cell_2/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#lstm_2/lstm_cell_2/recurrent_kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_2/lstm_cell_2/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

0
1*
* 
* 
* 
* 

H0
I1
J2*

H0
I1
J2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 

K0
L1
M2*

K0
L1
M2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
* 
* 
* 
* 

N0
O1
P2*

N0
O1
P2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
t	variables
utrainable_variables
vregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

"0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

¡total

¢count
£	variables
¤	keras_api*
M

¥total

¦count
§
_fn_kwargs
¨	variables
©	keras_api*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

¡0
¢1*

£	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

¥0
¦1*

¨	variables*
y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/lstm/lstm_cell/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUE&Adam/lstm/lstm_cell/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUEAdam/lstm/lstm_cell/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_1/lstm_cell_1/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_1/lstm_cell_1/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_lstm_inputPlaceholder*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
dtype0*!
shape:ÿÿÿÿÿÿÿÿÿþ
¨
StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_inputlstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_125269
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¿
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp)lstm/lstm_cell/kernel/Read/ReadVariableOp3lstm/lstm_cell/recurrent_kernel/Read/ReadVariableOp'lstm/lstm_cell/bias/Read/ReadVariableOp-lstm_1/lstm_cell_1/kernel/Read/ReadVariableOp7lstm_1/lstm_cell_1/recurrent_kernel/Read/ReadVariableOp+lstm_1/lstm_cell_1/bias/Read/ReadVariableOp-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOp7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp+lstm_2/lstm_cell_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/m/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/m/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/m/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/m/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/m/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp0Adam/lstm/lstm_cell/kernel/v/Read/ReadVariableOp:Adam/lstm/lstm_cell/recurrent_kernel/v/Read/ReadVariableOp.Adam/lstm/lstm_cell/bias/v/Read/ReadVariableOp4Adam/lstm_1/lstm_cell_1/kernel/v/Read/ReadVariableOp>Adam/lstm_1/lstm_cell_1/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_1/lstm_cell_1/bias/v/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOpConst*C
Tin<
:28	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__traced_save_127656

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm/lstm_cell/kernellstm/lstm_cell/recurrent_kernellstm/lstm_cell/biaslstm_1/lstm_cell_1/kernel#lstm_1/lstm_cell_1/recurrent_kernellstm_1/lstm_cell_1/biaslstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biastotalcounttotal_1count_1Adam/dense/kernel/mAdam/dense/bias/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/dense_2/kernel/mAdam/dense_2/bias/mAdam/lstm/lstm_cell/kernel/m&Adam/lstm/lstm_cell/recurrent_kernel/mAdam/lstm/lstm_cell/bias/m Adam/lstm_1/lstm_cell_1/kernel/m*Adam/lstm_1/lstm_cell_1/recurrent_kernel/mAdam/lstm_1/lstm_cell_1/bias/m Adam/lstm_2/lstm_cell_2/kernel/m*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mAdam/lstm_2/lstm_cell_2/bias/mAdam/dense/kernel/vAdam/dense/bias/vAdam/dense_1/kernel/vAdam/dense_1/bias/vAdam/dense_2/kernel/vAdam/dense_2/bias/vAdam/lstm/lstm_cell/kernel/v&Adam/lstm/lstm_cell/recurrent_kernel/vAdam/lstm/lstm_cell/bias/v Adam/lstm_1/lstm_cell_1/kernel/v*Adam/lstm_1/lstm_cell_1/recurrent_kernel/vAdam/lstm_1/lstm_cell_1/bias/v Adam/lstm_2/lstm_cell_2/kernel/v*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vAdam/lstm_2/lstm_cell_2/bias/v*B
Tin;
927*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__traced_restore_127828­¸,
ù	
Ï
lstm_2_while_cond_125126*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_125126___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_125126___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_125126___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_125126___redundant_placeholder3
lstm_2_while_identity
~
lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: Y
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ý	
Ï
lstm_1_while_cond_124545*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_124545___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_124545___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_124545___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_124545___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
²I

@__inference_lstm_layer_call_and_return_conditional_losses_125456
inputs_0<
(lstm_cell_matmul_readvariableop_resource:
þ=
*lstm_cell_matmul_1_readvariableop_resource:	@8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_125372*
condR
while_cond_125371*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ
"
_user_specified_name
inputs/0
è
ô
*__inference_lstm_cell_layer_call_fn_127194

inputs
states_0
states_1
unknown:
þ
	unknown_0:	@
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_121997o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿþ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
ß7
É
while_body_123624
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_2_matmul_readvariableop_resource_0:
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	@B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_2_matmul_readvariableop_resource:
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	@@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ç7
÷
@__inference_lstm_layer_call_and_return_conditional_losses_122080

inputs$
lstm_cell_121998:
þ#
lstm_cell_122000:	@
lstm_cell_122002:	
identity¢!lstm_cell/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_maskæ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_121998lstm_cell_122000lstm_cell_122002*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_121997n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_121998lstm_cell_122000lstm_cell_122002*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122011*
condR
while_cond_122010*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
Ö

E__inference_lstm_cell_layer_call_and_return_conditional_losses_122143

inputs

states
states_12
matmul_readvariableop_resource:
þ3
 matmul_1_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿþ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates


+__inference_sequential_layer_call_fn_124348

inputs
unknown:
þ
	unknown_0:	@
	unknown_1:	
	unknown_2:	@
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	@
	unknown_7:	
	unknown_8:@@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: 

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_124124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
Ø

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_122843

inputs

states
states_12
matmul_readvariableop_resource:
3
 matmul_1_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates


ò
A__inference_dense_layer_call_and_return_conditional_losses_127137

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ÆI
·
!sequential_lstm_while_body_121547<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3;
7sequential_lstm_while_sequential_lstm_strided_slice_1_0w
ssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0T
@sequential_lstm_while_lstm_cell_matmul_readvariableop_resource_0:
þU
Bsequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:	@P
Asequential_lstm_while_lstm_cell_biasadd_readvariableop_resource_0:	"
sequential_lstm_while_identity$
 sequential_lstm_while_identity_1$
 sequential_lstm_while_identity_2$
 sequential_lstm_while_identity_3$
 sequential_lstm_while_identity_4$
 sequential_lstm_while_identity_59
5sequential_lstm_while_sequential_lstm_strided_slice_1u
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorR
>sequential_lstm_while_lstm_cell_matmul_readvariableop_resource:
þS
@sequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource:	@N
?sequential_lstm_while_lstm_cell_biasadd_readvariableop_resource:	¢6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp¢5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp¢7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp
Gsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  ÷
9sequential/lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0!sequential_lstm_while_placeholderPsequential/lstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0¸
5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@sequential_lstm_while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
þ*
dtype0ä
&sequential/lstm/while/lstm_cell/MatMulMatMul@sequential/lstm/while/TensorArrayV2Read/TensorListGetItem:item:0=sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBsequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0Ë
(sequential/lstm/while/lstm_cell/MatMul_1MatMul#sequential_lstm_while_placeholder_2?sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÅ
#sequential/lstm/while/lstm_cell/addAddV20sequential/lstm/while/lstm_cell/MatMul:product:02sequential/lstm/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAsequential_lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Î
'sequential/lstm/while/lstm_cell/BiasAddBiasAdd'sequential/lstm/while/lstm_cell/add:z:0>sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿq
/sequential/lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
%sequential/lstm/while/lstm_cell/splitSplit8sequential/lstm/while/lstm_cell/split/split_dim:output:00sequential/lstm/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split
'sequential/lstm/while/lstm_cell/SigmoidSigmoid.sequential/lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)sequential/lstm/while/lstm_cell/Sigmoid_1Sigmoid.sequential/lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@°
#sequential/lstm/while/lstm_cell/mulMul-sequential/lstm/while/lstm_cell/Sigmoid_1:y:0#sequential_lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$sequential/lstm/while/lstm_cell/ReluRelu.sequential/lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¿
%sequential/lstm/while/lstm_cell/mul_1Mul+sequential/lstm/while/lstm_cell/Sigmoid:y:02sequential/lstm/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@´
%sequential/lstm/while/lstm_cell/add_1AddV2'sequential/lstm/while/lstm_cell/mul:z:0)sequential/lstm/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)sequential/lstm/while/lstm_cell/Sigmoid_2Sigmoid.sequential/lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
&sequential/lstm/while/lstm_cell/Relu_1Relu)sequential/lstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ã
%sequential/lstm/while/lstm_cell/mul_2Mul-sequential/lstm/while/lstm_cell/Sigmoid_2:y:04sequential/lstm/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
:sequential/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#sequential_lstm_while_placeholder_1!sequential_lstm_while_placeholder)sequential/lstm/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ]
sequential/lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/lstm/while/addAddV2!sequential_lstm_while_placeholder$sequential/lstm/while/add/y:output:0*
T0*
_output_shapes
: _
sequential/lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
sequential/lstm/while/add_1AddV28sequential_lstm_while_sequential_lstm_while_loop_counter&sequential/lstm/while/add_1/y:output:0*
T0*
_output_shapes
: 
sequential/lstm/while/IdentityIdentitysequential/lstm/while/add_1:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: ª
 sequential/lstm/while/Identity_1Identity>sequential_lstm_while_sequential_lstm_while_maximum_iterations^sequential/lstm/while/NoOp*
T0*
_output_shapes
: 
 sequential/lstm/while/Identity_2Identitysequential/lstm/while/add:z:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: É
 sequential/lstm/while/Identity_3IdentityJsequential/lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm/while/NoOp*
T0*
_output_shapes
: :éèÒ¦
 sequential/lstm/while/Identity_4Identity)sequential/lstm/while/lstm_cell/mul_2:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
 sequential/lstm/while/Identity_5Identity)sequential/lstm/while/lstm_cell/add_1:z:0^sequential/lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential/lstm/while/NoOpNoOp7^sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp6^sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp8^sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0"M
 sequential_lstm_while_identity_1)sequential/lstm/while/Identity_1:output:0"M
 sequential_lstm_while_identity_2)sequential/lstm/while/Identity_2:output:0"M
 sequential_lstm_while_identity_3)sequential/lstm/while/Identity_3:output:0"M
 sequential_lstm_while_identity_4)sequential/lstm/while/Identity_4:output:0"M
 sequential_lstm_while_identity_5)sequential/lstm/while/Identity_5:output:0"
?sequential_lstm_while_lstm_cell_biasadd_readvariableop_resourceAsequential_lstm_while_lstm_cell_biasadd_readvariableop_resource_0"
@sequential_lstm_while_lstm_cell_matmul_1_readvariableop_resourceBsequential_lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"
>sequential_lstm_while_lstm_cell_matmul_readvariableop_resource@sequential_lstm_while_lstm_cell_matmul_readvariableop_resource_0"p
5sequential_lstm_while_sequential_lstm_strided_slice_17sequential_lstm_while_sequential_lstm_strided_slice_1_0"è
qsequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensorssequential_lstm_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2p
6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp6sequential/lstm/while/lstm_cell/BiasAdd/ReadVariableOp2n
5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp5sequential/lstm/while/lstm_cell/MatMul/ReadVariableOp2r
7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp7sequential/lstm/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ôH

@__inference_lstm_layer_call_and_return_conditional_losses_125742

inputs<
(lstm_cell_matmul_readvariableop_resource:
þ=
*lstm_cell_matmul_1_readvariableop_resource:	@8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_125658*
condR
while_cond_125657*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿþ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
§J

B__inference_lstm_2_layer_call_and_return_conditional_losses_126688
inputs_0>
*lstm_cell_2_matmul_readvariableop_resource:
?
,lstm_cell_2_matmul_1_readvariableop_resource:	@:
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_126604*
condR
while_cond_126603*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
µ
Ã
while_cond_127032
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_127032___redundant_placeholder04
0while_while_cond_127032___redundant_placeholder14
0while_while_cond_127032___redundant_placeholder24
0while_while_cond_127032___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
À

(__inference_dense_2_layer_call_fn_127166

inputs
unknown: 
	unknown_0:
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_123482o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ß7
É
while_body_126747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_2_matmul_readvariableop_resource_0:
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	@B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_2_matmul_readvariableop_resource:
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	@@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
òI

B__inference_lstm_2_layer_call_and_return_conditional_losses_127117

inputs>
*lstm_cell_2_matmul_readvariableop_resource:
?
,lstm_cell_2_matmul_1_readvariableop_resource:	@:
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_127033*
condR
while_cond_127032*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ7
É
while_body_126131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	@H
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	@F
2while_lstm_cell_1_matmul_1_readvariableop_resource:
@
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ð
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splity
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
¹
Ã
while_cond_123194
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_123194___redundant_placeholder04
0while_while_cond_123194___redundant_placeholder14
0while_while_cond_123194___redundant_placeholder24
0while_while_cond_123194___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_125657
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_125657___redundant_placeholder04
0while_while_cond_125657___redundant_placeholder14
0while_while_cond_125657___redundant_placeholder24
0while_while_cond_125657___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
J

B__inference_lstm_1_layer_call_and_return_conditional_losses_123873

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	@@
,lstm_cell_1_matmul_1_readvariableop_resource:
:
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Þ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_123789*
condR
while_cond_123788*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
@
©

lstm_1_while_body_124988*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0:	@O
;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0:
I
:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0:	
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorJ
7lstm_1_while_lstm_cell_1_matmul_readvariableop_resource:	@M
9lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource:
G
8lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:	¢/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp¢.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp¢0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   É
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0©
.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0Í
lstm_1/while/lstm_cell_1/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0´
!lstm_1/while/lstm_cell_1/MatMul_1MatMullstm_1_while_placeholder_28lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/MatMul:product:0+lstm_1/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¹
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd lstm_1/while/lstm_cell_1/add:z:07lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:0)lstm_1/while/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
 lstm_1/while/lstm_cell_1/SigmoidSigmoid'lstm_1/while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid'lstm_1/while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/while/lstm_cell_1/mulMul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/while/lstm_cell_1/ReluRelu'lstm_1/while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
lstm_1/while/lstm_cell_1/mul_1Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0+lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_1/while/lstm_cell_1/add_1AddV2 lstm_1/while/lstm_cell_1/mul:z:0"lstm_1/while/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid'lstm_1/while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
lstm_1/while/lstm_cell_1/Relu_1Relu"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
lstm_1/while/lstm_cell_1/mul_2Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0-lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒT
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: 
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: ®
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_1/mul_2:z:0^lstm_1/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_1:z:0^lstm_1/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
lstm_1/while/NoOpNoOp0^lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"v
8lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0"x
9lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0"t
7lstm_1_while_lstm_cell_1_matmul_readvariableop_resource9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0"Ä
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp2`
.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp2d
0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ª
·
'__inference_lstm_1_layer_call_fn_125896
inputs_0
unknown:	@
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_122430}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
ò

G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_127373

inputs
states_0
states_11
matmul_readvariableop_resource:	@4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
µ
Ã
while_cond_122010
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122010___redundant_placeholder04
0while_while_cond_122010___redundant_placeholder14
0while_while_cond_122010___redundant_placeholder24
0while_while_cond_122010___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
J

B__inference_lstm_1_layer_call_and_return_conditional_losses_126501

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	@@
,lstm_cell_1_matmul_1_readvariableop_resource:
:
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Þ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_126417*
condR
while_cond_126416*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs


+__inference_sequential_layer_call_fn_124192

lstm_input
unknown:
þ
	unknown_0:	@
	unknown_1:	
	unknown_2:	@
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	@
	unknown_7:	
	unknown_8:@@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: 

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_124124o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
$
_user_specified_name
lstm_input
ñ7
É
while_body_126274
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	@H
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	@F
2while_lstm_cell_1_matmul_1_readvariableop_resource:
@
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ð
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splity
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ü
³
%__inference_lstm_layer_call_fn_125313

inputs
unknown:
þ
	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_124038s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿþ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
ß7
É
while_body_123345
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_2_matmul_readvariableop_resource_0:
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	@B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_2_matmul_readvariableop_resource:
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	@@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ò

G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_127341

inputs
states_0
states_11
matmul_readvariableop_resource:	@4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
É<
×	
lstm_while_body_124849&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0I
5lstm_while_lstm_cell_matmul_readvariableop_resource_0:
þJ
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:	@E
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0:	
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorG
3lstm_while_lstm_cell_matmul_readvariableop_resource:
þH
5lstm_while_lstm_cell_matmul_1_readvariableop_resource:	@C
4lstm_while_lstm_cell_biasadd_readvariableop_resource:	¢+lstm/while/lstm_cell/BiasAdd/ReadVariableOp¢*lstm/while/lstm_cell/MatMul/ReadVariableOp¢,lstm/while/lstm_cell/MatMul_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  À
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0¢
*lstm/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
þ*
dtype0Ã
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:02lstm/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
,lstm/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0ª
lstm/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24lstm/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/MatMul:product:0'lstm/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0­
lstm/while/lstm_cell/BiasAddBiasAddlstm/while/lstm_cell/add:z:03lstm/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:0%lstm/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split~
lstm/while/lstm_cell/SigmoidSigmoid#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/Sigmoid_1Sigmoid#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/mulMul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
lstm/while/lstm_cell/ReluRelu#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/mul_1Mul lstm/while/lstm_cell/Sigmoid:y:0'lstm/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/add_1AddV2lstm/while/lstm_cell/mul:z:0lstm/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/Sigmoid_2Sigmoid#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm/while/lstm_cell/Relu_1Relulstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
lstm/while/lstm_cell/mul_2Mul"lstm/while/lstm_cell/Sigmoid_2:y:0)lstm/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ¨
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_2:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_1:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Û
lstm/while/NoOpNoOp,^lstm/while/lstm_cell/BiasAdd/ReadVariableOp+^lstm/while/lstm_cell/MatMul/ReadVariableOp-^lstm/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"¼
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2Z
+lstm/while/lstm_cell/BiasAdd/ReadVariableOp+lstm/while/lstm_cell/BiasAdd/ReadVariableOp2X
*lstm/while/lstm_cell/MatMul/ReadVariableOp*lstm/while/lstm_cell/MatMul/ReadVariableOp2\
,lstm/while/lstm_cell/MatMul_1/ReadVariableOp,lstm/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
â 

F__inference_sequential_layer_call_and_return_conditional_losses_124124

inputs
lstm_124087:
þ
lstm_124089:	@
lstm_124091:	 
lstm_1_124094:	@!
lstm_1_124096:

lstm_1_124098:	!
lstm_2_124101:
 
lstm_2_124103:	@
lstm_2_124105:	
dense_124108:@@
dense_124110:@ 
dense_1_124113:@ 
dense_1_124115:  
dense_2_124118: 
dense_2_124120:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢lstm/StatefulPartitionedCall¢lstm_1/StatefulPartitionedCall¢lstm_2/StatefulPartitionedCalló
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_124087lstm_124089lstm_124091*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_124038
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_124094lstm_1_124096lstm_1_124098*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_123873
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_124101lstm_2_124103lstm_2_124105*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_123708
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0dense_124108dense_124110*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_123448
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_124113dense_1_124115*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_123465
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_124118dense_2_124120*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_123482w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
µ
Ã
while_cond_126746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_126746___redundant_placeholder04
0while_while_cond_126746___redundant_placeholder14
0while_while_cond_126746___redundant_placeholder24
0while_while_cond_126746___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Þ

E__inference_lstm_cell_layer_call_and_return_conditional_losses_127243

inputs
states_0
states_12
matmul_readvariableop_resource:
þ3
 matmul_1_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿþ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
£Ø
£#
"__inference__traced_restore_127828
file_prefix/
assignvariableop_dense_kernel:@@+
assignvariableop_1_dense_bias:@3
!assignvariableop_2_dense_1_kernel:@ -
assignvariableop_3_dense_1_bias: 3
!assignvariableop_4_dense_2_kernel: -
assignvariableop_5_dense_2_bias:&
assignvariableop_6_adam_iter:	 (
assignvariableop_7_adam_beta_1: (
assignvariableop_8_adam_beta_2: '
assignvariableop_9_adam_decay: 0
&assignvariableop_10_adam_learning_rate: =
)assignvariableop_11_lstm_lstm_cell_kernel:
þF
3assignvariableop_12_lstm_lstm_cell_recurrent_kernel:	@6
'assignvariableop_13_lstm_lstm_cell_bias:	@
-assignvariableop_14_lstm_1_lstm_cell_1_kernel:	@K
7assignvariableop_15_lstm_1_lstm_cell_1_recurrent_kernel:
:
+assignvariableop_16_lstm_1_lstm_cell_1_bias:	A
-assignvariableop_17_lstm_2_lstm_cell_2_kernel:
J
7assignvariableop_18_lstm_2_lstm_cell_2_recurrent_kernel:	@:
+assignvariableop_19_lstm_2_lstm_cell_2_bias:	#
assignvariableop_20_total: #
assignvariableop_21_count: %
assignvariableop_22_total_1: %
assignvariableop_23_count_1: 9
'assignvariableop_24_adam_dense_kernel_m:@@3
%assignvariableop_25_adam_dense_bias_m:@;
)assignvariableop_26_adam_dense_1_kernel_m:@ 5
'assignvariableop_27_adam_dense_1_bias_m: ;
)assignvariableop_28_adam_dense_2_kernel_m: 5
'assignvariableop_29_adam_dense_2_bias_m:D
0assignvariableop_30_adam_lstm_lstm_cell_kernel_m:
þM
:assignvariableop_31_adam_lstm_lstm_cell_recurrent_kernel_m:	@=
.assignvariableop_32_adam_lstm_lstm_cell_bias_m:	G
4assignvariableop_33_adam_lstm_1_lstm_cell_1_kernel_m:	@R
>assignvariableop_34_adam_lstm_1_lstm_cell_1_recurrent_kernel_m:
A
2assignvariableop_35_adam_lstm_1_lstm_cell_1_bias_m:	H
4assignvariableop_36_adam_lstm_2_lstm_cell_2_kernel_m:
Q
>assignvariableop_37_adam_lstm_2_lstm_cell_2_recurrent_kernel_m:	@A
2assignvariableop_38_adam_lstm_2_lstm_cell_2_bias_m:	9
'assignvariableop_39_adam_dense_kernel_v:@@3
%assignvariableop_40_adam_dense_bias_v:@;
)assignvariableop_41_adam_dense_1_kernel_v:@ 5
'assignvariableop_42_adam_dense_1_bias_v: ;
)assignvariableop_43_adam_dense_2_kernel_v: 5
'assignvariableop_44_adam_dense_2_bias_v:D
0assignvariableop_45_adam_lstm_lstm_cell_kernel_v:
þM
:assignvariableop_46_adam_lstm_lstm_cell_recurrent_kernel_v:	@=
.assignvariableop_47_adam_lstm_lstm_cell_bias_v:	G
4assignvariableop_48_adam_lstm_1_lstm_cell_1_kernel_v:	@R
>assignvariableop_49_adam_lstm_1_lstm_cell_1_recurrent_kernel_v:
A
2assignvariableop_50_adam_lstm_1_lstm_cell_1_bias_v:	H
4assignvariableop_51_adam_lstm_2_lstm_cell_2_kernel_v:
Q
>assignvariableop_52_adam_lstm_2_lstm_cell_2_recurrent_kernel_v:	@A
2assignvariableop_53_adam_lstm_2_lstm_cell_2_bias_v:	
identity_55¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9¨
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Î
valueÄBÁ7B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHß
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ´
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*ò
_output_shapesß
Ü:::::::::::::::::::::::::::::::::::::::::::::::::::::::*E
dtypes;
927	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp!assignvariableop_4_dense_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_dense_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_iterIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_beta_1Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_beta_2Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_decayIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp&assignvariableop_10_adam_learning_rateIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp)assignvariableop_11_lstm_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_12AssignVariableOp3assignvariableop_12_lstm_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp'assignvariableop_13_lstm_lstm_cell_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOp-assignvariableop_14_lstm_1_lstm_cell_1_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_15AssignVariableOp7assignvariableop_15_lstm_1_lstm_cell_1_recurrent_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp+assignvariableop_16_lstm_1_lstm_cell_1_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp-assignvariableop_17_lstm_2_lstm_cell_2_kernelIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:¨
AssignVariableOp_18AssignVariableOp7assignvariableop_18_lstm_2_lstm_cell_2_recurrent_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp+assignvariableop_19_lstm_2_lstm_cell_2_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_20AssignVariableOpassignvariableop_20_totalIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_21AssignVariableOpassignvariableop_21_countIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_1Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_1Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp%assignvariableop_25_adam_dense_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp)assignvariableop_26_adam_dense_1_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_27AssignVariableOp'assignvariableop_27_adam_dense_1_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_2_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_2_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_30AssignVariableOp0assignvariableop_30_adam_lstm_lstm_cell_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_31AssignVariableOp:assignvariableop_31_adam_lstm_lstm_cell_recurrent_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_32AssignVariableOp.assignvariableop_32_adam_lstm_lstm_cell_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_33AssignVariableOp4assignvariableop_33_adam_lstm_1_lstm_cell_1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_34AssignVariableOp>assignvariableop_34_adam_lstm_1_lstm_cell_1_recurrent_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_35AssignVariableOp2assignvariableop_35_adam_lstm_1_lstm_cell_1_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_36AssignVariableOp4assignvariableop_36_adam_lstm_2_lstm_cell_2_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_37AssignVariableOp>assignvariableop_37_adam_lstm_2_lstm_cell_2_recurrent_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_38AssignVariableOp2assignvariableop_38_adam_lstm_2_lstm_cell_2_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_39AssignVariableOp'assignvariableop_39_adam_dense_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_40AssignVariableOp%assignvariableop_40_adam_dense_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_1_kernel_vIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_1_bias_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_43AssignVariableOp)assignvariableop_43_adam_dense_2_kernel_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_44AssignVariableOp'assignvariableop_44_adam_dense_2_bias_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:¡
AssignVariableOp_45AssignVariableOp0assignvariableop_45_adam_lstm_lstm_cell_kernel_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:«
AssignVariableOp_46AssignVariableOp:assignvariableop_46_adam_lstm_lstm_cell_recurrent_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_47AssignVariableOp.assignvariableop_47_adam_lstm_lstm_cell_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_48AssignVariableOp4assignvariableop_48_adam_lstm_1_lstm_cell_1_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_49AssignVariableOp>assignvariableop_49_adam_lstm_1_lstm_cell_1_recurrent_kernel_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_50AssignVariableOp2assignvariableop_50_adam_lstm_1_lstm_cell_1_bias_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_51AssignVariableOp4assignvariableop_51_adam_lstm_2_lstm_cell_2_kernel_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:¯
AssignVariableOp_52AssignVariableOp>assignvariableop_52_adam_lstm_2_lstm_cell_2_recurrent_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:£
AssignVariableOp_53AssignVariableOp2assignvariableop_53_adam_lstm_2_lstm_cell_2_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ó	
Identity_54Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_55IdentityIdentity_54:output:0^NoOp_1*
T0*
_output_shapes
: à	
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_55Identity_55:output:0*
_input_shapesp
n: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
×6
·
while_body_125801
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
þE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	@@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
þC
0while_lstm_cell_matmul_1_readvariableop_resource:	@>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
þ*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒv
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ý

F__inference_sequential_layer_call_and_return_conditional_losses_124790

inputsA
-lstm_lstm_cell_matmul_readvariableop_resource:
þB
/lstm_lstm_cell_matmul_1_readvariableop_resource:	@=
.lstm_lstm_cell_biasadd_readvariableop_resource:	D
1lstm_1_lstm_cell_1_matmul_readvariableop_resource:	@G
3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource:
A
2lstm_1_lstm_cell_1_biasadd_readvariableop_resource:	E
1lstm_2_lstm_cell_2_matmul_readvariableop_resource:
F
3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource:	@A
2lstm_2_lstm_cell_2_biasadd_readvariableop_resource:	6
$dense_matmul_readvariableop_resource:@@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@ 5
'dense_1_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢%lstm/lstm_cell/BiasAdd/ReadVariableOp¢$lstm/lstm_cell/MatMul/ReadVariableOp¢&lstm/lstm_cell/MatMul_1/ReadVariableOp¢
lstm/while¢)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp¢(lstm_1/lstm_cell_1/MatMul/ReadVariableOp¢*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp¢lstm_1/while¢)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp¢(lstm_2/lstm_cell_2/MatMul/ReadVariableOp¢*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp¢lstm_2/while@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþN
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÃ
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  ï
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_mask
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ã
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitr
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
lstm/lstm_cell/ReluRelulstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ç
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿY
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
lstm_while_body_124407*"
condR
lstm_while_cond_124406*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ñ
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿf
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¥
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    P
lstm_1/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   õ
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp1lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0©
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0£
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split{
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
lstm_1/lstm_cell_1/ReluRelu!lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0%lstm_1/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_1/lstm_cell_1/Relu_1Relulstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0'lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Í
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : å
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_1_lstm_cell_1_matmul_readvariableop_resource3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource2lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_1_while_body_124546*$
condR
lstm_1_while_cond_124545*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ø
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¬
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    R
lstm_2/ShapeShapelstm_1/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:f
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   õ
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
(lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0©
lstm_2/lstm_cell_2/MatMulMatMullstm_2/strided_slice_2:output:00lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0£
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/MatMul:product:0%lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
lstm_2/lstm_cell_2/BiasAddBiasAddlstm_2/lstm_cell_2/add:z:01lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0#lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitz
lstm_2/lstm_cell_2/SigmoidSigmoid!lstm_2/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_2/lstm_cell_2/Sigmoid_1Sigmoid!lstm_2/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/lstm_cell_2/mulMul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
lstm_2/lstm_cell_2/ReluRelu!lstm_2/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/lstm_cell_2/mul_1Mullstm_2/lstm_cell_2/Sigmoid:y:0%lstm_2/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/lstm_cell_2/add_1AddV2lstm_2/lstm_cell_2/mul:z:0lstm_2/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_2/lstm_cell_2/Sigmoid_2Sigmoid!lstm_2/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_2/lstm_cell_2/Relu_1Relulstm_2/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/lstm_cell_2/mul_2Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0'lstm_2/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Í
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : á
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_2_matmul_readvariableop_resource3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_2_while_body_124685*$
condR
lstm_2_while_cond_124684*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ×
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0o
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskl
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
dense/MatMulMatMullstm_2/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_1/while*^lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_2/MatMul/ReadVariableOp+^lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2

lstm/while
lstm/while2V
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_1/MatMul/ReadVariableOp(lstm_1/lstm_cell_1/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2V
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp(lstm_2/lstm_cell_2/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs


+__inference_sequential_layer_call_fn_123522

lstm_input
unknown:
þ
	unknown_0:	@
	unknown_1:	
	unknown_2:	@
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	@
	unknown_7:	
	unknown_8:@@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: 

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_123489o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
$
_user_specified_name
lstm_input
µ
Ã
while_cond_125514
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_125514___redundant_placeholder04
0while_while_cond_125514___redundant_placeholder14
0while_while_cond_125514___redundant_placeholder24
0while_while_cond_125514___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:


ô
C__inference_dense_1_layer_call_and_return_conditional_losses_127157

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ñ7
É
while_body_126417
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	@H
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	@F
2while_lstm_cell_1_matmul_1_readvariableop_resource:
@
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ð
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splity
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
×6
·
while_body_125515
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
þE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	@@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
þC
0while_lstm_cell_matmul_1_readvariableop_resource:	@>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
þ*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒv
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ê

G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_122493

inputs

states
states_11
matmul_readvariableop_resource:	@4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
@
©

lstm_1_while_body_124546*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3)
%lstm_1_while_lstm_1_strided_slice_1_0e
alstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0:	@O
;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0:
I
:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0:	
lstm_1_while_identity
lstm_1_while_identity_1
lstm_1_while_identity_2
lstm_1_while_identity_3
lstm_1_while_identity_4
lstm_1_while_identity_5'
#lstm_1_while_lstm_1_strided_slice_1c
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensorJ
7lstm_1_while_lstm_cell_1_matmul_readvariableop_resource:	@M
9lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource:
G
8lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:	¢/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp¢.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp¢0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp
>lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   É
0lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0lstm_1_while_placeholderGlstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0©
.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0Í
lstm_1/while/lstm_cell_1/MatMulMatMul7lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0´
!lstm_1/while/lstm_cell_1/MatMul_1MatMullstm_1_while_placeholder_28lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
lstm_1/while/lstm_cell_1/addAddV2)lstm_1/while/lstm_cell_1/MatMul:product:0+lstm_1/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¹
 lstm_1/while/lstm_cell_1/BiasAddBiasAdd lstm_1/while/lstm_cell_1/add:z:07lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_1/while/lstm_cell_1/splitSplit1lstm_1/while/lstm_cell_1/split/split_dim:output:0)lstm_1/while/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
 lstm_1/while/lstm_cell_1/SigmoidSigmoid'lstm_1/while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid'lstm_1/while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/while/lstm_cell_1/mulMul&lstm_1/while/lstm_cell_1/Sigmoid_1:y:0lstm_1_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/while/lstm_cell_1/ReluRelu'lstm_1/while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
lstm_1/while/lstm_cell_1/mul_1Mul$lstm_1/while/lstm_cell_1/Sigmoid:y:0+lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
lstm_1/while/lstm_cell_1/add_1AddV2 lstm_1/while/lstm_cell_1/mul:z:0"lstm_1/while/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid'lstm_1/while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
lstm_1/while/lstm_cell_1/Relu_1Relu"lstm_1/while/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
lstm_1/while/lstm_cell_1/mul_2Mul&lstm_1/while/lstm_cell_1/Sigmoid_2:y:0-lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿà
1lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_1_while_placeholder_1lstm_1_while_placeholder"lstm_1/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒT
lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_1/while/addAddV2lstm_1_while_placeholderlstm_1/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_1/while/add_1AddV2&lstm_1_while_lstm_1_while_loop_counterlstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_1/while/IdentityIdentitylstm_1/while/add_1:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: 
lstm_1/while/Identity_1Identity,lstm_1_while_lstm_1_while_maximum_iterations^lstm_1/while/NoOp*
T0*
_output_shapes
: n
lstm_1/while/Identity_2Identitylstm_1/while/add:z:0^lstm_1/while/NoOp*
T0*
_output_shapes
: ®
lstm_1/while/Identity_3IdentityAlstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_1/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_1/while/Identity_4Identity"lstm_1/while/lstm_cell_1/mul_2:z:0^lstm_1/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/while/Identity_5Identity"lstm_1/while/lstm_cell_1/add_1:z:0^lstm_1/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿé
lstm_1/while/NoOpNoOp0^lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp/^lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp1^lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_1_while_identitylstm_1/while/Identity:output:0";
lstm_1_while_identity_1 lstm_1/while/Identity_1:output:0";
lstm_1_while_identity_2 lstm_1/while/Identity_2:output:0";
lstm_1_while_identity_3 lstm_1/while/Identity_3:output:0";
lstm_1_while_identity_4 lstm_1/while/Identity_4:output:0";
lstm_1_while_identity_5 lstm_1/while/Identity_5:output:0"L
#lstm_1_while_lstm_1_strided_slice_1%lstm_1_while_lstm_1_strided_slice_1_0"v
8lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0"x
9lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource;lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0"t
7lstm_1_while_lstm_cell_1_matmul_readvariableop_resource9lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0"Ä
_lstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensoralstm_1_while_tensorarrayv2read_tensorlistgetitem_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2b
/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp2`
.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp.lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp2d
0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp0lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
²
«
#sequential_lstm_1_while_cond_121685@
<sequential_lstm_1_while_sequential_lstm_1_while_loop_counterF
Bsequential_lstm_1_while_sequential_lstm_1_while_maximum_iterations'
#sequential_lstm_1_while_placeholder)
%sequential_lstm_1_while_placeholder_1)
%sequential_lstm_1_while_placeholder_2)
%sequential_lstm_1_while_placeholder_3B
>sequential_lstm_1_while_less_sequential_lstm_1_strided_slice_1X
Tsequential_lstm_1_while_sequential_lstm_1_while_cond_121685___redundant_placeholder0X
Tsequential_lstm_1_while_sequential_lstm_1_while_cond_121685___redundant_placeholder1X
Tsequential_lstm_1_while_sequential_lstm_1_while_cond_121685___redundant_placeholder2X
Tsequential_lstm_1_while_sequential_lstm_1_while_cond_121685___redundant_placeholder3$
 sequential_lstm_1_while_identity
ª
sequential/lstm_1/while/LessLess#sequential_lstm_1_while_placeholder>sequential_lstm_1_while_less_sequential_lstm_1_strided_slice_1*
T0*
_output_shapes
: o
 sequential/lstm_1/while/IdentityIdentity sequential/lstm_1/while/Less:z:0*
T0
*
_output_shapes
: "M
 sequential_lstm_1_while_identity)sequential/lstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Á	
§
lstm_while_cond_124406&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_124406___redundant_placeholder0>
:lstm_while_lstm_while_cond_124406___redundant_placeholder1>
:lstm_while_lstm_while_cond_124406___redundant_placeholder2>
:lstm_while_lstm_while_cond_124406___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ø

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_122697

inputs

states
states_12
matmul_readvariableop_resource:
3
 matmul_1_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
ê

G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_122347

inputs

states
states_11
matmul_readvariableop_resource:	@4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	@*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :º
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿO
ReluRelusplit:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_namestates
®
«
#sequential_lstm_2_while_cond_121824@
<sequential_lstm_2_while_sequential_lstm_2_while_loop_counterF
Bsequential_lstm_2_while_sequential_lstm_2_while_maximum_iterations'
#sequential_lstm_2_while_placeholder)
%sequential_lstm_2_while_placeholder_1)
%sequential_lstm_2_while_placeholder_2)
%sequential_lstm_2_while_placeholder_3B
>sequential_lstm_2_while_less_sequential_lstm_2_strided_slice_1X
Tsequential_lstm_2_while_sequential_lstm_2_while_cond_121824___redundant_placeholder0X
Tsequential_lstm_2_while_sequential_lstm_2_while_cond_121824___redundant_placeholder1X
Tsequential_lstm_2_while_sequential_lstm_2_while_cond_121824___redundant_placeholder2X
Tsequential_lstm_2_while_sequential_lstm_2_while_cond_121824___redundant_placeholder3$
 sequential_lstm_2_while_identity
ª
sequential/lstm_2/while/LessLess#sequential_lstm_2_while_placeholder>sequential_lstm_2_while_less_sequential_lstm_2_strided_slice_1*
T0*
_output_shapes
: o
 sequential/lstm_2/while/IdentityIdentity sequential/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: "M
 sequential_lstm_2_while_identity)sequential/lstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ü
³
%__inference_lstm_layer_call_fn_125302

inputs
unknown:
þ
	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_123129s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿþ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
ø
µ
'__inference_lstm_2_layer_call_fn_126545

inputs
unknown:

	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_123708o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
à

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_127439

inputs
states_0
states_12
matmul_readvariableop_resource:
3
 matmul_1_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
ñ7
É
while_body_123195
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	@H
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	@F
2while_lstm_cell_1_matmul_1_readvariableop_resource:
@
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ð
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splity
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
8

B__inference_lstm_1_layer_call_and_return_conditional_losses_122621

inputs%
lstm_cell_1_122539:	@&
lstm_cell_1_122541:
!
lstm_cell_1_122543:	
identity¢#lstm_cell_1/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskó
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_122539lstm_cell_1_122541lstm_cell_1_122543*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_122493n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_122539lstm_cell_1_122541lstm_cell_1_122543*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122552*
condR
while_cond_122551*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¹
Ã
while_cond_126273
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_126273___redundant_placeholder04
0while_while_cond_126273___redundant_placeholder14
0while_while_cond_126273___redundant_placeholder24
0while_while_cond_126273___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
Þ

E__inference_lstm_cell_layer_call_and_return_conditional_losses_127275

inputs
states_0
states_12
matmul_readvariableop_resource:
þ3
 matmul_1_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿþ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
î 

F__inference_sequential_layer_call_and_return_conditional_losses_124232

lstm_input
lstm_124195:
þ
lstm_124197:	@
lstm_124199:	 
lstm_1_124202:	@!
lstm_1_124204:

lstm_1_124206:	!
lstm_2_124209:
 
lstm_2_124211:	@
lstm_2_124213:	
dense_124216:@@
dense_124218:@ 
dense_1_124221:@ 
dense_1_124223:  
dense_2_124226: 
dense_2_124228:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢lstm/StatefulPartitionedCall¢lstm_1/StatefulPartitionedCall¢lstm_2/StatefulPartitionedCall÷
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_124195lstm_124197lstm_124199*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_123129
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_124202lstm_1_124204lstm_1_124206*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_123279
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_124209lstm_2_124211lstm_2_124213*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_123429
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0dense_124216dense_124218*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_123448
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_124221dense_1_124223*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_123465
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_124226dense_2_124228*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_123482w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:X T
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
$
_user_specified_name
lstm_input
8

B__inference_lstm_2_layer_call_and_return_conditional_losses_122971

inputs&
lstm_cell_2_122889:
%
lstm_cell_2_122891:	@!
lstm_cell_2_122893:	
identity¢#lstm_cell_2/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskð
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_122889lstm_cell_2_122891lstm_cell_2_122893*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_122843n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_122889lstm_cell_2_122891lstm_cell_2_122893*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122902*
condR
while_cond_122901*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ7
É
while_body_123789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	@H
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	@F
2while_lstm_cell_1_matmul_1_readvariableop_resource:
@
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ð
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splity
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ÀJ

B__inference_lstm_1_layer_call_and_return_conditional_losses_126072
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	@@
,lstm_cell_1_matmul_1_readvariableop_resource:
:
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Þ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_125988*
condR
while_cond_125987*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0


ô
C__inference_dense_2_layer_call_and_return_conditional_losses_123482

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
ä"
Þ
while_body_122711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_2_122735_0:
-
while_lstm_cell_2_122737_0:	@)
while_lstm_cell_2_122739_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_2_122735:
+
while_lstm_cell_2_122737:	@'
while_lstm_cell_2_122739:	¢)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0®
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_122735_0while_lstm_cell_2_122737_0while_lstm_cell_2_122739_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_122697Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_122735while_lstm_cell_2_122735_0"6
while_lstm_cell_2_122737while_lstm_cell_2_122737_0"6
while_lstm_cell_2_122739while_lstm_cell_2_122739_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_122710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122710___redundant_placeholder04
0while_while_cond_122710___redundant_placeholder14
0while_while_cond_122710___redundant_placeholder24
0while_while_cond_122710___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
òI

B__inference_lstm_2_layer_call_and_return_conditional_losses_126974

inputs>
*lstm_cell_2_matmul_readvariableop_resource:
?
,lstm_cell_2_matmul_1_readvariableop_resource:	@:
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_126890*
condR
while_cond_126889*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

µ
'__inference_lstm_1_layer_call_fn_125929

inputs
unknown:	@
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_123873t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
µ
Ã
while_cond_125800
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_125800___redundant_placeholder04
0while_while_cond_125800___redundant_placeholder14
0while_while_cond_125800___redundant_placeholder24
0while_while_cond_125800___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_123344
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_123344___redundant_placeholder04
0while_while_cond_123344___redundant_placeholder14
0while_while_cond_123344___redundant_placeholder24
0while_while_cond_123344___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
×6
·
while_body_125372
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
þE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	@@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
þC
0while_lstm_cell_matmul_1_readvariableop_resource:	@>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
þ*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒv
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ª
·
'__inference_lstm_1_layer_call_fn_125907
inputs_0
unknown:	@
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallô
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_122621}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0
´"
Ð
while_body_122011
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_122035_0:
þ+
while_lstm_cell_122037_0:	@'
while_lstm_cell_122039_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_122035:
þ)
while_lstm_cell_122037:	@%
while_lstm_cell_122039:	¢'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0¤
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_122035_0while_lstm_cell_122037_0while_lstm_cell_122039_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_121997Ù
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_122035while_lstm_cell_122035_0"2
while_lstm_cell_122037while_lstm_cell_122037_0"2
while_lstm_cell_122039while_lstm_cell_122039_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ôH

@__inference_lstm_layer_call_and_return_conditional_losses_125885

inputs<
(lstm_cell_matmul_readvariableop_resource:
þ=
*lstm_cell_matmul_1_readvariableop_resource:	@8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_125801*
condR
while_cond_125800*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿþ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
ì"
Þ
while_body_122552
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_1_122576_0:	@.
while_lstm_cell_1_122578_0:
)
while_lstm_cell_1_122580_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_1_122576:	@,
while_lstm_cell_1_122578:
'
while_lstm_cell_1_122580:	¢)while/lstm_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0±
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_122576_0while_lstm_cell_1_122578_0while_lstm_cell_1_122580_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_122493Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_1_122576while_lstm_cell_1_122576_0"6
while_lstm_cell_1_122578while_lstm_cell_1_122578_0"6
while_lstm_cell_1_122580while_lstm_cell_1_122580_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_122901
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122901___redundant_placeholder04
0while_while_cond_122901___redundant_placeholder14
0while_while_cond_122901___redundant_placeholder24
0while_while_cond_122901___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_125371
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_125371___redundant_placeholder04
0while_while_cond_125371___redundant_placeholder14
0while_while_cond_125371___redundant_placeholder24
0while_while_cond_125371___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
î 

F__inference_sequential_layer_call_and_return_conditional_losses_124272

lstm_input
lstm_124235:
þ
lstm_124237:	@
lstm_124239:	 
lstm_1_124242:	@!
lstm_1_124244:

lstm_1_124246:	!
lstm_2_124249:
 
lstm_2_124251:	@
lstm_2_124253:	
dense_124256:@@
dense_124258:@ 
dense_1_124261:@ 
dense_1_124263:  
dense_2_124266: 
dense_2_124268:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢lstm/StatefulPartitionedCall¢lstm_1/StatefulPartitionedCall¢lstm_2/StatefulPartitionedCall÷
lstm/StatefulPartitionedCallStatefulPartitionedCall
lstm_inputlstm_124235lstm_124237lstm_124239*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_124038
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_124242lstm_1_124244lstm_1_124246*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_123873
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_124249lstm_2_124251lstm_2_124253*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_123708
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0dense_124256dense_124258*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_123448
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_124261dense_1_124263*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_123465
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_124266dense_2_124268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_123482w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:X T
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
$
_user_specified_name
lstm_input
É<
×	
lstm_while_body_124407&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3%
!lstm_while_lstm_strided_slice_1_0a
]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0I
5lstm_while_lstm_cell_matmul_readvariableop_resource_0:
þJ
7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0:	@E
6lstm_while_lstm_cell_biasadd_readvariableop_resource_0:	
lstm_while_identity
lstm_while_identity_1
lstm_while_identity_2
lstm_while_identity_3
lstm_while_identity_4
lstm_while_identity_5#
lstm_while_lstm_strided_slice_1_
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensorG
3lstm_while_lstm_cell_matmul_readvariableop_resource:
þH
5lstm_while_lstm_cell_matmul_1_readvariableop_resource:	@C
4lstm_while_lstm_cell_biasadd_readvariableop_resource:	¢+lstm/while/lstm_cell/BiasAdd/ReadVariableOp¢*lstm/while/lstm_cell/MatMul/ReadVariableOp¢,lstm/while/lstm_cell/MatMul_1/ReadVariableOp
<lstm/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  À
.lstm/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0lstm_while_placeholderElstm/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0¢
*lstm/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp5lstm_while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
þ*
dtype0Ã
lstm/while/lstm_cell/MatMulMatMul5lstm/while/TensorArrayV2Read/TensorListGetItem:item:02lstm/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
,lstm/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0ª
lstm/while/lstm_cell/MatMul_1MatMullstm_while_placeholder_24lstm/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¤
lstm/while/lstm_cell/addAddV2%lstm/while/lstm_cell/MatMul:product:0'lstm/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+lstm/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp6lstm_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0­
lstm/while/lstm_cell/BiasAddBiasAddlstm/while/lstm_cell/add:z:03lstm/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$lstm/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :õ
lstm/while/lstm_cell/splitSplit-lstm/while/lstm_cell/split/split_dim:output:0%lstm/while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split~
lstm/while/lstm_cell/SigmoidSigmoid#lstm/while/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/Sigmoid_1Sigmoid#lstm/while/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/mulMul"lstm/while/lstm_cell/Sigmoid_1:y:0lstm_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
lstm/while/lstm_cell/ReluRelu#lstm/while/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/mul_1Mul lstm/while/lstm_cell/Sigmoid:y:0'lstm/while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/add_1AddV2lstm/while/lstm_cell/mul:z:0lstm/while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/lstm_cell/Sigmoid_2Sigmoid#lstm/while/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm/while/lstm_cell/Relu_1Relulstm/while/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
lstm/while/lstm_cell/mul_2Mul"lstm/while/lstm_cell/Sigmoid_2:y:0)lstm/while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ö
/lstm/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_while_placeholder_1lstm_while_placeholderlstm/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒR
lstm/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :k
lstm/while/addAddV2lstm_while_placeholderlstm/while/add/y:output:0*
T0*
_output_shapes
: T
lstm/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :{
lstm/while/add_1AddV2"lstm_while_lstm_while_loop_counterlstm/while/add_1/y:output:0*
T0*
_output_shapes
: h
lstm/while/IdentityIdentitylstm/while/add_1:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ~
lstm/while/Identity_1Identity(lstm_while_lstm_while_maximum_iterations^lstm/while/NoOp*
T0*
_output_shapes
: h
lstm/while/Identity_2Identitylstm/while/add:z:0^lstm/while/NoOp*
T0*
_output_shapes
: ¨
lstm/while/Identity_3Identity?lstm/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm/while/Identity_4Identitylstm/while/lstm_cell/mul_2:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/while/Identity_5Identitylstm/while/lstm_cell/add_1:z:0^lstm/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Û
lstm/while/NoOpNoOp,^lstm/while/lstm_cell/BiasAdd/ReadVariableOp+^lstm/while/lstm_cell/MatMul/ReadVariableOp-^lstm/while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "3
lstm_while_identitylstm/while/Identity:output:0"7
lstm_while_identity_1lstm/while/Identity_1:output:0"7
lstm_while_identity_2lstm/while/Identity_2:output:0"7
lstm_while_identity_3lstm/while/Identity_3:output:0"7
lstm_while_identity_4lstm/while/Identity_4:output:0"7
lstm_while_identity_5lstm/while/Identity_5:output:0"n
4lstm_while_lstm_cell_biasadd_readvariableop_resource6lstm_while_lstm_cell_biasadd_readvariableop_resource_0"p
5lstm_while_lstm_cell_matmul_1_readvariableop_resource7lstm_while_lstm_cell_matmul_1_readvariableop_resource_0"l
3lstm_while_lstm_cell_matmul_readvariableop_resource5lstm_while_lstm_cell_matmul_readvariableop_resource_0"D
lstm_while_lstm_strided_slice_1!lstm_while_lstm_strided_slice_1_0"¼
[lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor]lstm_while_tensorarrayv2read_tensorlistgetitem_lstm_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2Z
+lstm/while/lstm_cell/BiasAdd/ReadVariableOp+lstm/while/lstm_cell/BiasAdd/ReadVariableOp2X
*lstm/while/lstm_cell/MatMul/ReadVariableOp*lstm/while/lstm_cell/MatMul/ReadVariableOp2\
,lstm/while/lstm_cell/MatMul_1/ReadVariableOp,lstm/while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¼

&__inference_dense_layer_call_fn_127126

inputs
unknown:@@
	unknown_0:@
identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_123448o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ý	
Ï
lstm_1_while_cond_124987*
&lstm_1_while_lstm_1_while_loop_counter0
,lstm_1_while_lstm_1_while_maximum_iterations
lstm_1_while_placeholder
lstm_1_while_placeholder_1
lstm_1_while_placeholder_2
lstm_1_while_placeholder_3,
(lstm_1_while_less_lstm_1_strided_slice_1B
>lstm_1_while_lstm_1_while_cond_124987___redundant_placeholder0B
>lstm_1_while_lstm_1_while_cond_124987___redundant_placeholder1B
>lstm_1_while_lstm_1_while_cond_124987___redundant_placeholder2B
>lstm_1_while_lstm_1_while_cond_124987___redundant_placeholder3
lstm_1_while_identity
~
lstm_1/while/LessLesslstm_1_while_placeholder(lstm_1_while_less_lstm_1_strided_slice_1*
T0*
_output_shapes
: Y
lstm_1/while/IdentityIdentitylstm_1/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_1_while_identitylstm_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
è
ô
*__inference_lstm_cell_layer_call_fn_127211

inputs
states_0
states_1
unknown:
þ
	unknown_0:	@
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall¥
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_122143o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿþ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
ôH

@__inference_lstm_layer_call_and_return_conditional_losses_123129

inputs<
(lstm_cell_matmul_readvariableop_resource:
þ=
*lstm_cell_matmul_1_readvariableop_resource:	@8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_123045*
condR
while_cond_123044*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿþ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
ö

!sequential_lstm_while_cond_121546<
8sequential_lstm_while_sequential_lstm_while_loop_counterB
>sequential_lstm_while_sequential_lstm_while_maximum_iterations%
!sequential_lstm_while_placeholder'
#sequential_lstm_while_placeholder_1'
#sequential_lstm_while_placeholder_2'
#sequential_lstm_while_placeholder_3>
:sequential_lstm_while_less_sequential_lstm_strided_slice_1T
Psequential_lstm_while_sequential_lstm_while_cond_121546___redundant_placeholder0T
Psequential_lstm_while_sequential_lstm_while_cond_121546___redundant_placeholder1T
Psequential_lstm_while_sequential_lstm_while_cond_121546___redundant_placeholder2T
Psequential_lstm_while_sequential_lstm_while_cond_121546___redundant_placeholder3"
sequential_lstm_while_identity
¢
sequential/lstm/while/LessLess!sequential_lstm_while_placeholder:sequential_lstm_while_less_sequential_lstm_strided_slice_1*
T0*
_output_shapes
: k
sequential/lstm/while/IdentityIdentitysequential/lstm/while/Less:z:0*
T0
*
_output_shapes
: "I
sequential_lstm_while_identity'sequential/lstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
Ö

E__inference_lstm_cell_layer_call_and_return_conditional_losses_121997

inputs

states
states_12
matmul_readvariableop_resource:
þ3
 matmul_1_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿþ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
ì
ö
,__inference_lstm_cell_2_layer_call_fn_127407

inputs
states_0
states_1
unknown:

	unknown_0:	@
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_122843o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1


ô
C__inference_dense_1_layer_call_and_return_conditional_losses_123465

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
³
Ò
!__inference__wrapped_model_121930

lstm_inputL
8sequential_lstm_lstm_cell_matmul_readvariableop_resource:
þM
:sequential_lstm_lstm_cell_matmul_1_readvariableop_resource:	@H
9sequential_lstm_lstm_cell_biasadd_readvariableop_resource:	O
<sequential_lstm_1_lstm_cell_1_matmul_readvariableop_resource:	@R
>sequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource:
L
=sequential_lstm_1_lstm_cell_1_biasadd_readvariableop_resource:	P
<sequential_lstm_2_lstm_cell_2_matmul_readvariableop_resource:
Q
>sequential_lstm_2_lstm_cell_2_matmul_1_readvariableop_resource:	@L
=sequential_lstm_2_lstm_cell_2_biasadd_readvariableop_resource:	A
/sequential_dense_matmul_readvariableop_resource:@@>
0sequential_dense_biasadd_readvariableop_resource:@C
1sequential_dense_1_matmul_readvariableop_resource:@ @
2sequential_dense_1_biasadd_readvariableop_resource: C
1sequential_dense_2_matmul_readvariableop_resource: @
2sequential_dense_2_biasadd_readvariableop_resource:
identity¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp¢)sequential/dense_2/BiasAdd/ReadVariableOp¢(sequential/dense_2/MatMul/ReadVariableOp¢0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp¢/sequential/lstm/lstm_cell/MatMul/ReadVariableOp¢1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp¢sequential/lstm/while¢4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp¢3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp¢5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp¢sequential/lstm_1/while¢4sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp¢3sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOp¢5sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp¢sequential/lstm_2/whileO
sequential/lstm/ShapeShape
lstm_input*
T0*
_output_shapes
:m
#sequential/lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%sequential/lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%sequential/lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
sequential/lstm/strided_sliceStridedSlicesequential/lstm/Shape:output:0,sequential/lstm/strided_slice/stack:output:0.sequential/lstm/strided_slice/stack_1:output:0.sequential/lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
sequential/lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@£
sequential/lstm/zeros/packedPack&sequential/lstm/strided_slice:output:0'sequential/lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
sequential/lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
sequential/lstm/zerosFill%sequential/lstm/zeros/packed:output:0$sequential/lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
 sequential/lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@§
sequential/lstm/zeros_1/packedPack&sequential/lstm/strided_slice:output:0)sequential/lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¢
sequential/lstm/zeros_1Fill'sequential/lstm/zeros_1/packed:output:0&sequential/lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
sequential/lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential/lstm/transpose	Transpose
lstm_input'sequential/lstm/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþd
sequential/lstm/Shape_1Shapesequential/lstm/transpose:y:0*
T0*
_output_shapes
:o
%sequential/lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
sequential/lstm/strided_slice_1StridedSlice sequential/lstm/Shape_1:output:0.sequential/lstm/strided_slice_1/stack:output:00sequential/lstm/strided_slice_1/stack_1:output:00sequential/lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+sequential/lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿä
sequential/lstm/TensorArrayV2TensorListReserve4sequential/lstm/TensorArrayV2/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Esequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  
7sequential/lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm/transpose:y:0Nsequential/lstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒo
%sequential/lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:º
sequential/lstm/strided_slice_2StridedSlicesequential/lstm/transpose:y:0.sequential/lstm/strided_slice_2/stack:output:00sequential/lstm/strided_slice_2/stack_1:output:00sequential/lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_maskª
/sequential/lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp8sequential_lstm_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0À
 sequential/lstm/lstm_cell/MatMulMatMul(sequential/lstm/strided_slice_2:output:07sequential/lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:sequential_lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0º
"sequential/lstm/lstm_cell/MatMul_1MatMulsequential/lstm/zeros:output:09sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
sequential/lstm/lstm_cell/addAddV2*sequential/lstm/lstm_cell/MatMul:product:0,sequential/lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9sequential_lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0¼
!sequential/lstm/lstm_cell/BiasAddBiasAdd!sequential/lstm/lstm_cell/add:z:08sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)sequential/lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
sequential/lstm/lstm_cell/splitSplit2sequential/lstm/lstm_cell/split/split_dim:output:0*sequential/lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split
!sequential/lstm/lstm_cell/SigmoidSigmoid(sequential/lstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#sequential/lstm/lstm_cell/Sigmoid_1Sigmoid(sequential/lstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
sequential/lstm/lstm_cell/mulMul'sequential/lstm/lstm_cell/Sigmoid_1:y:0 sequential/lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential/lstm/lstm_cell/ReluRelu(sequential/lstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@­
sequential/lstm/lstm_cell/mul_1Mul%sequential/lstm/lstm_cell/Sigmoid:y:0,sequential/lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
sequential/lstm/lstm_cell/add_1AddV2!sequential/lstm/lstm_cell/mul:z:0#sequential/lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#sequential/lstm/lstm_cell/Sigmoid_2Sigmoid(sequential/lstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 sequential/lstm/lstm_cell/Relu_1Relu#sequential/lstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@±
sequential/lstm/lstm_cell/mul_2Mul'sequential/lstm/lstm_cell/Sigmoid_2:y:0.sequential/lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
-sequential/lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   è
sequential/lstm/TensorArrayV2_1TensorListReserve6sequential/lstm/TensorArrayV2_1/element_shape:output:0(sequential/lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒV
sequential/lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(sequential/lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿd
"sequential/lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ù
sequential/lstm/whileWhile+sequential/lstm/while/loop_counter:output:01sequential/lstm/while/maximum_iterations:output:0sequential/lstm/time:output:0(sequential/lstm/TensorArrayV2_1:handle:0sequential/lstm/zeros:output:0 sequential/lstm/zeros_1:output:0(sequential/lstm/strided_slice_1:output:0Gsequential/lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:08sequential_lstm_lstm_cell_matmul_readvariableop_resource:sequential_lstm_lstm_cell_matmul_1_readvariableop_resource9sequential_lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!sequential_lstm_while_body_121547*-
cond%R#
!sequential_lstm_while_cond_121546*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
@sequential/lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ò
2sequential/lstm/TensorArrayV2Stack/TensorListStackTensorListStacksequential/lstm/while:output:3Isequential/lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0x
%sequential/lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿq
'sequential/lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
sequential/lstm/strided_slice_3StridedSlice;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0.sequential/lstm/strided_slice_3/stack:output:00sequential/lstm/strided_slice_3/stack_1:output:00sequential/lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_masku
 sequential/lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Æ
sequential/lstm/transpose_1	Transpose;sequential/lstm/TensorArrayV2Stack/TensorListStack:tensor:0)sequential/lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
sequential/lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    f
sequential/lstm_1/ShapeShapesequential/lstm/transpose_1:y:0*
T0*
_output_shapes
:o
%sequential/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
sequential/lstm_1/strided_sliceStridedSlice sequential/lstm_1/Shape:output:0.sequential/lstm_1/strided_slice/stack:output:00sequential/lstm_1/strided_slice/stack_1:output:00sequential/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
 sequential/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :©
sequential/lstm_1/zeros/packedPack(sequential/lstm_1/strided_slice:output:0)sequential/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
sequential/lstm_1/zerosFill'sequential/lstm_1/zeros/packed:output:0&sequential/lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
"sequential/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :­
 sequential/lstm_1/zeros_1/packedPack(sequential/lstm_1/strided_slice:output:0+sequential/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ©
sequential/lstm_1/zeros_1Fill)sequential/lstm_1/zeros_1/packed:output:0(sequential/lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
 sequential/lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ª
sequential/lstm_1/transpose	Transposesequential/lstm/transpose_1:y:0)sequential/lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
sequential/lstm_1/Shape_1Shapesequential/lstm_1/transpose:y:0*
T0*
_output_shapes
:q
'sequential/lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential/lstm_1/strided_slice_1StridedSlice"sequential/lstm_1/Shape_1:output:00sequential/lstm_1/strided_slice_1/stack:output:02sequential/lstm_1/strided_slice_1/stack_1:output:02sequential/lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-sequential/lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿê
sequential/lstm_1/TensorArrayV2TensorListReserve6sequential/lstm_1/TensorArrayV2/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Gsequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
9sequential/lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm_1/transpose:y:0Psequential/lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒq
'sequential/lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ã
!sequential/lstm_1/strided_slice_2StridedSlicesequential/lstm_1/transpose:y:00sequential/lstm_1/strided_slice_2/stack:output:02sequential/lstm_1/strided_slice_2/stack_1:output:02sequential/lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask±
3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp<sequential_lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0Ê
$sequential/lstm_1/lstm_cell_1/MatMulMatMul*sequential/lstm_1/strided_slice_2:output:0;sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¶
5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp>sequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ä
&sequential/lstm_1/lstm_cell_1/MatMul_1MatMul sequential/lstm_1/zeros:output:0=sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
!sequential/lstm_1/lstm_cell_1/addAddV2.sequential/lstm_1/lstm_cell_1/MatMul:product:00sequential/lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp=sequential_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0È
%sequential/lstm_1/lstm_cell_1/BiasAddBiasAdd%sequential/lstm_1/lstm_cell_1/add:z:0<sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential/lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#sequential/lstm_1/lstm_cell_1/splitSplit6sequential/lstm_1/lstm_cell_1/split/split_dim:output:0.sequential/lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
%sequential/lstm_1/lstm_cell_1/SigmoidSigmoid,sequential/lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'sequential/lstm_1/lstm_cell_1/Sigmoid_1Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
!sequential/lstm_1/lstm_cell_1/mulMul+sequential/lstm_1/lstm_cell_1/Sigmoid_1:y:0"sequential/lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"sequential/lstm_1/lstm_cell_1/ReluRelu,sequential/lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿº
#sequential/lstm_1/lstm_cell_1/mul_1Mul)sequential/lstm_1/lstm_cell_1/Sigmoid:y:00sequential/lstm_1/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
#sequential/lstm_1/lstm_cell_1/add_1AddV2%sequential/lstm_1/lstm_cell_1/mul:z:0'sequential/lstm_1/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'sequential/lstm_1/lstm_cell_1/Sigmoid_2Sigmoid,sequential/lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
$sequential/lstm_1/lstm_cell_1/Relu_1Relu'sequential/lstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¾
#sequential/lstm_1/lstm_cell_1/mul_2Mul+sequential/lstm_1/lstm_cell_1/Sigmoid_2:y:02sequential/lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
/sequential/lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   î
!sequential/lstm_1/TensorArrayV2_1TensorListReserve8sequential/lstm_1/TensorArrayV2_1/element_shape:output:0*sequential/lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
sequential/lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : u
*sequential/lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿf
$sequential/lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÿ
sequential/lstm_1/whileWhile-sequential/lstm_1/while/loop_counter:output:03sequential/lstm_1/while/maximum_iterations:output:0sequential/lstm_1/time:output:0*sequential/lstm_1/TensorArrayV2_1:handle:0 sequential/lstm_1/zeros:output:0"sequential/lstm_1/zeros_1:output:0*sequential/lstm_1/strided_slice_1:output:0Isequential/lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0<sequential_lstm_1_lstm_cell_1_matmul_readvariableop_resource>sequential_lstm_1_lstm_cell_1_matmul_1_readvariableop_resource=sequential_lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( */
body'R%
#sequential_lstm_1_while_body_121686*/
cond'R%
#sequential_lstm_1_while_cond_121685*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
Bsequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ù
4sequential/lstm_1/TensorArrayV2Stack/TensorListStackTensorListStack sequential/lstm_1/while:output:3Ksequential/lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0z
'sequential/lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿs
)sequential/lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
!sequential/lstm_1/strided_slice_3StridedSlice=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:00sequential/lstm_1/strided_slice_3/stack:output:02sequential/lstm_1/strided_slice_3/stack_1:output:02sequential/lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskw
"sequential/lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Í
sequential/lstm_1/transpose_1	Transpose=sequential/lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0+sequential/lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
sequential/lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
sequential/lstm_2/ShapeShape!sequential/lstm_1/transpose_1:y:0*
T0*
_output_shapes
:o
%sequential/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'sequential/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'sequential/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
sequential/lstm_2/strided_sliceStridedSlice sequential/lstm_2/Shape:output:0.sequential/lstm_2/strided_slice/stack:output:00sequential/lstm_2/strided_slice/stack_1:output:00sequential/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 sequential/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@©
sequential/lstm_2/zeros/packedPack(sequential/lstm_2/strided_slice:output:0)sequential/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:b
sequential/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¢
sequential/lstm_2/zerosFill'sequential/lstm_2/zeros/packed:output:0&sequential/lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"sequential/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@­
 sequential/lstm_2/zeros_1/packedPack(sequential/lstm_2/strided_slice:output:0+sequential/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¨
sequential/lstm_2/zeros_1Fill)sequential/lstm_2/zeros_1/packed:output:0(sequential/lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
 sequential/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ­
sequential/lstm_2/transpose	Transpose!sequential/lstm_1/transpose_1:y:0)sequential/lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
sequential/lstm_2/Shape_1Shapesequential/lstm_2/transpose:y:0*
T0*
_output_shapes
:q
'sequential/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential/lstm_2/strided_slice_1StridedSlice"sequential/lstm_2/Shape_1:output:00sequential/lstm_2/strided_slice_1/stack:output:02sequential/lstm_2/strided_slice_1/stack_1:output:02sequential/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
-sequential/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿê
sequential/lstm_2/TensorArrayV2TensorListReserve6sequential/lstm_2/TensorArrayV2/element_shape:output:0*sequential/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Gsequential/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
9sequential/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsequential/lstm_2/transpose:y:0Psequential/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒq
'sequential/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ä
!sequential/lstm_2/strided_slice_2StridedSlicesequential/lstm_2/transpose:y:00sequential/lstm_2/strided_slice_2/stack:output:02sequential/lstm_2/strided_slice_2/stack_1:output:02sequential/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask²
3sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp<sequential_lstm_2_lstm_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0Ê
$sequential/lstm_2/lstm_cell_2/MatMulMatMul*sequential/lstm_2/strided_slice_2:output:0;sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿµ
5sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp>sequential_lstm_2_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0Ä
&sequential/lstm_2/lstm_cell_2/MatMul_1MatMul sequential/lstm_2/zeros:output:0=sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
!sequential/lstm_2/lstm_cell_2/addAddV2.sequential/lstm_2/lstm_cell_2/MatMul:product:00sequential/lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
4sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp=sequential_lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0È
%sequential/lstm_2/lstm_cell_2/BiasAddBiasAdd%sequential/lstm_2/lstm_cell_2/add:z:0<sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-sequential/lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#sequential/lstm_2/lstm_cell_2/splitSplit6sequential/lstm_2/lstm_cell_2/split/split_dim:output:0.sequential/lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split
%sequential/lstm_2/lstm_cell_2/SigmoidSigmoid,sequential/lstm_2/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'sequential/lstm_2/lstm_cell_2/Sigmoid_1Sigmoid,sequential/lstm_2/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
!sequential/lstm_2/lstm_cell_2/mulMul+sequential/lstm_2/lstm_cell_2/Sigmoid_1:y:0"sequential/lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"sequential/lstm_2/lstm_cell_2/ReluRelu,sequential/lstm_2/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
#sequential/lstm_2/lstm_cell_2/mul_1Mul)sequential/lstm_2/lstm_cell_2/Sigmoid:y:00sequential/lstm_2/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
#sequential/lstm_2/lstm_cell_2/add_1AddV2%sequential/lstm_2/lstm_cell_2/mul:z:0'sequential/lstm_2/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'sequential/lstm_2/lstm_cell_2/Sigmoid_2Sigmoid,sequential/lstm_2/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$sequential/lstm_2/lstm_cell_2/Relu_1Relu'sequential/lstm_2/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
#sequential/lstm_2/lstm_cell_2/mul_2Mul+sequential/lstm_2/lstm_cell_2/Sigmoid_2:y:02sequential/lstm_2/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
/sequential/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   î
!sequential/lstm_2/TensorArrayV2_1TensorListReserve8sequential/lstm_2/TensorArrayV2_1/element_shape:output:0*sequential/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
sequential/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : u
*sequential/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿf
$sequential/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : û
sequential/lstm_2/whileWhile-sequential/lstm_2/while/loop_counter:output:03sequential/lstm_2/while/maximum_iterations:output:0sequential/lstm_2/time:output:0*sequential/lstm_2/TensorArrayV2_1:handle:0 sequential/lstm_2/zeros:output:0"sequential/lstm_2/zeros_1:output:0*sequential/lstm_2/strided_slice_1:output:0Isequential/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0<sequential_lstm_2_lstm_cell_2_matmul_readvariableop_resource>sequential_lstm_2_lstm_cell_2_matmul_1_readvariableop_resource=sequential_lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( */
body'R%
#sequential_lstm_2_while_body_121825*/
cond'R%
#sequential_lstm_2_while_cond_121824*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
Bsequential/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ø
4sequential/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack sequential/lstm_2/while:output:3Ksequential/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0z
'sequential/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿs
)sequential/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: s
)sequential/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:á
!sequential/lstm_2/strided_slice_3StridedSlice=sequential/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:00sequential/lstm_2/strided_slice_3/stack:output:02sequential/lstm_2/strided_slice_3/stack_1:output:02sequential/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskw
"sequential/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ì
sequential/lstm_2/transpose_1	Transpose=sequential/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0+sequential/lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
sequential/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0¯
sequential/dense/MatMulMatMul*sequential/lstm_2/strided_slice_3:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0©
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0¬
sequential/dense_1/MatMulMatMul#sequential/dense/Relu:activations:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¯
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ v
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0®
sequential/dense_2/MatMulMatMul%sequential/dense_1/Relu:activations:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sequential/dense_2/SoftmaxSoftmax#sequential/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$sequential/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿö
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp1^sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0^sequential/lstm/lstm_cell/MatMul/ReadVariableOp2^sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp^sequential/lstm/while5^sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp4^sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp6^sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^sequential/lstm_1/while5^sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp4^sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOp6^sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^sequential/lstm_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2d
0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp0sequential/lstm/lstm_cell/BiasAdd/ReadVariableOp2b
/sequential/lstm/lstm_cell/MatMul/ReadVariableOp/sequential/lstm/lstm_cell/MatMul/ReadVariableOp2f
1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp1sequential/lstm/lstm_cell/MatMul_1/ReadVariableOp2.
sequential/lstm/whilesequential/lstm/while2l
4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp4sequential/lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2j
3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp3sequential/lstm_1/lstm_cell_1/MatMul/ReadVariableOp2n
5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp5sequential/lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp22
sequential/lstm_1/whilesequential/lstm_1/while2l
4sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp4sequential/lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2j
3sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOp3sequential/lstm_2/lstm_cell_2/MatMul/ReadVariableOp2n
5sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp5sequential/lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp22
sequential/lstm_2/whilesequential/lstm_2/while:X T
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
$
_user_specified_name
lstm_input
ô
ö
,__inference_lstm_cell_1_layer_call_fn_127292

inputs
states_0
states_1
unknown:	@
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_122347p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
¹
Ã
while_cond_123788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_123788___redundant_placeholder04
0while_while_cond_123788___redundant_placeholder14
0while_while_cond_123788___redundant_placeholder24
0while_while_cond_123788___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ß7
É
while_body_126890
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_2_matmul_readvariableop_resource_0:
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	@B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_2_matmul_readvariableop_resource:
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	@@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ÀJ

B__inference_lstm_1_layer_call_and_return_conditional_losses_126215
inputs_0=
*lstm_cell_1_matmul_readvariableop_resource:	@@
,lstm_cell_1_matmul_1_readvariableop_resource:
:
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Þ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_126131*
condR
while_cond_126130*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
inputs/0


ò
A__inference_dense_layer_call_and_return_conditional_losses_123448

inputs0
matmul_readvariableop_resource:@@-
biasadd_readvariableop_resource:@
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
×6
·
while_body_123045
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
þE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	@@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
þC
0while_lstm_cell_matmul_1_readvariableop_resource:	@>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
þ*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒv
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
@
©

lstm_2_while_body_124685*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0M
9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0:
N
;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	@I
:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorK
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource:
L
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource:	@G
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:	¢/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp¢.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp¢0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ê
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0ª
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Í
lstm_2/while/lstm_cell_2/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0´
!lstm_2/while/lstm_cell_2/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
lstm_2/while/lstm_cell_2/addAddV2)lstm_2/while/lstm_cell_2/MatMul:product:0+lstm_2/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¹
 lstm_2/while/lstm_cell_2/BiasAddBiasAdd lstm_2/while/lstm_cell_2/add:z:07lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_2/while/lstm_cell_2/splitSplit1lstm_2/while/lstm_cell_2/split/split_dim:output:0)lstm_2/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split
 lstm_2/while/lstm_cell_2/SigmoidSigmoid'lstm_2/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/while/lstm_cell_2/mulMul&lstm_2/while/lstm_cell_2/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/while/lstm_cell_2/ReluRelu'lstm_2/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
lstm_2/while/lstm_cell_2/mul_1Mul$lstm_2/while/lstm_cell_2/Sigmoid:y:0+lstm_2/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/while/lstm_cell_2/add_1AddV2 lstm_2/while/lstm_cell_2/mul:z:0"lstm_2/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_2/while/lstm_cell_2/Relu_1Relu"lstm_2/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
lstm_2/while/lstm_cell_2/mul_2Mul&lstm_2/while/lstm_cell_2/Sigmoid_2:y:0-lstm_2/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@à
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒT
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:0^lstm_2/while/NoOp*
T0*
_output_shapes
: 
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations^lstm_2/while/NoOp*
T0*
_output_shapes
: n
lstm_2/while/Identity_2Identitylstm_2/while/add:z:0^lstm_2/while/NoOp*
T0*
_output_shapes
: ®
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_2/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_2/mul_2:z:0^lstm_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_2/add_1:z:0^lstm_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@é
lstm_2/while/NoOpNoOp0^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0"Ä
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2b
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
òI

B__inference_lstm_2_layer_call_and_return_conditional_losses_123429

inputs>
*lstm_cell_2_matmul_readvariableop_resource:
?
,lstm_cell_2_matmul_1_readvariableop_resource:	@:
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_123345*
condR
while_cond_123344*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
J

B__inference_lstm_1_layer_call_and_return_conditional_losses_123279

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	@@
,lstm_cell_1_matmul_1_readvariableop_resource:
:
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Þ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_123195*
condR
while_cond_123194*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¹
Ã
while_cond_126130
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_126130___redundant_placeholder04
0while_while_cond_126130___redundant_placeholder14
0while_while_cond_126130___redundant_placeholder24
0while_while_cond_126130___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ß7
É
while_body_126604
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_2_matmul_readvariableop_resource_0:
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	@B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_2_matmul_readvariableop_resource:
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	@@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
µ
Ã
while_cond_126889
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_126889___redundant_placeholder04
0while_while_cond_126889___redundant_placeholder14
0while_while_cond_126889___redundant_placeholder24
0while_while_cond_126889___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ñ7
É
while_body_125988
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_1_matmul_readvariableop_resource_0:	@H
4while_lstm_cell_1_matmul_1_readvariableop_resource_0:
B
3while_lstm_cell_1_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_1_matmul_readvariableop_resource:	@F
2while_lstm_cell_1_matmul_1_readvariableop_resource:
@
1while_lstm_cell_1_biasadd_readvariableop_resource:	¢(while/lstm_cell_1/BiasAdd/ReadVariableOp¢'while/lstm_cell_1/MatMul/ReadVariableOp¢)while/lstm_cell_1/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0
'while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0¸
while/lstm_cell_1/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
)while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
while/lstm_cell_1/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/addAddV2"while/lstm_cell_1/MatMul:product:0$while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_1/BiasAddBiasAddwhile/lstm_cell_1/add:z:00while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ð
while/lstm_cell_1/splitSplit*while/lstm_cell_1/split/split_dim:output:0"while/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splity
while/lstm_cell_1/SigmoidSigmoid while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_1Sigmoid while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mulMulwhile/lstm_cell_1/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
while/lstm_cell_1/ReluRelu while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_1Mulwhile/lstm_cell_1/Sigmoid:y:0$while/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/add_1AddV2while/lstm_cell_1/mul:z:0while/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
while/lstm_cell_1/Sigmoid_2Sigmoid while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
while/lstm_cell_1/Relu_1Reluwhile/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_1/mul_2Mulwhile/lstm_cell_1/Sigmoid_2:y:0&while/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_1/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
while/Identity_5Identitywhile/lstm_cell_1/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÍ

while/NoOpNoOp)^while/lstm_cell_1/BiasAdd/ReadVariableOp(^while/lstm_cell_1/MatMul/ReadVariableOp*^while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_1_biasadd_readvariableop_resource3while_lstm_cell_1_biasadd_readvariableop_resource_0"j
2while_lstm_cell_1_matmul_1_readvariableop_resource4while_lstm_cell_1_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_1_matmul_readvariableop_resource2while_lstm_cell_1_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2T
(while/lstm_cell_1/BiasAdd/ReadVariableOp(while/lstm_cell_1/BiasAdd/ReadVariableOp2R
'while/lstm_cell_1/MatMul/ReadVariableOp'while/lstm_cell_1/MatMul/ReadVariableOp2V
)while/lstm_cell_1/MatMul_1/ReadVariableOp)while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
À

(__inference_dense_1_layer_call_fn_127146

inputs
unknown:@ 
	unknown_0: 
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_123465o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
×6
·
while_body_125658
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
þE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	@@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
þC
0while_lstm_cell_matmul_1_readvariableop_resource:	@>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
þ*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒv
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ô
ö
,__inference_lstm_cell_1_layer_call_fn_127309

inputs
states_0
states_1
unknown:	@
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallª
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_122493p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
states/1
µ
Ã
while_cond_126603
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_126603___redundant_placeholder04
0while_while_cond_126603___redundant_placeholder14
0while_while_cond_126603___redundant_placeholder24
0while_while_cond_126603___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
8

B__inference_lstm_1_layer_call_and_return_conditional_losses_122430

inputs%
lstm_cell_1_122348:	@&
lstm_cell_1_122350:
!
lstm_cell_1_122352:	
identity¢#lstm_cell_1/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskó
#lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_1_122348lstm_cell_1_122350lstm_cell_1_122352*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_122347n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¸
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_1_122348lstm_cell_1_122350lstm_cell_1_122352*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122361*
condR
while_cond_122360*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ì
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿt
NoOpNoOp$^lstm_cell_1/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@: : : 2J
#lstm_cell_1/StatefulPartitionedCall#lstm_cell_1/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
ç7
÷
@__inference_lstm_layer_call_and_return_conditional_losses_122271

inputs$
lstm_cell_122189:
þ#
lstm_cell_122191:	@
lstm_cell_122193:	
identity¢!lstm_cell/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_maskæ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_122189lstm_cell_122191lstm_cell_122193*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_122143n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_122189lstm_cell_122191lstm_cell_122193*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122202*
condR
while_cond_122201*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@r
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
ôH

@__inference_lstm_layer_call_and_return_conditional_losses_124038

inputs<
(lstm_cell_matmul_readvariableop_resource:
þ=
*lstm_cell_matmul_1_readvariableop_resource:	@8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_123954*
condR
while_cond_123953*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    b
IdentityIdentitytranspose_1:y:0^NoOp*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿþ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
M

#sequential_lstm_1_while_body_121686@
<sequential_lstm_1_while_sequential_lstm_1_while_loop_counterF
Bsequential_lstm_1_while_sequential_lstm_1_while_maximum_iterations'
#sequential_lstm_1_while_placeholder)
%sequential_lstm_1_while_placeholder_1)
%sequential_lstm_1_while_placeholder_2)
%sequential_lstm_1_while_placeholder_3?
;sequential_lstm_1_while_sequential_lstm_1_strided_slice_1_0{
wsequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0W
Dsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0:	@Z
Fsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0:
T
Esequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0:	$
 sequential_lstm_1_while_identity&
"sequential_lstm_1_while_identity_1&
"sequential_lstm_1_while_identity_2&
"sequential_lstm_1_while_identity_3&
"sequential_lstm_1_while_identity_4&
"sequential_lstm_1_while_identity_5=
9sequential_lstm_1_while_sequential_lstm_1_strided_slice_1y
usequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensorU
Bsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource:	@X
Dsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource:
R
Csequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource:	¢:sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp¢9sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp¢;sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp
Isequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
;sequential/lstm_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwsequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0#sequential_lstm_1_while_placeholderRsequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0¿
9sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOpReadVariableOpDsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0*
_output_shapes
:	@*
dtype0î
*sequential/lstm_1/while/lstm_cell_1/MatMulMatMulBsequential/lstm_1/while/TensorArrayV2Read/TensorListGetItem:item:0Asequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
;sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOpFsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Õ
,sequential/lstm_1/while/lstm_cell_1/MatMul_1MatMul%sequential_lstm_1_while_placeholder_2Csequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
'sequential/lstm_1/while/lstm_cell_1/addAddV24sequential/lstm_1/while/lstm_cell_1/MatMul:product:06sequential/lstm_1/while/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
:sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOpEsequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ú
+sequential/lstm_1/while/lstm_cell_1/BiasAddBiasAdd+sequential/lstm_1/while/lstm_cell_1/add:z:0Bsequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
3sequential/lstm_1/while/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)sequential/lstm_1/while/lstm_cell_1/splitSplit<sequential/lstm_1/while/lstm_cell_1/split/split_dim:output:04sequential/lstm_1/while/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split
+sequential/lstm_1/while/lstm_cell_1/SigmoidSigmoid2sequential/lstm_1/while/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-sequential/lstm_1/while/lstm_cell_1/Sigmoid_1Sigmoid2sequential/lstm_1/while/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
'sequential/lstm_1/while/lstm_cell_1/mulMul1sequential/lstm_1/while/lstm_cell_1/Sigmoid_1:y:0%sequential_lstm_1_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential/lstm_1/while/lstm_cell_1/ReluRelu2sequential/lstm_1/while/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÌ
)sequential/lstm_1/while/lstm_cell_1/mul_1Mul/sequential/lstm_1/while/lstm_cell_1/Sigmoid:y:06sequential/lstm_1/while/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
)sequential/lstm_1/while/lstm_cell_1/add_1AddV2+sequential/lstm_1/while/lstm_cell_1/mul:z:0-sequential/lstm_1/while/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
-sequential/lstm_1/while/lstm_cell_1/Sigmoid_2Sigmoid2sequential/lstm_1/while/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential/lstm_1/while/lstm_cell_1/Relu_1Relu-sequential/lstm_1/while/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÐ
)sequential/lstm_1/while/lstm_cell_1/mul_2Mul1sequential/lstm_1/while/lstm_cell_1/Sigmoid_2:y:08sequential/lstm_1/while/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
<sequential/lstm_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%sequential_lstm_1_while_placeholder_1#sequential_lstm_1_while_placeholder-sequential/lstm_1/while/lstm_cell_1/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ_
sequential/lstm_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/lstm_1/while/addAddV2#sequential_lstm_1_while_placeholder&sequential/lstm_1/while/add/y:output:0*
T0*
_output_shapes
: a
sequential/lstm_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¯
sequential/lstm_1/while/add_1AddV2<sequential_lstm_1_while_sequential_lstm_1_while_loop_counter(sequential/lstm_1/while/add_1/y:output:0*
T0*
_output_shapes
: 
 sequential/lstm_1/while/IdentityIdentity!sequential/lstm_1/while/add_1:z:0^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: ²
"sequential/lstm_1/while/Identity_1IdentityBsequential_lstm_1_while_sequential_lstm_1_while_maximum_iterations^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: 
"sequential/lstm_1/while/Identity_2Identitysequential/lstm_1/while/add:z:0^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: Ï
"sequential/lstm_1/while/Identity_3IdentityLsequential/lstm_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm_1/while/NoOp*
T0*
_output_shapes
: :éèÒ¯
"sequential/lstm_1/while/Identity_4Identity-sequential/lstm_1/while/lstm_cell_1/mul_2:z:0^sequential/lstm_1/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¯
"sequential/lstm_1/while/Identity_5Identity-sequential/lstm_1/while/lstm_cell_1/add_1:z:0^sequential/lstm_1/while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential/lstm_1/while/NoOpNoOp;^sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:^sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp<^sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "M
 sequential_lstm_1_while_identity)sequential/lstm_1/while/Identity:output:0"Q
"sequential_lstm_1_while_identity_1+sequential/lstm_1/while/Identity_1:output:0"Q
"sequential_lstm_1_while_identity_2+sequential/lstm_1/while/Identity_2:output:0"Q
"sequential_lstm_1_while_identity_3+sequential/lstm_1/while/Identity_3:output:0"Q
"sequential_lstm_1_while_identity_4+sequential/lstm_1/while/Identity_4:output:0"Q
"sequential_lstm_1_while_identity_5+sequential/lstm_1/while/Identity_5:output:0"
Csequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resourceEsequential_lstm_1_while_lstm_cell_1_biasadd_readvariableop_resource_0"
Dsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resourceFsequential_lstm_1_while_lstm_cell_1_matmul_1_readvariableop_resource_0"
Bsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resourceDsequential_lstm_1_while_lstm_cell_1_matmul_readvariableop_resource_0"x
9sequential_lstm_1_while_sequential_lstm_1_strided_slice_1;sequential_lstm_1_while_sequential_lstm_1_strided_slice_1_0"ð
usequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensorwsequential_lstm_1_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2x
:sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp:sequential/lstm_1/while/lstm_cell_1/BiasAdd/ReadVariableOp2v
9sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp9sequential/lstm_1/while/lstm_cell_1/MatMul/ReadVariableOp2z
;sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp;sequential/lstm_1/while/lstm_cell_1/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
Á	
§
lstm_while_cond_124848&
"lstm_while_lstm_while_loop_counter,
(lstm_while_lstm_while_maximum_iterations
lstm_while_placeholder
lstm_while_placeholder_1
lstm_while_placeholder_2
lstm_while_placeholder_3(
$lstm_while_less_lstm_strided_slice_1>
:lstm_while_lstm_while_cond_124848___redundant_placeholder0>
:lstm_while_lstm_while_cond_124848___redundant_placeholder1>
:lstm_while_lstm_while_cond_124848___redundant_placeholder2>
:lstm_while_lstm_while_cond_124848___redundant_placeholder3
lstm_while_identity
v
lstm/while/LessLesslstm_while_placeholder$lstm_while_less_lstm_strided_slice_1*
T0*
_output_shapes
: U
lstm/while/IdentityIdentitylstm/while/Less:z:0*
T0
*
_output_shapes
: "3
lstm_while_identitylstm/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
â 

F__inference_sequential_layer_call_and_return_conditional_losses_123489

inputs
lstm_123130:
þ
lstm_123132:	@
lstm_123134:	 
lstm_1_123280:	@!
lstm_1_123282:

lstm_1_123284:	!
lstm_2_123430:
 
lstm_2_123432:	@
lstm_2_123434:	
dense_123449:@@
dense_123451:@ 
dense_1_123466:@ 
dense_1_123468:  
dense_2_123483: 
dense_2_123485:
identity¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢lstm/StatefulPartitionedCall¢lstm_1/StatefulPartitionedCall¢lstm_2/StatefulPartitionedCalló
lstm/StatefulPartitionedCallStatefulPartitionedCallinputslstm_123130lstm_123132lstm_123134*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_123129
lstm_1/StatefulPartitionedCallStatefulPartitionedCall%lstm/StatefulPartitionedCall:output:0lstm_1_123280lstm_1_123282lstm_1_123284*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_123279
lstm_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0lstm_2_123430lstm_2_123432lstm_2_123434*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_123429
dense/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0dense_123449dense_123451*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_123448
dense_1/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0dense_1_123466dense_1_123468*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_123465
dense_2/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0dense_2_123483dense_2_123485*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_123482w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall^lstm/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2<
lstm/StatefulPartitionedCalllstm/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
ì
ö
,__inference_lstm_cell_2_layer_call_fn_127390

inputs
states_0
states_1
unknown:

	unknown_0:	@
	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall§
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_122697o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
¹
Ã
while_cond_125987
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_125987___redundant_placeholder04
0while_while_cond_125987___redundant_placeholder14
0while_while_cond_125987___redundant_placeholder24
0while_while_cond_125987___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
µ
Ã
while_cond_123044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_123044___redundant_placeholder04
0while_while_cond_123044___redundant_placeholder14
0while_while_cond_123044___redundant_placeholder24
0while_while_cond_123044___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ì"
Þ
while_body_122361
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0-
while_lstm_cell_1_122385_0:	@.
while_lstm_cell_1_122387_0:
)
while_lstm_cell_1_122389_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor+
while_lstm_cell_1_122385:	@,
while_lstm_cell_1_122387:
'
while_lstm_cell_1_122389:	¢)while/lstm_cell_1/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0±
)while/lstm_cell_1/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_1_122385_0while_lstm_cell_1_122387_0while_lstm_cell_1_122389_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_122347Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_1/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity2while/lstm_cell_1/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/Identity_5Identity2while/lstm_cell_1/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿx

while/NoOpNoOp*^while/lstm_cell_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_1_122385while_lstm_cell_1_122385_0"6
while_lstm_cell_1_122387while_lstm_cell_1_122387_0"6
while_lstm_cell_1_122389while_lstm_cell_1_122389_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : 2V
)while/lstm_cell_1/StatefulPartitionedCall)while/lstm_cell_1/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
: 
ø
µ
'__inference_lstm_2_layer_call_fn_126534

inputs
unknown:

	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallä
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_123429o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ý

F__inference_sequential_layer_call_and_return_conditional_losses_125232

inputsA
-lstm_lstm_cell_matmul_readvariableop_resource:
þB
/lstm_lstm_cell_matmul_1_readvariableop_resource:	@=
.lstm_lstm_cell_biasadd_readvariableop_resource:	D
1lstm_1_lstm_cell_1_matmul_readvariableop_resource:	@G
3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource:
A
2lstm_1_lstm_cell_1_biasadd_readvariableop_resource:	E
1lstm_2_lstm_cell_2_matmul_readvariableop_resource:
F
3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource:	@A
2lstm_2_lstm_cell_2_biasadd_readvariableop_resource:	6
$dense_matmul_readvariableop_resource:@@3
%dense_biasadd_readvariableop_resource:@8
&dense_1_matmul_readvariableop_resource:@ 5
'dense_1_biasadd_readvariableop_resource: 8
&dense_2_matmul_readvariableop_resource: 5
'dense_2_biasadd_readvariableop_resource:
identity¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢%lstm/lstm_cell/BiasAdd/ReadVariableOp¢$lstm/lstm_cell/MatMul/ReadVariableOp¢&lstm/lstm_cell/MatMul_1/ReadVariableOp¢
lstm/while¢)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp¢(lstm_1/lstm_cell_1/MatMul/ReadVariableOp¢*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp¢lstm_1/while¢)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp¢(lstm_2/lstm_cell_2/MatMul/ReadVariableOp¢*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp¢lstm_2/while@

lstm/ShapeShapeinputs*
T0*
_output_shapes
:b
lstm/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
lstm/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
lstm/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
lstm/strided_sliceStridedSlicelstm/Shape:output:0!lstm/strided_slice/stack:output:0#lstm/strided_slice/stack_1:output:0#lstm/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
lstm/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm/zeros/packedPacklstm/strided_slice:output:0lstm/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:U
lstm/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    {

lstm/zerosFilllstm/zeros/packed:output:0lstm/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
lstm/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm/zeros_1/packedPacklstm/strided_slice:output:0lstm/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm/zeros_1Filllstm/zeros_1/packed:output:0lstm/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
lstm/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
lstm/transpose	Transposeinputslstm/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþN
lstm/Shape_1Shapelstm/transpose:y:0*
T0*
_output_shapes
:d
lstm/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm/strided_slice_1StridedSlicelstm/Shape_1:output:0#lstm/strided_slice_1/stack:output:0%lstm/strided_slice_1/stack_1:output:0%lstm/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
 lstm/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÃ
lstm/TensorArrayV2TensorListReserve)lstm/TensorArrayV2/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
:lstm/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  ï
,lstm/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm/transpose:y:0Clstm/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒd
lstm/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm/strided_slice_2StridedSlicelstm/transpose:y:0#lstm/strided_slice_2/stack:output:0%lstm/strided_slice_2/stack_1:output:0%lstm/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_mask
$lstm/lstm_cell/MatMul/ReadVariableOpReadVariableOp-lstm_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0
lstm/lstm_cell/MatMulMatMullstm/strided_slice_2:output:0,lstm/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&lstm/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp/lstm_lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm/lstm_cell/MatMul_1MatMullstm/zeros:output:0.lstm/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm/lstm_cell/addAddV2lstm/lstm_cell/MatMul:product:0!lstm/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
%lstm/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp.lstm_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm/lstm_cell/BiasAddBiasAddlstm/lstm_cell/add:z:0-lstm/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
lstm/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ã
lstm/lstm_cell/splitSplit'lstm/lstm_cell/split/split_dim:output:0lstm/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitr
lstm/lstm_cell/SigmoidSigmoidlstm/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
lstm/lstm_cell/Sigmoid_1Sigmoidlstm/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/lstm_cell/mulMullstm/lstm_cell/Sigmoid_1:y:0lstm/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
lstm/lstm_cell/ReluRelulstm/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/lstm_cell/mul_1Mullstm/lstm_cell/Sigmoid:y:0!lstm/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/lstm_cell/add_1AddV2lstm/lstm_cell/mul:z:0lstm/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
lstm/lstm_cell/Sigmoid_2Sigmoidlstm/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
lstm/lstm_cell/Relu_1Relulstm/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm/lstm_cell/mul_2Mullstm/lstm_cell/Sigmoid_2:y:0#lstm/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
"lstm/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ç
lstm/TensorArrayV2_1TensorListReserve+lstm/TensorArrayV2_1/element_shape:output:0lstm/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	lstm/timeConst*
_output_shapes
: *
dtype0*
value	B : h
lstm/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿY
lstm/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¿

lstm/whileWhile lstm/while/loop_counter:output:0&lstm/while/maximum_iterations:output:0lstm/time:output:0lstm/TensorArrayV2_1:handle:0lstm/zeros:output:0lstm/zeros_1:output:0lstm/strided_slice_1:output:0<lstm/TensorArrayUnstack/TensorListFromTensor:output_handle:0-lstm_lstm_cell_matmul_readvariableop_resource/lstm_lstm_cell_matmul_1_readvariableop_resource.lstm_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *"
bodyR
lstm_while_body_124849*"
condR
lstm_while_cond_124848*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
5lstm/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ñ
'lstm/TensorArrayV2Stack/TensorListStackTensorListStacklstm/while:output:3>lstm/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0m
lstm/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿf
lstm/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: f
lstm/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB: 
lstm/strided_slice_3StridedSlice0lstm/TensorArrayV2Stack/TensorListStack:tensor:0#lstm/strided_slice_3/stack:output:0%lstm/strided_slice_3/stack_1:output:0%lstm/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskj
lstm/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¥
lstm/transpose_1	Transpose0lstm/TensorArrayV2Stack/TensorListStack:tensor:0lstm/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    P
lstm_1/ShapeShapelstm/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm_1/strided_sliceStridedSlicelstm_1/Shape:output:0#lstm_1/strided_slice/stack:output:0%lstm_1/strided_slice/stack_1:output:0%lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_1/zeros/packedPacklstm_1/strided_slice:output:0lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_1/zerosFilllstm_1/zeros/packed:output:0lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :
lstm_1/zeros_1/packedPacklstm_1/strided_slice:output:0 lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_1/zeros_1Filllstm_1/zeros_1/packed:output:0lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
lstm_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_1/transpose	Transposelstm/transpose_1:y:0lstm_1/transpose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
lstm_1/Shape_1Shapelstm_1/transpose:y:0*
T0*
_output_shapes
:f
lstm_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_1/strided_slice_1StridedSlicelstm_1/Shape_1:output:0%lstm_1/strided_slice_1/stack:output:0'lstm_1/strided_slice_1/stack_1:output:0'lstm_1/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
lstm_1/TensorArrayV2TensorListReserve+lstm_1/TensorArrayV2/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<lstm_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   õ
.lstm_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_1/transpose:y:0Elstm_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
lstm_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_1/strided_slice_2StridedSlicelstm_1/transpose:y:0%lstm_1/strided_slice_2/stack:output:0'lstm_1/strided_slice_2/stack_1:output:0'lstm_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
(lstm_1/lstm_cell_1/MatMul/ReadVariableOpReadVariableOp1lstm_1_lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0©
lstm_1/lstm_cell_1/MatMulMatMullstm_1/strided_slice_2:output:00lstm_1/lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0£
lstm_1/lstm_cell_1/MatMul_1MatMullstm_1/zeros:output:02lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/addAddV2#lstm_1/lstm_cell_1/MatMul:product:0%lstm_1/lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp2lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
lstm_1/lstm_cell_1/BiasAddBiasAddlstm_1/lstm_cell_1/add:z:01lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_1/lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
lstm_1/lstm_cell_1/splitSplit+lstm_1/lstm_cell_1/split/split_dim:output:0#lstm_1/lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_split{
lstm_1/lstm_cell_1/SigmoidSigmoid!lstm_1/lstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_1/lstm_cell_1/Sigmoid_1Sigmoid!lstm_1/lstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/mulMul lstm_1/lstm_cell_1/Sigmoid_1:y:0lstm_1/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
lstm_1/lstm_cell_1/ReluRelu!lstm_1/lstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/mul_1Mullstm_1/lstm_cell_1/Sigmoid:y:0%lstm_1/lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/add_1AddV2lstm_1/lstm_cell_1/mul:z:0lstm_1/lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
lstm_1/lstm_cell_1/Sigmoid_2Sigmoid!lstm_1/lstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
lstm_1/lstm_cell_1/Relu_1Relulstm_1/lstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_1/lstm_cell_1/mul_2Mul lstm_1/lstm_cell_1/Sigmoid_2:y:0'lstm_1/lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
$lstm_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Í
lstm_1/TensorArrayV2_1TensorListReserve-lstm_1/TensorArrayV2_1/element_shape:output:0lstm_1/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
lstm_1/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_1/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
lstm_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : å
lstm_1/whileWhile"lstm_1/while/loop_counter:output:0(lstm_1/while/maximum_iterations:output:0lstm_1/time:output:0lstm_1/TensorArrayV2_1:handle:0lstm_1/zeros:output:0lstm_1/zeros_1:output:0lstm_1/strided_slice_1:output:0>lstm_1/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_1_lstm_cell_1_matmul_readvariableop_resource3lstm_1_lstm_cell_1_matmul_1_readvariableop_resource2lstm_1_lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_1_while_body_124988*$
condR
lstm_1_while_cond_124987*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
7lstm_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ø
)lstm_1/TensorArrayV2Stack/TensorListStackTensorListStacklstm_1/while:output:3@lstm_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0o
lstm_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
lstm_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
lstm_1/strided_slice_3StridedSlice2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_1/strided_slice_3/stack:output:0'lstm_1/strided_slice_3/stack_1:output:0'lstm_1/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskl
lstm_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ¬
lstm_1/transpose_1	Transpose2lstm_1/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_1/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
lstm_1/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    R
lstm_2/ShapeShapelstm_1/transpose_1:y:0*
T0*
_output_shapes
:d
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
lstm_2/transpose	Transposelstm_1/transpose_1:y:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿR
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:f
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   õ
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
(lstm_2/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp1lstm_2_lstm_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0©
lstm_2/lstm_cell_2/MatMulMatMullstm_2/strided_slice_2:output:00lstm_2/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0£
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/zeros:output:02lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/MatMul:product:0%lstm_2/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0§
lstm_2/lstm_cell_2/BiasAddBiasAddlstm_2/lstm_cell_2/add:z:01lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ï
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0#lstm_2/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitz
lstm_2/lstm_cell_2/SigmoidSigmoid!lstm_2/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_2/lstm_cell_2/Sigmoid_1Sigmoid!lstm_2/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/lstm_cell_2/mulMul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
lstm_2/lstm_cell_2/ReluRelu!lstm_2/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/lstm_cell_2/mul_1Mullstm_2/lstm_cell_2/Sigmoid:y:0%lstm_2/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/lstm_cell_2/add_1AddV2lstm_2/lstm_cell_2/mul:z:0lstm_2/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_2/lstm_cell_2/Sigmoid_2Sigmoid!lstm_2/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_2/lstm_cell_2/Relu_1Relulstm_2/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/lstm_cell_2/mul_2Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0'lstm_2/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Í
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : á
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_2_lstm_cell_2_matmul_readvariableop_resource3lstm_2_lstm_cell_2_matmul_1_readvariableop_resource2lstm_2_lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *$
bodyR
lstm_2_while_body_125127*$
condR
lstm_2_while_cond_125126*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ×
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0o
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskl
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:@@*
dtype0
dense/MatMulMatMullstm_2/strided_slice_3:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\

dense/ReluReludense/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0
dense_1/MatMulMatMuldense/Relu:activations:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ `
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes

: *
dtype0
dense_2/MatMulMatMuldense_1/Relu:activations:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp&^lstm/lstm_cell/BiasAdd/ReadVariableOp%^lstm/lstm_cell/MatMul/ReadVariableOp'^lstm/lstm_cell/MatMul_1/ReadVariableOp^lstm/while*^lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)^lstm_1/lstm_cell_1/MatMul/ReadVariableOp+^lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp^lstm_1/while*^lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)^lstm_2/lstm_cell_2/MatMul/ReadVariableOp+^lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp^lstm_2/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2N
%lstm/lstm_cell/BiasAdd/ReadVariableOp%lstm/lstm_cell/BiasAdd/ReadVariableOp2L
$lstm/lstm_cell/MatMul/ReadVariableOp$lstm/lstm_cell/MatMul/ReadVariableOp2P
&lstm/lstm_cell/MatMul_1/ReadVariableOp&lstm/lstm_cell/MatMul_1/ReadVariableOp2

lstm/while
lstm/while2V
)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp)lstm_1/lstm_cell_1/BiasAdd/ReadVariableOp2T
(lstm_1/lstm_cell_1/MatMul/ReadVariableOp(lstm_1/lstm_cell_1/MatMul/ReadVariableOp2X
*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp*lstm_1/lstm_cell_1/MatMul_1/ReadVariableOp2
lstm_1/whilelstm_1/while2V
)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp)lstm_2/lstm_cell_2/BiasAdd/ReadVariableOp2T
(lstm_2/lstm_cell_2/MatMul/ReadVariableOp(lstm_2/lstm_cell_2/MatMul/ReadVariableOp2X
*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp*lstm_2/lstm_cell_2/MatMul_1/ReadVariableOp2
lstm_2/whilelstm_2/while:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs
´"
Ð
while_body_122202
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_122226_0:
þ+
while_lstm_cell_122228_0:	@'
while_lstm_cell_122230_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_122226:
þ)
while_lstm_cell_122228:	@%
while_lstm_cell_122230:	¢'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0¤
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_122226_0while_lstm_cell_122228_0while_lstm_cell_122230_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_122143Ù
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_122226while_lstm_cell_122226_0"2
while_lstm_cell_122228while_lstm_cell_122228_0"2
while_lstm_cell_122230while_lstm_cell_122230_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ß7
É
while_body_127033
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
2while_lstm_cell_2_matmul_readvariableop_resource_0:
G
4while_lstm_cell_2_matmul_1_readvariableop_resource_0:	@B
3while_lstm_cell_2_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
0while_lstm_cell_2_matmul_readvariableop_resource:
E
2while_lstm_cell_2_matmul_1_readvariableop_resource:	@@
1while_lstm_cell_2_biasadd_readvariableop_resource:	¢(while/lstm_cell_2/BiasAdd/ReadVariableOp¢'while/lstm_cell_2/MatMul/ReadVariableOp¢)while/lstm_cell_2/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
'while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp2while_lstm_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0¸
while/lstm_cell_2/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp4while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell_2/MatMul_1MatMulwhile_placeholder_21while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell_2/addAddV2"while/lstm_cell_2/MatMul:product:0$while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp3while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¤
while/lstm_cell_2/BiasAddBiasAddwhile/lstm_cell_2/add:z:00while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ì
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0"while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitx
while/lstm_cell_2/SigmoidSigmoid while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_1Sigmoid while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mulMulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
while/lstm_cell_2/ReluRelu while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_1Mulwhile/lstm_cell_2/Sigmoid:y:0$while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/add_1AddV2while/lstm_cell_2/mul:z:0while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
while/lstm_cell_2/Sigmoid_2Sigmoid while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_2/Relu_1Reluwhile/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_2/mul_2Mulwhile/lstm_cell_2/Sigmoid_2:y:0&while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒx
while/Identity_4Identitywhile/lstm_cell_2/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
while/Identity_5Identitywhile/lstm_cell_2/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í

while/NoOpNoOp)^while/lstm_cell_2/BiasAdd/ReadVariableOp(^while/lstm_cell_2/MatMul/ReadVariableOp*^while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"h
1while_lstm_cell_2_biasadd_readvariableop_resource3while_lstm_cell_2_biasadd_readvariableop_resource_0"j
2while_lstm_cell_2_matmul_1_readvariableop_resource4while_lstm_cell_2_matmul_1_readvariableop_resource_0"f
0while_lstm_cell_2_matmul_readvariableop_resource2while_lstm_cell_2_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2T
(while/lstm_cell_2/BiasAdd/ReadVariableOp(while/lstm_cell_2/BiasAdd/ReadVariableOp2R
'while/lstm_cell_2/MatMul/ReadVariableOp'while/lstm_cell_2/MatMul/ReadVariableOp2V
)while/lstm_cell_2/MatMul_1/ReadVariableOp)while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¦
µ
%__inference_lstm_layer_call_fn_125291
inputs_0
unknown:
þ
	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_122271|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ
"
_user_specified_name
inputs/0
¹
Ã
while_cond_126416
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_126416___redundant_placeholder04
0while_while_cond_126416___redundant_placeholder14
0while_while_cond_126416___redundant_placeholder24
0while_while_cond_126416___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
ä"
Þ
while_body_122902
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_2_122926_0:
-
while_lstm_cell_2_122928_0:	@)
while_lstm_cell_2_122930_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_2_122926:
+
while_lstm_cell_2_122928:	@'
while_lstm_cell_2_122930:	¢)while/lstm_cell_2/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0®
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_122926_0while_lstm_cell_2_122928_0while_lstm_cell_2_122930_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_122843Û
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x

while/NoOpNoOp*^while/lstm_cell_2/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_122926while_lstm_cell_2_122926_0"6
while_lstm_cell_2_122928while_lstm_cell_2_122928_0"6
while_lstm_cell_2_122930while_lstm_cell_2_122930_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
8

B__inference_lstm_2_layer_call_and_return_conditional_losses_122780

inputs&
lstm_cell_2_122698:
%
lstm_cell_2_122700:	@!
lstm_cell_2_122702:	
identity¢#lstm_cell_2/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskð
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_122698lstm_cell_2_122700lstm_cell_2_122702*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_122697n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ´
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_122698lstm_cell_2_122700lstm_cell_2_122702*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_122711*
condR
while_cond_122710*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
NoOpNoOp$^lstm_cell_2/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì

$__inference_signature_wrapper_125269

lstm_input
unknown:
þ
	unknown_0:	@
	unknown_1:	
	unknown_2:	@
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	@
	unknown_7:	
	unknown_8:@@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: 

unknown_13:
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCall
lstm_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_121930o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
$
_user_specified_name
lstm_input
µ
Ã
while_cond_123623
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_123623___redundant_placeholder04
0while_while_cond_123623___redundant_placeholder14
0while_while_cond_123623___redundant_placeholder24
0while_while_cond_123623___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
×6
·
while_body_123954
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
þE
2while_lstm_cell_matmul_1_readvariableop_resource_0:	@@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
þC
0while_lstm_cell_matmul_1_readvariableop_resource:	@>
/while_lstm_cell_biasadd_readvariableop_resource:	¢&while/lstm_cell/BiasAdd/ReadVariableOp¢%while/lstm_cell/MatMul/ReadVariableOp¢'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  §
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
þ*
dtype0´
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitt
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒv
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
@
©

lstm_2_while_body_125127*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0M
9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0:
N
;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	@I
:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensorK
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource:
L
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource:	@G
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:	¢/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp¢.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp¢0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ê
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0ª
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOp9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Í
lstm_2/while/lstm_cell_2/MatMulMatMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:06lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ­
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0´
!lstm_2/while/lstm_cell_2/MatMul_1MatMullstm_2_while_placeholder_28lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ°
lstm_2/while/lstm_cell_2/addAddV2)lstm_2/while/lstm_cell_2/MatMul:product:0+lstm_2/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ§
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0¹
 lstm_2/while/lstm_cell_2/BiasAddBiasAdd lstm_2/while/lstm_cell_2/add:z:07lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
(lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
lstm_2/while/lstm_cell_2/splitSplit1lstm_2/while/lstm_cell_2/split/split_dim:output:0)lstm_2/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split
 lstm_2/while/lstm_cell_2/SigmoidSigmoid'lstm_2/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid'lstm_2/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/while/lstm_cell_2/mulMul&lstm_2/while/lstm_cell_2/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/while/lstm_cell_2/ReluRelu'lstm_2/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
lstm_2/while/lstm_cell_2/mul_1Mul$lstm_2/while/lstm_cell_2/Sigmoid:y:0+lstm_2/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/while/lstm_cell_2/add_1AddV2 lstm_2/while/lstm_cell_2/mul:z:0"lstm_2/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid'lstm_2/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_2/while/lstm_cell_2/Relu_1Relu"lstm_2/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
lstm_2/while/lstm_cell_2/mul_2Mul&lstm_2/while/lstm_cell_2/Sigmoid_2:y:0-lstm_2/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@à
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder"lstm_2/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒT
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:0^lstm_2/while/NoOp*
T0*
_output_shapes
: 
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations^lstm_2/while/NoOp*
T0*
_output_shapes
: n
lstm_2/while/Identity_2Identitylstm_2/while/add:z:0^lstm_2/while/NoOp*
T0*
_output_shapes
: ®
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_2/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_2/while/Identity_4Identity"lstm_2/while/lstm_cell_2/mul_2:z:0^lstm_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_2/add_1:z:0^lstm_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@é
lstm_2/while/NoOpNoOp0^lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/^lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp1^lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"v
8lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"x
9lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource;lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"t
7lstm_2_while_lstm_cell_2_matmul_readvariableop_resource9lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0"Ä
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2b
/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2`
.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp.lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp2d
0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp0lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
úL

#sequential_lstm_2_while_body_121825@
<sequential_lstm_2_while_sequential_lstm_2_while_loop_counterF
Bsequential_lstm_2_while_sequential_lstm_2_while_maximum_iterations'
#sequential_lstm_2_while_placeholder)
%sequential_lstm_2_while_placeholder_1)
%sequential_lstm_2_while_placeholder_2)
%sequential_lstm_2_while_placeholder_3?
;sequential_lstm_2_while_sequential_lstm_2_strided_slice_1_0{
wsequential_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensor_0X
Dsequential_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0:
Y
Fsequential_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0:	@T
Esequential_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0:	$
 sequential_lstm_2_while_identity&
"sequential_lstm_2_while_identity_1&
"sequential_lstm_2_while_identity_2&
"sequential_lstm_2_while_identity_3&
"sequential_lstm_2_while_identity_4&
"sequential_lstm_2_while_identity_5=
9sequential_lstm_2_while_sequential_lstm_2_strided_slice_1y
usequential_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensorV
Bsequential_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource:
W
Dsequential_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource:	@R
Csequential_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource:	¢:sequential/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp¢9sequential/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp¢;sequential/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp
Isequential/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
;sequential/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemwsequential_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensor_0#sequential_lstm_2_while_placeholderRsequential/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0À
9sequential/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOpReadVariableOpDsequential_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0* 
_output_shapes
:
*
dtype0î
*sequential/lstm_2/while/lstm_cell_2/MatMulMatMulBsequential/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0Asequential/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÃ
;sequential/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOpFsequential_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0*
_output_shapes
:	@*
dtype0Õ
,sequential/lstm_2/while/lstm_cell_2/MatMul_1MatMul%sequential_lstm_2_while_placeholder_2Csequential/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
'sequential/lstm_2/while/lstm_cell_2/addAddV24sequential/lstm_2/while/lstm_cell_2/MatMul:product:06sequential/lstm_2/while/lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
:sequential/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOpEsequential_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ú
+sequential/lstm_2/while/lstm_cell_2/BiasAddBiasAdd+sequential/lstm_2/while/lstm_cell_2/add:z:0Bsequential/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿu
3sequential/lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¢
)sequential/lstm_2/while/lstm_cell_2/splitSplit<sequential/lstm_2/while/lstm_cell_2/split/split_dim:output:04sequential/lstm_2/while/lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_split
+sequential/lstm_2/while/lstm_cell_2/SigmoidSigmoid2sequential/lstm_2/while/lstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
-sequential/lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid2sequential/lstm_2/while/lstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
'sequential/lstm_2/while/lstm_cell_2/mulMul1sequential/lstm_2/while/lstm_cell_2/Sigmoid_1:y:0%sequential_lstm_2_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(sequential/lstm_2/while/lstm_cell_2/ReluRelu2sequential/lstm_2/while/lstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ë
)sequential/lstm_2/while/lstm_cell_2/mul_1Mul/sequential/lstm_2/while/lstm_cell_2/Sigmoid:y:06sequential/lstm_2/while/lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
)sequential/lstm_2/while/lstm_cell_2/add_1AddV2+sequential/lstm_2/while/lstm_cell_2/mul:z:0-sequential/lstm_2/while/lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
-sequential/lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid2sequential/lstm_2/while/lstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*sequential/lstm_2/while/lstm_cell_2/Relu_1Relu-sequential/lstm_2/while/lstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
)sequential/lstm_2/while/lstm_cell_2/mul_2Mul1sequential/lstm_2/while/lstm_cell_2/Sigmoid_2:y:08sequential/lstm_2/while/lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
<sequential/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem%sequential_lstm_2_while_placeholder_1#sequential_lstm_2_while_placeholder-sequential/lstm_2/while/lstm_cell_2/mul_2:z:0*
_output_shapes
: *
element_dtype0:éèÒ_
sequential/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential/lstm_2/while/addAddV2#sequential_lstm_2_while_placeholder&sequential/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: a
sequential/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¯
sequential/lstm_2/while/add_1AddV2<sequential_lstm_2_while_sequential_lstm_2_while_loop_counter(sequential/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 
 sequential/lstm_2/while/IdentityIdentity!sequential/lstm_2/while/add_1:z:0^sequential/lstm_2/while/NoOp*
T0*
_output_shapes
: ²
"sequential/lstm_2/while/Identity_1IdentityBsequential_lstm_2_while_sequential_lstm_2_while_maximum_iterations^sequential/lstm_2/while/NoOp*
T0*
_output_shapes
: 
"sequential/lstm_2/while/Identity_2Identitysequential/lstm_2/while/add:z:0^sequential/lstm_2/while/NoOp*
T0*
_output_shapes
: Ï
"sequential/lstm_2/while/Identity_3IdentityLsequential/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential/lstm_2/while/NoOp*
T0*
_output_shapes
: :éèÒ®
"sequential/lstm_2/while/Identity_4Identity-sequential/lstm_2/while/lstm_cell_2/mul_2:z:0^sequential/lstm_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
"sequential/lstm_2/while/Identity_5Identity-sequential/lstm_2/while/lstm_cell_2/add_1:z:0^sequential/lstm_2/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
sequential/lstm_2/while/NoOpNoOp;^sequential/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:^sequential/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp<^sequential/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "M
 sequential_lstm_2_while_identity)sequential/lstm_2/while/Identity:output:0"Q
"sequential_lstm_2_while_identity_1+sequential/lstm_2/while/Identity_1:output:0"Q
"sequential_lstm_2_while_identity_2+sequential/lstm_2/while/Identity_2:output:0"Q
"sequential_lstm_2_while_identity_3+sequential/lstm_2/while/Identity_3:output:0"Q
"sequential_lstm_2_while_identity_4+sequential/lstm_2/while/Identity_4:output:0"Q
"sequential_lstm_2_while_identity_5+sequential/lstm_2/while/Identity_5:output:0"
Csequential_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resourceEsequential_lstm_2_while_lstm_cell_2_biasadd_readvariableop_resource_0"
Dsequential_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resourceFsequential_lstm_2_while_lstm_cell_2_matmul_1_readvariableop_resource_0"
Bsequential_lstm_2_while_lstm_cell_2_matmul_readvariableop_resourceDsequential_lstm_2_while_lstm_cell_2_matmul_readvariableop_resource_0"x
9sequential_lstm_2_while_sequential_lstm_2_strided_slice_1;sequential_lstm_2_while_sequential_lstm_2_strided_slice_1_0"ð
usequential_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensorwsequential_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2x
:sequential/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp:sequential/lstm_2/while/lstm_cell_2/BiasAdd/ReadVariableOp2v
9sequential/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp9sequential/lstm_2/while/lstm_cell_2/MatMul/ReadVariableOp2z
;sequential/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp;sequential/lstm_2/while/lstm_cell_2/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
òI

B__inference_lstm_2_layer_call_and_return_conditional_losses_123708

inputs>
*lstm_cell_2_matmul_readvariableop_resource:
?
,lstm_cell_2_matmul_1_readvariableop_resource:	@:
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_123624*
condR
while_cond_123623*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:ÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§J

B__inference_lstm_2_layer_call_and_return_conditional_losses_126831
inputs_0>
*lstm_cell_2_matmul_readvariableop_resource:
?
,lstm_cell_2_matmul_1_readvariableop_resource:	@:
+lstm_cell_2_biasadd_readvariableop_resource:	
identity¢"lstm_cell_2/BiasAdd/ReadVariableOp¢!lstm_cell_2/MatMul/ReadVariableOp¢#lstm_cell_2/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
!lstm_cell_2/MatMul/ReadVariableOpReadVariableOp*lstm_cell_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_2/MatMulMatMulstrided_slice_2:output:0)lstm_cell_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_2/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_2_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_2/MatMul_1MatMulzeros:output:0+lstm_cell_2/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_2/addAddV2lstm_cell_2/MatMul:product:0lstm_cell_2/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_2/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_2/BiasAddBiasAddlstm_cell_2/add:z:0*lstm_cell_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ú
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0lstm_cell_2/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitl
lstm_cell_2/SigmoidSigmoidlstm_cell_2/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_cell_2/mulMullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
lstm_cell_2/ReluRelulstm_cell_2/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_1Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
lstm_cell_2/add_1AddV2lstm_cell_2/mul:z:0lstm_cell_2/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_2/Relu_1Relulstm_cell_2/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_2/mul_2Mullstm_cell_2/Sigmoid_2:y:0 lstm_cell_2/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ÿ
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_2_matmul_readvariableop_resource,lstm_cell_2_matmul_1_readvariableop_resource+lstm_cell_2_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_126747*
condR
while_cond_126746*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
NoOpNoOp#^lstm_cell_2/BiasAdd/ReadVariableOp"^lstm_cell_2/MatMul/ReadVariableOp$^lstm_cell_2/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2H
"lstm_cell_2/BiasAdd/ReadVariableOp"lstm_cell_2/BiasAdd/ReadVariableOp2F
!lstm_cell_2/MatMul/ReadVariableOp!lstm_cell_2/MatMul/ReadVariableOp2J
#lstm_cell_2/MatMul_1/ReadVariableOp#lstm_cell_2/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
J

B__inference_lstm_1_layer_call_and_return_conditional_losses_126358

inputs=
*lstm_cell_1_matmul_readvariableop_resource:	@@
,lstm_cell_1_matmul_1_readvariableop_resource:
:
+lstm_cell_1_biasadd_readvariableop_resource:	
identity¢"lstm_cell_1/BiasAdd/ReadVariableOp¢!lstm_cell_1/MatMul/ReadVariableOp¢#lstm_cell_1/MatMul_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@D
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask
!lstm_cell_1/MatMul/ReadVariableOpReadVariableOp*lstm_cell_1_matmul_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell_1/MatMulMatMulstrided_slice_2:output:0)lstm_cell_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
#lstm_cell_1/MatMul_1/ReadVariableOpReadVariableOp,lstm_cell_1_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_1/MatMul_1MatMulzeros:output:0+lstm_cell_1/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/addAddV2lstm_cell_1/MatMul:product:0lstm_cell_1/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
"lstm_cell_1/BiasAdd/ReadVariableOpReadVariableOp+lstm_cell_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_1/BiasAddBiasAddlstm_cell_1/add:z:0*lstm_cell_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
lstm_cell_1/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Þ
lstm_cell_1/splitSplit$lstm_cell_1/split/split_dim:output:0lstm_cell_1/BiasAdd:output:0*
T0*d
_output_shapesR
P:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
	num_splitm
lstm_cell_1/SigmoidSigmoidlstm_cell_1/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_1Sigmoidlstm_cell_1/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
lstm_cell_1/mulMullstm_cell_1/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
lstm_cell_1/ReluRelulstm_cell_1/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_1Mullstm_cell_1/Sigmoid:y:0lstm_cell_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
lstm_cell_1/add_1AddV2lstm_cell_1/mul:z:0lstm_cell_1/mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
lstm_cell_1/Sigmoid_2Sigmoidlstm_cell_1/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿd
lstm_cell_1/Relu_1Relulstm_cell_1/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell_1/mul_2Mullstm_cell_1/Sigmoid_2:y:0 lstm_cell_1/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_1_matmul_readvariableop_resource,lstm_cell_1_matmul_1_readvariableop_resource+lstm_cell_1_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_126274*
condR
while_cond_126273*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ã
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
NoOpNoOp#^lstm_cell_1/BiasAdd/ReadVariableOp"^lstm_cell_1/MatMul/ReadVariableOp$^lstm_cell_1/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 2H
"lstm_cell_1/BiasAdd/ReadVariableOp"lstm_cell_1/BiasAdd/ReadVariableOp2F
!lstm_cell_1/MatMul/ReadVariableOp!lstm_cell_1/MatMul/ReadVariableOp2J
#lstm_cell_1/MatMul_1/ReadVariableOp#lstm_cell_1/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
¹
Ã
while_cond_122551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122551___redundant_placeholder04
0while_while_cond_122551___redundant_placeholder14
0while_while_cond_122551___redundant_placeholder24
0while_while_cond_122551___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:
à

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_127471

inputs
states_0
states_12
matmul_readvariableop_resource:
3
 matmul_1_readvariableop_resource:	@.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splitT
SigmoidSigmoidsplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_1Sigmoidsplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mulMulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@N
ReluRelusplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
mul_1MulSigmoid:y:0Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
add_1AddV2mul:z:0	mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
	Sigmoid_2Sigmoidsplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Relu_1Relu	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_2:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_1:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
µ
Ã
while_cond_122201
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122201___redundant_placeholder04
0while_while_cond_122201___redundant_placeholder14
0while_while_cond_122201___redundant_placeholder24
0while_while_cond_122201___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
²I

@__inference_lstm_layer_call_and_return_conditional_losses_125599
inputs_0<
(lstm_cell_matmul_readvariableop_resource:
þ=
*lstm_cell_matmul_1_readvariableop_resource:	@8
)lstm_cell_biasadd_readvariableop_resource:	
identity¢ lstm_cell/BiasAdd/ReadVariableOp¢lstm_cell/MatMul/ReadVariableOp¢!lstm_cell/MatMul_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ~  à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ê
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
þ*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource*
_output_shapes
:	@*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ô
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*`
_output_shapesN
L:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*
	num_splith
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@b
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ù
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_125515*
condR
while_cond_125514*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    k
IdentityIdentitytranspose_1:y:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@·
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ
"
_user_specified_name
inputs/0


+__inference_sequential_layer_call_fn_124313

inputs
unknown:
þ
	unknown_0:	@
	unknown_1:	
	unknown_2:	@
	unknown_3:

	unknown_4:	
	unknown_5:

	unknown_6:	@
	unknown_7:	
	unknown_8:@@
	unknown_9:@

unknown_10:@ 

unknown_11: 

unknown_12: 

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*1
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_123489o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:ÿÿÿÿÿÿÿÿÿþ: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿþ
 
_user_specified_nameinputs

·
'__inference_lstm_2_layer_call_fn_126512
inputs_0
unknown:

	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_122780o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0


ô
C__inference_dense_2_layer_call_and_return_conditional_losses_127177

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
µ
Ã
while_cond_123953
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_123953___redundant_placeholder04
0while_while_cond_123953___redundant_placeholder14
0while_while_cond_123953___redundant_placeholder24
0while_while_cond_123953___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:

µ
'__inference_lstm_1_layer_call_fn_125918

inputs
unknown:	@
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallé
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_1_layer_call_and_return_conditional_losses_123279t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
Äl
¬
__inference__traced_save_127656
file_prefix+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop4
0savev2_lstm_lstm_cell_kernel_read_readvariableop>
:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop2
.savev2_lstm_lstm_cell_bias_read_readvariableop8
4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableopB
>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop6
2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop8
4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableopB
>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop6
2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop;
7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopE
Asavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop9
5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop?
;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopI
Esavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¥
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*Î
valueÄBÁ7B6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHÜ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:7*
dtype0*
valuexBv7B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Î
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop0savev2_lstm_lstm_cell_kernel_read_readvariableop:savev2_lstm_lstm_cell_recurrent_kernel_read_readvariableop.savev2_lstm_lstm_cell_bias_read_readvariableop4savev2_lstm_1_lstm_cell_1_kernel_read_readvariableop>savev2_lstm_1_lstm_cell_1_recurrent_kernel_read_readvariableop2savev2_lstm_1_lstm_cell_1_bias_read_readvariableop4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_m_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_m_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_m_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_m_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_m_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop7savev2_adam_lstm_lstm_cell_kernel_v_read_readvariableopAsavev2_adam_lstm_lstm_cell_recurrent_kernel_v_read_readvariableop5savev2_adam_lstm_lstm_cell_bias_v_read_readvariableop;savev2_adam_lstm_1_lstm_cell_1_kernel_v_read_readvariableopEsavev2_adam_lstm_1_lstm_cell_1_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_1_lstm_cell_1_bias_v_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *E
dtypes;
927	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*É
_input_shapes·
´: :@@:@:@ : : :: : : : : :
þ:	@::	@:
::
:	@:: : : : :@@:@:@ : : ::
þ:	@::	@:
::
:	@::@@:@:@ : : ::
þ:	@::	@:
::
:	@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
þ:%!

_output_shapes
:	@:!

_output_shapes	
::%!

_output_shapes
:	@:&"
 
_output_shapes
:
:!

_output_shapes	
::&"
 
_output_shapes
:
:%!

_output_shapes
:	@:!

_output_shapes	
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :$ 

_output_shapes

:@@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: : 

_output_shapes
::&"
 
_output_shapes
:
þ:% !

_output_shapes
:	@:!!

_output_shapes	
::%"!

_output_shapes
:	@:&#"
 
_output_shapes
:
:!$

_output_shapes	
::&%"
 
_output_shapes
:
:%&!

_output_shapes
:	@:!'

_output_shapes	
::$( 

_output_shapes

:@@: )

_output_shapes
:@:$* 

_output_shapes

:@ : +

_output_shapes
: :$, 

_output_shapes

: : -

_output_shapes
::&."
 
_output_shapes
:
þ:%/!

_output_shapes
:	@:!0

_output_shapes	
::%1!

_output_shapes
:	@:&2"
 
_output_shapes
:
:!3

_output_shapes	
::&4"
 
_output_shapes
:
:%5!

_output_shapes
:	@:!6

_output_shapes	
::7

_output_shapes
: 
¦
µ
%__inference_lstm_layer_call_fn_125280
inputs_0
unknown:
þ
	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_lstm_layer_call_and_return_conditional_losses_122080|
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ
"
_user_specified_name
inputs/0

·
'__inference_lstm_2_layer_call_fn_126523
inputs_0
unknown:

	unknown_0:	@
	unknown_1:	
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_122971o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ù	
Ï
lstm_2_while_cond_124684*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_124684___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_124684___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_124684___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_124684___redundant_placeholder3
lstm_2_while_identity
~
lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: Y
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_2_while_identitylstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¹
Ã
while_cond_122360
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_122360___redundant_placeholder04
0while_while_cond_122360___redundant_placeholder14
0while_while_cond_122360___redundant_placeholder24
0while_while_cond_122360___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:

_output_shapes
: :

_output_shapes
:"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*µ
serving_default¡
F

lstm_input8
serving_default_lstm_input:0ÿÿÿÿÿÿÿÿÿþ;
dense_20
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ì
Ð
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
layer_with_weights-3
layer-3
layer_with_weights-4
layer-4
layer_with_weights-5
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
Ú
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ú
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
 __call__
*!&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
Ú
"cell
#
state_spec
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(_random_generator
)__call__
**&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

+kernel
,bias
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
»

3kernel
4bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9__call__
*:&call_and_return_all_conditional_losses"
_tf_keras_layer
»

;kernel
<bias
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses"
_tf_keras_layer
ÿ
Citer

Dbeta_1

Ebeta_2
	Fdecay
Glearning_rate+mª,m«3m¬4m­;m®<m¯Hm°Im±Jm²Km³Lm´MmµNm¶Om·Pm¸+v¹,vº3v»4v¼;v½<v¾Hv¿IvÀJvÁKvÂLvÃMvÄNvÅOvÆPvÇ"
	optimizer

H0
I1
J2
K3
L4
M5
N6
O7
P8
+9
,10
311
412
;13
<14"
trackable_list_wrapper

H0
I1
J2
K3
L4
M5
N6
O7
P8
+9
,10
311
412
;13
<14"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
Qnon_trainable_variables

Rlayers
Smetrics
Tlayer_regularization_losses
Ulayer_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ú2÷
+__inference_sequential_layer_call_fn_123522
+__inference_sequential_layer_call_fn_124313
+__inference_sequential_layer_call_fn_124348
+__inference_sequential_layer_call_fn_124192À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
æ2ã
F__inference_sequential_layer_call_and_return_conditional_losses_124790
F__inference_sequential_layer_call_and_return_conditional_losses_125232
F__inference_sequential_layer_call_and_return_conditional_losses_124232
F__inference_sequential_layer_call_and_return_conditional_losses_124272À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÏBÌ
!__inference__wrapped_model_121930
lstm_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
Vserving_default"
signature_map
ø
W
state_size

Hkernel
Irecurrent_kernel
Jbias
X	variables
Ytrainable_variables
Zregularization_losses
[	keras_api
\_random_generator
]__call__
*^&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

_states
`non_trainable_variables

alayers
bmetrics
clayer_regularization_losses
dlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
÷2ô
%__inference_lstm_layer_call_fn_125280
%__inference_lstm_layer_call_fn_125291
%__inference_lstm_layer_call_fn_125302
%__inference_lstm_layer_call_fn_125313Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ã2à
@__inference_lstm_layer_call_and_return_conditional_losses_125456
@__inference_lstm_layer_call_and_return_conditional_losses_125599
@__inference_lstm_layer_call_and_return_conditional_losses_125742
@__inference_lstm_layer_call_and_return_conditional_losses_125885Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ø
e
state_size

Kkernel
Lrecurrent_kernel
Mbias
f	variables
gtrainable_variables
hregularization_losses
i	keras_api
j_random_generator
k__call__
*l&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
K0
L1
M2"
trackable_list_wrapper
5
K0
L1
M2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

mstates
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ÿ2ü
'__inference_lstm_1_layer_call_fn_125896
'__inference_lstm_1_layer_call_fn_125907
'__inference_lstm_1_layer_call_fn_125918
'__inference_lstm_1_layer_call_fn_125929Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
B__inference_lstm_1_layer_call_and_return_conditional_losses_126072
B__inference_lstm_1_layer_call_and_return_conditional_losses_126215
B__inference_lstm_1_layer_call_and_return_conditional_losses_126358
B__inference_lstm_1_layer_call_and_return_conditional_losses_126501Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ø
s
state_size

Nkernel
Orecurrent_kernel
Pbias
t	variables
utrainable_variables
vregularization_losses
w	keras_api
x_random_generator
y__call__
*z&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
 "
trackable_list_wrapper
º

{states
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
layer_metrics
$	variables
%trainable_variables
&regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
ÿ2ü
'__inference_lstm_2_layer_call_fn_126512
'__inference_lstm_2_layer_call_fn_126523
'__inference_lstm_2_layer_call_fn_126534
'__inference_lstm_2_layer_call_fn_126545Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
B__inference_lstm_2_layer_call_and_return_conditional_losses_126688
B__inference_lstm_2_layer_call_and_return_conditional_losses_126831
B__inference_lstm_2_layer_call_and_return_conditional_losses_126974
B__inference_lstm_2_layer_call_and_return_conditional_losses_127117Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
:@@2dense/kernel
:@2
dense/bias
.
+0
,1"
trackable_list_wrapper
.
+0
,1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
Ð2Í
&__inference_dense_layer_call_fn_127126¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_dense_layer_call_and_return_conditional_losses_127137¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :@ 2dense_1/kernel
: 2dense_1/bias
.
30
41"
trackable_list_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
5	variables
6trainable_variables
7regularization_losses
9__call__
*:&call_and_return_all_conditional_losses
&:"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_1_layer_call_fn_127146¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_1_layer_call_and_return_conditional_losses_127157¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 : 2dense_2/kernel
:2dense_2/bias
.
;0
<1"
trackable_list_wrapper
.
;0
<1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
Ò2Ï
(__inference_dense_2_layer_call_fn_127166¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_dense_2_layer_call_and_return_conditional_losses_127177¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
):'
þ2lstm/lstm_cell/kernel
2:0	@2lstm/lstm_cell/recurrent_kernel
": 2lstm/lstm_cell/bias
,:*	@2lstm_1/lstm_cell_1/kernel
7:5
2#lstm_1/lstm_cell_1/recurrent_kernel
&:$2lstm_1/lstm_cell_1/bias
-:+
2lstm_2/lstm_cell_2/kernel
6:4	@2#lstm_2/lstm_cell_2/recurrent_kernel
&:$2lstm_2/lstm_cell_2/bias
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÎBË
$__inference_signature_wrapper_125269
lstm_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
5
H0
I1
J2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
X	variables
Ytrainable_variables
Zregularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
*__inference_lstm_cell_layer_call_fn_127194
*__inference_lstm_cell_layer_call_fn_127211¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ò2Ï
E__inference_lstm_cell_layer_call_and_return_conditional_losses_127243
E__inference_lstm_cell_layer_call_and_return_conditional_losses_127275¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
K0
L1
M2"
trackable_list_wrapper
5
K0
L1
M2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
f	variables
gtrainable_variables
hregularization_losses
k__call__
*l&call_and_return_all_conditional_losses
&l"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 2
,__inference_lstm_cell_1_layer_call_fn_127292
,__inference_lstm_cell_1_layer_call_fn_127309¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_127341
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_127373¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
5
N0
O1
P2"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
t	variables
utrainable_variables
vregularization_losses
y__call__
*z&call_and_return_all_conditional_losses
&z"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
 2
,__inference_lstm_cell_2_layer_call_fn_127390
,__inference_lstm_cell_2_layer_call_fn_127407¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ö2Ó
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_127439
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_127471¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
"0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

¡total

¢count
£	variables
¤	keras_api"
_tf_keras_metric
c

¥total

¦count
§
_fn_kwargs
¨	variables
©	keras_api"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
:  (2total
:  (2count
0
¡0
¢1"
trackable_list_wrapper
.
£	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
¥0
¦1"
trackable_list_wrapper
.
¨	variables"
_generic_user_object
#:!@@2Adam/dense/kernel/m
:@2Adam/dense/bias/m
%:#@ 2Adam/dense_1/kernel/m
: 2Adam/dense_1/bias/m
%:# 2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
.:,
þ2Adam/lstm/lstm_cell/kernel/m
7:5	@2&Adam/lstm/lstm_cell/recurrent_kernel/m
':%2Adam/lstm/lstm_cell/bias/m
1:/	@2 Adam/lstm_1/lstm_cell_1/kernel/m
<::
2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/m
+:)2Adam/lstm_1/lstm_cell_1/bias/m
2:0
2 Adam/lstm_2/lstm_cell_2/kernel/m
;:9	@2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
+:)2Adam/lstm_2/lstm_cell_2/bias/m
#:!@@2Adam/dense/kernel/v
:@2Adam/dense/bias/v
%:#@ 2Adam/dense_1/kernel/v
: 2Adam/dense_1/bias/v
%:# 2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
.:,
þ2Adam/lstm/lstm_cell/kernel/v
7:5	@2&Adam/lstm/lstm_cell/recurrent_kernel/v
':%2Adam/lstm/lstm_cell/bias/v
1:/	@2 Adam/lstm_1/lstm_cell_1/kernel/v
<::
2*Adam/lstm_1/lstm_cell_1/recurrent_kernel/v
+:)2Adam/lstm_1/lstm_cell_1/bias/v
2:0
2 Adam/lstm_2/lstm_cell_2/kernel/v
;:9	@2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
+:)2Adam/lstm_2/lstm_cell_2/bias/v£
!__inference__wrapped_model_121930~HIJKLMNOP+,34;<8¢5
.¢+
)&

lstm_inputÿÿÿÿÿÿÿÿÿþ
ª "1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ£
C__inference_dense_1_layer_call_and_return_conditional_losses_127157\34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ 
 {
(__inference_dense_1_layer_call_fn_127146O34/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ £
C__inference_dense_2_layer_call_and_return_conditional_losses_127177\;</¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 {
(__inference_dense_2_layer_call_fn_127166O;</¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ¡
A__inference_dense_layer_call_and_return_conditional_losses_127137\+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 y
&__inference_dense_layer_call_fn_127126O+,/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ@Ò
B__inference_lstm_1_layer_call_and_return_conditional_losses_126072KLMO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ò
B__inference_lstm_1_layer_call_and_return_conditional_losses_126215KLMO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "3¢0
)&
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¸
B__inference_lstm_1_layer_call_and_return_conditional_losses_126358rKLM?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ¸
B__inference_lstm_1_layer_call_and_return_conditional_losses_126501rKLM?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿ
 ©
'__inference_lstm_1_layer_call_fn_125896~KLMO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ©
'__inference_lstm_1_layer_call_fn_125907~KLMO¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "&#ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
'__inference_lstm_1_layer_call_fn_125918eKLM?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
'__inference_lstm_1_layer_call_fn_125929eKLM?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ@

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
B__inference_lstm_2_layer_call_and_return_conditional_losses_126688~NOPP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ä
B__inference_lstm_2_layer_call_and_return_conditional_losses_126831~NOPP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ´
B__inference_lstm_2_layer_call_and_return_conditional_losses_126974nNOP@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ´
B__inference_lstm_2_layer_call_and_return_conditional_losses_127117nNOP@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
'__inference_lstm_2_layer_call_fn_126512qNOPP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
'__inference_lstm_2_layer_call_fn_126523qNOPP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
'__inference_lstm_2_layer_call_fn_126534aNOP@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
'__inference_lstm_2_layer_call_fn_126545aNOP@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Î
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_127341KLM¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ@
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 Î
G__inference_lstm_cell_1_layer_call_and_return_conditional_losses_127373KLM¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ@
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿ
 
0/1/1ÿÿÿÿÿÿÿÿÿ
 £
,__inference_lstm_cell_1_layer_call_fn_127292òKLM¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ@
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿ£
,__inference_lstm_cell_1_layer_call_fn_127309òKLM¢
x¢u
 
inputsÿÿÿÿÿÿÿÿÿ@
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿ
# 
states/1ÿÿÿÿÿÿÿÿÿ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿ
C@

1/0ÿÿÿÿÿÿÿÿÿ

1/1ÿÿÿÿÿÿÿÿÿÊ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_127439þNOP¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
 Ê
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_127471þNOP¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
 
,__inference_lstm_cell_2_layer_call_fn_127390îNOP¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@
,__inference_lstm_cell_2_layer_call_fn_127407îNOP¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@È
E__inference_lstm_cell_layer_call_and_return_conditional_losses_127243þHIJ¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿþ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
 È
E__inference_lstm_cell_layer_call_and_return_conditional_losses_127275þHIJ¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿþ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
 
*__inference_lstm_cell_layer_call_fn_127194îHIJ¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿþ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@
*__inference_lstm_cell_layer_call_fn_127211îHIJ¢~
w¢t
!
inputsÿÿÿÿÿÿÿÿÿþ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@Ð
@__inference_lstm_layer_call_and_return_conditional_losses_125456HIJP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ

 
p 

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 Ð
@__inference_lstm_layer_call_and_return_conditional_losses_125599HIJP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ

 
p

 
ª "2¢/
(%
0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
 ¶
@__inference_lstm_layer_call_and_return_conditional_losses_125742rHIJ@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿþ

 
p 

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 ¶
@__inference_lstm_layer_call_and_return_conditional_losses_125885rHIJ@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿþ

 
p

 
ª ")¢&

0ÿÿÿÿÿÿÿÿÿ@
 §
%__inference_lstm_layer_call_fn_125280~HIJP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ

 
p 

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@§
%__inference_lstm_layer_call_fn_125291~HIJP¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿþ

 
p

 
ª "%"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@
%__inference_lstm_layer_call_fn_125302eHIJ@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿþ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
%__inference_lstm_layer_call_fn_125313eHIJ@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿþ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Ä
F__inference_sequential_layer_call_and_return_conditional_losses_124232zHIJKLMNOP+,34;<@¢=
6¢3
)&

lstm_inputÿÿÿÿÿÿÿÿÿþ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
F__inference_sequential_layer_call_and_return_conditional_losses_124272zHIJKLMNOP+,34;<@¢=
6¢3
)&

lstm_inputÿÿÿÿÿÿÿÿÿþ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
F__inference_sequential_layer_call_and_return_conditional_losses_124790vHIJKLMNOP+,34;<<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿþ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 À
F__inference_sequential_layer_call_and_return_conditional_losses_125232vHIJKLMNOP+,34;<<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿþ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_sequential_layer_call_fn_123522mHIJKLMNOP+,34;<@¢=
6¢3
)&

lstm_inputÿÿÿÿÿÿÿÿÿþ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_layer_call_fn_124192mHIJKLMNOP+,34;<@¢=
6¢3
)&

lstm_inputÿÿÿÿÿÿÿÿÿþ
p

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_layer_call_fn_124313iHIJKLMNOP+,34;<<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿþ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
+__inference_sequential_layer_call_fn_124348iHIJKLMNOP+,34;<<¢9
2¢/
%"
inputsÿÿÿÿÿÿÿÿÿþ
p

 
ª "ÿÿÿÿÿÿÿÿÿµ
$__inference_signature_wrapper_125269HIJKLMNOP+,34;<F¢C
¢ 
<ª9
7

lstm_input)&

lstm_inputÿÿÿÿÿÿÿÿÿþ"1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ
Оь
Є┬
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
Ы
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

$
DisableCopyOnRead
resourceИ
√
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
┴
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
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
░
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48─▒
░
cnn_model1/dense_2/biasVarHandleOp*
_output_shapes
: *(

debug_namecnn_model1/dense_2/bias/*
dtype0*
shape:*(
shared_namecnn_model1/dense_2/bias

+cnn_model1/dense_2/bias/Read/ReadVariableOpReadVariableOpcnn_model1/dense_2/bias*
_output_shapes
:*
dtype0
╗
cnn_model1/dense_2/kernelVarHandleOp*
_output_shapes
: **

debug_namecnn_model1/dense_2/kernel/*
dtype0*
shape:	А**
shared_namecnn_model1/dense_2/kernel
И
-cnn_model1/dense_2/kernel/Read/ReadVariableOpReadVariableOpcnn_model1/dense_2/kernel*
_output_shapes
:	А*
dtype0
▒
cnn_model1/dense_1/biasVarHandleOp*
_output_shapes
: *(

debug_namecnn_model1/dense_1/bias/*
dtype0*
shape:А*(
shared_namecnn_model1/dense_1/bias
А
+cnn_model1/dense_1/bias/Read/ReadVariableOpReadVariableOpcnn_model1/dense_1/bias*
_output_shapes	
:А*
dtype0
╝
cnn_model1/dense_1/kernelVarHandleOp*
_output_shapes
: **

debug_namecnn_model1/dense_1/kernel/*
dtype0*
shape:
АА**
shared_namecnn_model1/dense_1/kernel
Й
-cnn_model1/dense_1/kernel/Read/ReadVariableOpReadVariableOpcnn_model1/dense_1/kernel* 
_output_shapes
:
АА*
dtype0
л
cnn_model1/dense/biasVarHandleOp*
_output_shapes
: *&

debug_namecnn_model1/dense/bias/*
dtype0*
shape:А*&
shared_namecnn_model1/dense/bias
|
)cnn_model1/dense/bias/Read/ReadVariableOpReadVariableOpcnn_model1/dense/bias*
_output_shapes	
:А*
dtype0
╢
cnn_model1/dense/kernelVarHandleOp*
_output_shapes
: *(

debug_namecnn_model1/dense/kernel/*
dtype0*
shape:
А	А*(
shared_namecnn_model1/dense/kernel
Е
+cnn_model1/dense/kernel/Read/ReadVariableOpReadVariableOpcnn_model1/dense/kernel* 
_output_shapes
:
А	А*
dtype0
√
0cnn_model1/batch_normalization_4/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31cnn_model1/batch_normalization_4/moving_variance/*
dtype0*
shape: *A
shared_name20cnn_model1/batch_normalization_4/moving_variance
▒
Dcnn_model1/batch_normalization_4/moving_variance/Read/ReadVariableOpReadVariableOp0cnn_model1/batch_normalization_4/moving_variance*
_output_shapes
: *
dtype0
я
,cnn_model1/batch_normalization_4/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-cnn_model1/batch_normalization_4/moving_mean/*
dtype0*
shape: *=
shared_name.,cnn_model1/batch_normalization_4/moving_mean
й
@cnn_model1/batch_normalization_4/moving_mean/Read/ReadVariableOpReadVariableOp,cnn_model1/batch_normalization_4/moving_mean*
_output_shapes
: *
dtype0
┌
%cnn_model1/batch_normalization_4/betaVarHandleOp*
_output_shapes
: *6

debug_name(&cnn_model1/batch_normalization_4/beta/*
dtype0*
shape: *6
shared_name'%cnn_model1/batch_normalization_4/beta
Ы
9cnn_model1/batch_normalization_4/beta/Read/ReadVariableOpReadVariableOp%cnn_model1/batch_normalization_4/beta*
_output_shapes
: *
dtype0
▌
&cnn_model1/batch_normalization_4/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'cnn_model1/batch_normalization_4/gamma/*
dtype0*
shape: *7
shared_name(&cnn_model1/batch_normalization_4/gamma
Э
:cnn_model1/batch_normalization_4/gamma/Read/ReadVariableOpReadVariableOp&cnn_model1/batch_normalization_4/gamma*
_output_shapes
: *
dtype0
│
cnn_model1/conv2d_4/biasVarHandleOp*
_output_shapes
: *)

debug_namecnn_model1/conv2d_4/bias/*
dtype0*
shape: *)
shared_namecnn_model1/conv2d_4/bias
Б
,cnn_model1/conv2d_4/bias/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d_4/bias*
_output_shapes
: *
dtype0
┼
cnn_model1/conv2d_4/kernelVarHandleOp*
_output_shapes
: *+

debug_namecnn_model1/conv2d_4/kernel/*
dtype0*
shape:@ *+
shared_namecnn_model1/conv2d_4/kernel
С
.cnn_model1/conv2d_4/kernel/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d_4/kernel*&
_output_shapes
:@ *
dtype0
√
0cnn_model1/batch_normalization_3/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31cnn_model1/batch_normalization_3/moving_variance/*
dtype0*
shape:@*A
shared_name20cnn_model1/batch_normalization_3/moving_variance
▒
Dcnn_model1/batch_normalization_3/moving_variance/Read/ReadVariableOpReadVariableOp0cnn_model1/batch_normalization_3/moving_variance*
_output_shapes
:@*
dtype0
я
,cnn_model1/batch_normalization_3/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-cnn_model1/batch_normalization_3/moving_mean/*
dtype0*
shape:@*=
shared_name.,cnn_model1/batch_normalization_3/moving_mean
й
@cnn_model1/batch_normalization_3/moving_mean/Read/ReadVariableOpReadVariableOp,cnn_model1/batch_normalization_3/moving_mean*
_output_shapes
:@*
dtype0
┌
%cnn_model1/batch_normalization_3/betaVarHandleOp*
_output_shapes
: *6

debug_name(&cnn_model1/batch_normalization_3/beta/*
dtype0*
shape:@*6
shared_name'%cnn_model1/batch_normalization_3/beta
Ы
9cnn_model1/batch_normalization_3/beta/Read/ReadVariableOpReadVariableOp%cnn_model1/batch_normalization_3/beta*
_output_shapes
:@*
dtype0
▌
&cnn_model1/batch_normalization_3/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'cnn_model1/batch_normalization_3/gamma/*
dtype0*
shape:@*7
shared_name(&cnn_model1/batch_normalization_3/gamma
Э
:cnn_model1/batch_normalization_3/gamma/Read/ReadVariableOpReadVariableOp&cnn_model1/batch_normalization_3/gamma*
_output_shapes
:@*
dtype0
│
cnn_model1/conv2d_3/biasVarHandleOp*
_output_shapes
: *)

debug_namecnn_model1/conv2d_3/bias/*
dtype0*
shape:@*)
shared_namecnn_model1/conv2d_3/bias
Б
,cnn_model1/conv2d_3/bias/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d_3/bias*
_output_shapes
:@*
dtype0
╞
cnn_model1/conv2d_3/kernelVarHandleOp*
_output_shapes
: *+

debug_namecnn_model1/conv2d_3/kernel/*
dtype0*
shape:А@*+
shared_namecnn_model1/conv2d_3/kernel
Т
.cnn_model1/conv2d_3/kernel/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d_3/kernel*'
_output_shapes
:А@*
dtype0
№
0cnn_model1/batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31cnn_model1/batch_normalization_2/moving_variance/*
dtype0*
shape:А*A
shared_name20cnn_model1/batch_normalization_2/moving_variance
▓
Dcnn_model1/batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp0cnn_model1/batch_normalization_2/moving_variance*
_output_shapes	
:А*
dtype0
Ё
,cnn_model1/batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-cnn_model1/batch_normalization_2/moving_mean/*
dtype0*
shape:А*=
shared_name.,cnn_model1/batch_normalization_2/moving_mean
к
@cnn_model1/batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp,cnn_model1/batch_normalization_2/moving_mean*
_output_shapes	
:А*
dtype0
█
%cnn_model1/batch_normalization_2/betaVarHandleOp*
_output_shapes
: *6

debug_name(&cnn_model1/batch_normalization_2/beta/*
dtype0*
shape:А*6
shared_name'%cnn_model1/batch_normalization_2/beta
Ь
9cnn_model1/batch_normalization_2/beta/Read/ReadVariableOpReadVariableOp%cnn_model1/batch_normalization_2/beta*
_output_shapes	
:А*
dtype0
▐
&cnn_model1/batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'cnn_model1/batch_normalization_2/gamma/*
dtype0*
shape:А*7
shared_name(&cnn_model1/batch_normalization_2/gamma
Ю
:cnn_model1/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOp&cnn_model1/batch_normalization_2/gamma*
_output_shapes	
:А*
dtype0
┤
cnn_model1/conv2d_2/biasVarHandleOp*
_output_shapes
: *)

debug_namecnn_model1/conv2d_2/bias/*
dtype0*
shape:А*)
shared_namecnn_model1/conv2d_2/bias
В
,cnn_model1/conv2d_2/bias/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d_2/bias*
_output_shapes	
:А*
dtype0
╞
cnn_model1/conv2d_2/kernelVarHandleOp*
_output_shapes
: *+

debug_namecnn_model1/conv2d_2/kernel/*
dtype0*
shape:@А*+
shared_namecnn_model1/conv2d_2/kernel
Т
.cnn_model1/conv2d_2/kernel/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d_2/kernel*'
_output_shapes
:@А*
dtype0
√
0cnn_model1/batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *A

debug_name31cnn_model1/batch_normalization_1/moving_variance/*
dtype0*
shape:@*A
shared_name20cnn_model1/batch_normalization_1/moving_variance
▒
Dcnn_model1/batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp0cnn_model1/batch_normalization_1/moving_variance*
_output_shapes
:@*
dtype0
я
,cnn_model1/batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *=

debug_name/-cnn_model1/batch_normalization_1/moving_mean/*
dtype0*
shape:@*=
shared_name.,cnn_model1/batch_normalization_1/moving_mean
й
@cnn_model1/batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp,cnn_model1/batch_normalization_1/moving_mean*
_output_shapes
:@*
dtype0
┌
%cnn_model1/batch_normalization_1/betaVarHandleOp*
_output_shapes
: *6

debug_name(&cnn_model1/batch_normalization_1/beta/*
dtype0*
shape:@*6
shared_name'%cnn_model1/batch_normalization_1/beta
Ы
9cnn_model1/batch_normalization_1/beta/Read/ReadVariableOpReadVariableOp%cnn_model1/batch_normalization_1/beta*
_output_shapes
:@*
dtype0
▌
&cnn_model1/batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *7

debug_name)'cnn_model1/batch_normalization_1/gamma/*
dtype0*
shape:@*7
shared_name(&cnn_model1/batch_normalization_1/gamma
Э
:cnn_model1/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOp&cnn_model1/batch_normalization_1/gamma*
_output_shapes
:@*
dtype0
│
cnn_model1/conv2d_1/biasVarHandleOp*
_output_shapes
: *)

debug_namecnn_model1/conv2d_1/bias/*
dtype0*
shape:@*)
shared_namecnn_model1/conv2d_1/bias
Б
,cnn_model1/conv2d_1/bias/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d_1/bias*
_output_shapes
:@*
dtype0
┼
cnn_model1/conv2d_1/kernelVarHandleOp*
_output_shapes
: *+

debug_namecnn_model1/conv2d_1/kernel/*
dtype0*
shape: @*+
shared_namecnn_model1/conv2d_1/kernel
С
.cnn_model1/conv2d_1/kernel/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d_1/kernel*&
_output_shapes
: @*
dtype0
ї
.cnn_model1/batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *?

debug_name1/cnn_model1/batch_normalization/moving_variance/*
dtype0*
shape: *?
shared_name0.cnn_model1/batch_normalization/moving_variance
н
Bcnn_model1/batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp.cnn_model1/batch_normalization/moving_variance*
_output_shapes
: *
dtype0
щ
*cnn_model1/batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *;

debug_name-+cnn_model1/batch_normalization/moving_mean/*
dtype0*
shape: *;
shared_name,*cnn_model1/batch_normalization/moving_mean
е
>cnn_model1/batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOp*cnn_model1/batch_normalization/moving_mean*
_output_shapes
: *
dtype0
╘
#cnn_model1/batch_normalization/betaVarHandleOp*
_output_shapes
: *4

debug_name&$cnn_model1/batch_normalization/beta/*
dtype0*
shape: *4
shared_name%#cnn_model1/batch_normalization/beta
Ч
7cnn_model1/batch_normalization/beta/Read/ReadVariableOpReadVariableOp#cnn_model1/batch_normalization/beta*
_output_shapes
: *
dtype0
╫
$cnn_model1/batch_normalization/gammaVarHandleOp*
_output_shapes
: *5

debug_name'%cnn_model1/batch_normalization/gamma/*
dtype0*
shape: *5
shared_name&$cnn_model1/batch_normalization/gamma
Щ
8cnn_model1/batch_normalization/gamma/Read/ReadVariableOpReadVariableOp$cnn_model1/batch_normalization/gamma*
_output_shapes
: *
dtype0
н
cnn_model1/conv2d/biasVarHandleOp*
_output_shapes
: *'

debug_namecnn_model1/conv2d/bias/*
dtype0*
shape: *'
shared_namecnn_model1/conv2d/bias
}
*cnn_model1/conv2d/bias/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d/bias*
_output_shapes
: *
dtype0
┐
cnn_model1/conv2d/kernelVarHandleOp*
_output_shapes
: *)

debug_namecnn_model1/conv2d/kernel/*
dtype0*
shape: *)
shared_namecnn_model1/conv2d/kernel
Н
,cnn_model1/conv2d/kernel/Read/ReadVariableOpReadVariableOpcnn_model1/conv2d/kernel*&
_output_shapes
: *
dtype0
О
serving_default_input_1Placeholder*1
_output_shapes
:         ╚╚*
dtype0*&
shape:         ╚╚
А
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1cnn_model1/conv2d/kernelcnn_model1/conv2d/bias$cnn_model1/batch_normalization/gamma#cnn_model1/batch_normalization/beta*cnn_model1/batch_normalization/moving_mean.cnn_model1/batch_normalization/moving_variancecnn_model1/conv2d_1/kernelcnn_model1/conv2d_1/bias&cnn_model1/batch_normalization_1/gamma%cnn_model1/batch_normalization_1/beta,cnn_model1/batch_normalization_1/moving_mean0cnn_model1/batch_normalization_1/moving_variancecnn_model1/conv2d_2/kernelcnn_model1/conv2d_2/bias&cnn_model1/batch_normalization_2/gamma%cnn_model1/batch_normalization_2/beta,cnn_model1/batch_normalization_2/moving_mean0cnn_model1/batch_normalization_2/moving_variancecnn_model1/conv2d_3/kernelcnn_model1/conv2d_3/bias&cnn_model1/batch_normalization_3/gamma%cnn_model1/batch_normalization_3/beta,cnn_model1/batch_normalization_3/moving_mean0cnn_model1/batch_normalization_3/moving_variancecnn_model1/conv2d_4/kernelcnn_model1/conv2d_4/bias&cnn_model1/batch_normalization_4/gamma%cnn_model1/batch_normalization_4/beta,cnn_model1/batch_normalization_4/moving_mean0cnn_model1/batch_normalization_4/moving_variancecnn_model1/dense/kernelcnn_model1/dense/biascnn_model1/dense_1/kernelcnn_model1/dense_1/biascnn_model1/dense_2/kernelcnn_model1/dense_2/bias*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_1644221

NoOpNoOp
Лy
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╞x
value╝xB╣x B▓x
щ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
	bn1
	
conv2
bn2
	conv3
bn3
	conv4
bn4
	conv5
bn5
pool
flatten
	drop1
fc1
	drop2
fc2
fc3

signatures*
Ъ
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21
022
123
224
325
426
527
628
729
830
931
:32
;33
<34
=35*
╩
0
1
2
3
 4
!5
"6
#7
&8
'9
(10
)11
,12
-13
.14
/15
216
317
418
519
820
921
:22
;23
<24
=25*
* 
░
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

Ctrace_0
Dtrace_1* 

Etrace_0
Ftrace_1* 
* 
╚
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

kernel
bias
 M_jit_compiled_convolution_op*
╒
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
Taxis
	gamma
beta
moving_mean
moving_variance*
╚
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

 kernel
!bias
 [_jit_compiled_convolution_op*
╒
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
baxis
	"gamma
#beta
$moving_mean
%moving_variance*
╚
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

&kernel
'bias
 i_jit_compiled_convolution_op*
╒
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
paxis
	(gamma
)beta
*moving_mean
+moving_variance*
╚
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

,kernel
-bias
 w_jit_compiled_convolution_op*
╒
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~axis
	.gamma
/beta
0moving_mean
1moving_variance*
╬
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses

2kernel
3bias
!Е_jit_compiled_convolution_op*
▄
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses
	Мaxis
	4gamma
5beta
6moving_mean
7moving_variance*
Ф
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses* 
Ф
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses* 
м
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses
Я_random_generator* 
м
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses

8kernel
9bias*
м
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator* 
м
н	variables
оtrainable_variables
пregularization_losses
░	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses

:kernel
;bias*
м
│	variables
┤trainable_variables
╡regularization_losses
╢	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses

<kernel
=bias*

╣serving_default* 
XR
VARIABLE_VALUEcnn_model1/conv2d/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEcnn_model1/conv2d/bias&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$cnn_model1/batch_normalization/gamma&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#cnn_model1/batch_normalization/beta&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
jd
VARIABLE_VALUE*cnn_model1/batch_normalization/moving_mean&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE.cnn_model1/batch_normalization/moving_variance&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEcnn_model1/conv2d_1/kernel&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEcnn_model1/conv2d_1/bias&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE&cnn_model1/batch_normalization_1/gamma&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%cnn_model1/batch_normalization_1/beta&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,cnn_model1/batch_normalization_1/moving_mean'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0cnn_model1/batch_normalization_1/moving_variance'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEcnn_model1/conv2d_2/kernel'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEcnn_model1/conv2d_2/bias'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&cnn_model1/batch_normalization_2/gamma'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%cnn_model1/batch_normalization_2/beta'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,cnn_model1/batch_normalization_2/moving_mean'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0cnn_model1/batch_normalization_2/moving_variance'variables/17/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEcnn_model1/conv2d_3/kernel'variables/18/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEcnn_model1/conv2d_3/bias'variables/19/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&cnn_model1/batch_normalization_3/gamma'variables/20/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%cnn_model1/batch_normalization_3/beta'variables/21/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,cnn_model1/batch_normalization_3/moving_mean'variables/22/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0cnn_model1/batch_normalization_3/moving_variance'variables/23/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEcnn_model1/conv2d_4/kernel'variables/24/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEcnn_model1/conv2d_4/bias'variables/25/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUE&cnn_model1/batch_normalization_4/gamma'variables/26/.ATTRIBUTES/VARIABLE_VALUE*
f`
VARIABLE_VALUE%cnn_model1/batch_normalization_4/beta'variables/27/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUE,cnn_model1/batch_normalization_4/moving_mean'variables/28/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE0cnn_model1/batch_normalization_4/moving_variance'variables/29/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEcnn_model1/dense/kernel'variables/30/.ATTRIBUTES/VARIABLE_VALUE*
VP
VARIABLE_VALUEcnn_model1/dense/bias'variables/31/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEcnn_model1/dense_1/kernel'variables/32/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEcnn_model1/dense_1/bias'variables/33/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEcnn_model1/dense_2/kernel'variables/34/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUEcnn_model1/dense_2/bias'variables/35/.ATTRIBUTES/VARIABLE_VALUE*
J
0
1
$2
%3
*4
+5
06
17
68
79*
В
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16*
* 
* 
* 
* 
* 
* 
* 

0
1*

0
1*
* 
Ш
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses*

┐trace_0* 

└trace_0* 
* 
 
0
1
2
3*

0
1*
* 
Ш
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses*

╞trace_0
╟trace_1* 

╚trace_0
╔trace_1* 
* 

 0
!1*

 0
!1*
* 
Ш
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

╧trace_0* 

╨trace_0* 
* 
 
"0
#1
$2
%3*

"0
#1*
* 
Ш
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses*

╓trace_0
╫trace_1* 

╪trace_0
┘trace_1* 
* 

&0
'1*

&0
'1*
* 
Ш
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*

▀trace_0* 

рtrace_0* 
* 
 
(0
)1
*2
+3*

(0
)1*
* 
Ш
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses*

цtrace_0
чtrace_1* 

шtrace_0
щtrace_1* 
* 

,0
-1*

,0
-1*
* 
Ш
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses*

яtrace_0* 

Ёtrace_0* 
* 
 
.0
/1
02
13*

.0
/1*
* 
Ш
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

Ўtrace_0
ўtrace_1* 

°trace_0
∙trace_1* 
* 

20
31*

20
31*
* 
Э
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses*

 trace_0* 

Аtrace_0* 
* 
 
40
51
62
73*

40
51*
* 
Ю
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses*

Жtrace_0
Зtrace_1* 

Иtrace_0
Йtrace_1* 
* 
* 
* 
* 
Ь
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses* 

Пtrace_0* 

Рtrace_0* 
* 
* 
* 
Ь
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses* 

Цtrace_0* 

Чtrace_0* 
* 
* 
* 
Ь
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses* 

Эtrace_0
Юtrace_1* 

Яtrace_0
аtrace_1* 
* 

80
91*

80
91*
* 
Ю
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses*

жtrace_0* 

зtrace_0* 
* 
* 
* 
Ь
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses* 

нtrace_0
оtrace_1* 

пtrace_0
░trace_1* 
* 

:0
;1*

:0
;1*
* 
Ю
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
н	variables
оtrainable_variables
пregularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses*

╢trace_0* 

╖trace_0* 

<0
=1*

<0
=1*
* 
Ю
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
│	variables
┤trainable_variables
╡regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses*

╜trace_0* 

╛trace_0* 
* 
* 
* 
* 
* 
* 
* 
* 

0
1*
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

$0
%1*
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

*0
+1*
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

00
11*
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

60
71*
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
* 
* 
* 
* 
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
┼
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamecnn_model1/conv2d/kernelcnn_model1/conv2d/bias$cnn_model1/batch_normalization/gamma#cnn_model1/batch_normalization/beta*cnn_model1/batch_normalization/moving_mean.cnn_model1/batch_normalization/moving_variancecnn_model1/conv2d_1/kernelcnn_model1/conv2d_1/bias&cnn_model1/batch_normalization_1/gamma%cnn_model1/batch_normalization_1/beta,cnn_model1/batch_normalization_1/moving_mean0cnn_model1/batch_normalization_1/moving_variancecnn_model1/conv2d_2/kernelcnn_model1/conv2d_2/bias&cnn_model1/batch_normalization_2/gamma%cnn_model1/batch_normalization_2/beta,cnn_model1/batch_normalization_2/moving_mean0cnn_model1/batch_normalization_2/moving_variancecnn_model1/conv2d_3/kernelcnn_model1/conv2d_3/bias&cnn_model1/batch_normalization_3/gamma%cnn_model1/batch_normalization_3/beta,cnn_model1/batch_normalization_3/moving_mean0cnn_model1/batch_normalization_3/moving_variancecnn_model1/conv2d_4/kernelcnn_model1/conv2d_4/bias&cnn_model1/batch_normalization_4/gamma%cnn_model1/batch_normalization_4/beta,cnn_model1/batch_normalization_4/moving_mean0cnn_model1/batch_normalization_4/moving_variancecnn_model1/dense/kernelcnn_model1/dense/biascnn_model1/dense_1/kernelcnn_model1/dense_1/biascnn_model1/dense_2/kernelcnn_model1/dense_2/biasConst*1
Tin*
(2&*
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_1645004
└
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamecnn_model1/conv2d/kernelcnn_model1/conv2d/bias$cnn_model1/batch_normalization/gamma#cnn_model1/batch_normalization/beta*cnn_model1/batch_normalization/moving_mean.cnn_model1/batch_normalization/moving_variancecnn_model1/conv2d_1/kernelcnn_model1/conv2d_1/bias&cnn_model1/batch_normalization_1/gamma%cnn_model1/batch_normalization_1/beta,cnn_model1/batch_normalization_1/moving_mean0cnn_model1/batch_normalization_1/moving_variancecnn_model1/conv2d_2/kernelcnn_model1/conv2d_2/bias&cnn_model1/batch_normalization_2/gamma%cnn_model1/batch_normalization_2/beta,cnn_model1/batch_normalization_2/moving_mean0cnn_model1/batch_normalization_2/moving_variancecnn_model1/conv2d_3/kernelcnn_model1/conv2d_3/bias&cnn_model1/batch_normalization_3/gamma%cnn_model1/batch_normalization_3/beta,cnn_model1/batch_normalization_3/moving_mean0cnn_model1/batch_normalization_3/moving_variancecnn_model1/conv2d_4/kernelcnn_model1/conv2d_4/bias&cnn_model1/batch_normalization_4/gamma%cnn_model1/batch_normalization_4/beta,cnn_model1/batch_normalization_4/moving_mean0cnn_model1/batch_normalization_4/moving_variancecnn_model1/dense/kernelcnn_model1/dense/biascnn_model1/dense_1/kernelcnn_model1/dense_1/biascnn_model1/dense_2/kernelcnn_model1/dense_2/bias*0
Tin)
'2%*
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_1645121Лй
н

e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1644721

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Щ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ъ
Я
*__inference_conv2d_4_layer_call_fn_1644558

inputs!
unknown:@ 
	unknown_0: 
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1643687w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:          <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644554:'#
!
_user_specified_name	1644552:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
╛
№
C__inference_conv2d_layer_call_and_return_conditional_losses_1643583

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ╚╚ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ╚╚ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ╚╚ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ╚╚ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ╚╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1643609

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         dd@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         dd@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
╫

°
D__inference_dense_1_layer_call_and_return_conditional_losses_1643749

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
С

╥
7__inference_batch_normalization_3_layer_call_fn_1644500

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1643454Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644496:'#
!
_user_specified_name	1644494:'#
!
_user_specified_name	1644492:'#
!
_user_specified_name	1644490:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Щ

╓
7__inference_batch_normalization_2_layer_call_fn_1644418

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1643392К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644414:'#
!
_user_specified_name	1644412:'#
!
_user_specified_name	1644410:'#
!
_user_specified_name	1644408:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Н

╨
5__inference_batch_normalization_layer_call_fn_1644254

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЧ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1643268Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644250:'#
!
_user_specified_name	1644248:'#
!
_user_specified_name	1644246:'#
!
_user_specified_name	1644244:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
є
Ч
'__inference_dense_layer_call_fn_1644688

inputs
unknown:
А	А
	unknown_0:	А
identityИвStatefulPartitionedCall╪
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1643720p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А	: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644684:'#
!
_user_specified_name	1644682:P L
(
_output_shapes
:         А	
 
_user_specified_nameinputs
с
б
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1643410

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
█
b
D__inference_dropout_layer_call_and_return_conditional_losses_1643873

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
У

╥
7__inference_batch_normalization_3_layer_call_fn_1644513

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1643472Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644509:'#
!
_user_specified_name	1644507:'#
!
_user_specified_name	1644505:'#
!
_user_specified_name	1644503:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Л
┴
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1643330

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╧
b
)__inference_dropout_layer_call_fn_1644657

inputs
identityИвStatefulPartitionedCall└
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1643737p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╔
╫
,__inference_cnn_model1_layer_call_fn_1643969
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А%

unknown_17:А@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@ 

unknown_24: 

unknown_25: 

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29:
А	А

unknown_30:	А

unknown_31:
АА

unknown_32:	А

unknown_33:	А

unknown_34:
identityИвStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *<
_read_only_resource_inputs
	
 !"#$*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643785o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'$#
!
_user_specified_name	1643965:'##
!
_user_specified_name	1643963:'"#
!
_user_specified_name	1643961:'!#
!
_user_specified_name	1643959:' #
!
_user_specified_name	1643957:'#
!
_user_specified_name	1643955:'#
!
_user_specified_name	1643953:'#
!
_user_specified_name	1643951:'#
!
_user_specified_name	1643949:'#
!
_user_specified_name	1643947:'#
!
_user_specified_name	1643945:'#
!
_user_specified_name	1643943:'#
!
_user_specified_name	1643941:'#
!
_user_specified_name	1643939:'#
!
_user_specified_name	1643937:'#
!
_user_specified_name	1643935:'#
!
_user_specified_name	1643933:'#
!
_user_specified_name	1643931:'#
!
_user_specified_name	1643929:'#
!
_user_specified_name	1643927:'#
!
_user_specified_name	1643925:'#
!
_user_specified_name	1643923:'#
!
_user_specified_name	1643921:'#
!
_user_specified_name	1643919:'#
!
_user_specified_name	1643917:'#
!
_user_specified_name	1643915:'
#
!
_user_specified_name	1643913:'	#
!
_user_specified_name	1643911:'#
!
_user_specified_name	1643909:'#
!
_user_specified_name	1643907:'#
!
_user_specified_name	1643905:'#
!
_user_specified_name	1643903:'#
!
_user_specified_name	1643901:'#
!
_user_specified_name	1643899:'#
!
_user_specified_name	1643897:'#
!
_user_specified_name	1643895:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_1
╞
`
D__inference_flatten_layer_call_and_return_conditional_losses_1643708

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
п
E
)__inference_flatten_layer_call_fn_1644646

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1643708a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
Л
┴
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1643516

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╕
 
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1643661

inputs9
conv2d_readvariableop_resource:А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
╧
Ы
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1643286

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
П

╨
5__inference_batch_normalization_layer_call_fn_1644267

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1643286Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644263:'#
!
_user_specified_name	1644261:'#
!
_user_specified_name	1644259:'#
!
_user_specified_name	1644257:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┴p
к
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643892
input_1(
conv2d_1643788: 
conv2d_1643790: )
batch_normalization_1643793: )
batch_normalization_1643795: )
batch_normalization_1643797: )
batch_normalization_1643799: *
conv2d_1_1643803: @
conv2d_1_1643805:@+
batch_normalization_1_1643808:@+
batch_normalization_1_1643810:@+
batch_normalization_1_1643812:@+
batch_normalization_1_1643814:@+
conv2d_2_1643818:@А
conv2d_2_1643820:	А,
batch_normalization_2_1643823:	А,
batch_normalization_2_1643825:	А,
batch_normalization_2_1643827:	А,
batch_normalization_2_1643829:	А+
conv2d_3_1643833:А@
conv2d_3_1643835:@+
batch_normalization_3_1643838:@+
batch_normalization_3_1643840:@+
batch_normalization_3_1643842:@+
batch_normalization_3_1643844:@*
conv2d_4_1643848:@ 
conv2d_4_1643850: +
batch_normalization_4_1643853: +
batch_normalization_4_1643855: +
batch_normalization_4_1643857: +
batch_normalization_4_1643859: !
dense_1643864:
А	А
dense_1643866:	А#
dense_1_1643875:
АА
dense_1_1643877:	А"
dense_2_1643886:	А
dense_2_1643888:
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallв-batch_normalization_4/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallЎ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_1643788conv2d_1643790*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ╚╚ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_1643583И
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_1643793batch_normalization_1643795batch_normalization_1643797batch_normalization_1643799*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ╚╚ *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1643286∙
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565Ы
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1643803conv2d_1_1643805*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1643609Ф
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_1643808batch_normalization_1_1643810batch_normalization_1_1643812batch_normalization_1_1643814*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd@*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1643348¤
max_pooling2d/PartitionedCall_1PartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565Ю
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d/PartitionedCall_1:output:0conv2d_2_1643818conv2d_2_1643820*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         22А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1643635Х
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_1643823batch_normalization_2_1643825batch_normalization_2_1643827batch_normalization_2_1643829*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         22А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1643410■
max_pooling2d/PartitionedCall_2PartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565Э
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d/PartitionedCall_2:output:0conv2d_3_1643833conv2d_3_1643835*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1643661Ф
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_1643838batch_normalization_3_1643840batch_normalization_3_1643842batch_normalization_3_1643844*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1643472¤
max_pooling2d/PartitionedCall_3PartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565Э
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d/PartitionedCall_3:output:0conv2d_4_1643848conv2d_4_1643850*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1643687Ф
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_1643853batch_normalization_4_1643855batch_normalization_4_1643857batch_normalization_4_1643859*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1643534¤
max_pooling2d/PartitionedCall_4PartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565┌
flatten/PartitionedCallPartitionedCall(max_pooling2d/PartitionedCall_4:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1643708В
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1643864dense_1643866*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1643720╪
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1643873К
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_1643875dense_1_1643877*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1643749▐
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1643884Л
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_1643886dense_2_1643888*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1643778w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         б
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall:'$#
!
_user_specified_name	1643888:'##
!
_user_specified_name	1643886:'"#
!
_user_specified_name	1643877:'!#
!
_user_specified_name	1643875:' #
!
_user_specified_name	1643866:'#
!
_user_specified_name	1643864:'#
!
_user_specified_name	1643859:'#
!
_user_specified_name	1643857:'#
!
_user_specified_name	1643855:'#
!
_user_specified_name	1643853:'#
!
_user_specified_name	1643850:'#
!
_user_specified_name	1643848:'#
!
_user_specified_name	1643844:'#
!
_user_specified_name	1643842:'#
!
_user_specified_name	1643840:'#
!
_user_specified_name	1643838:'#
!
_user_specified_name	1643835:'#
!
_user_specified_name	1643833:'#
!
_user_specified_name	1643829:'#
!
_user_specified_name	1643827:'#
!
_user_specified_name	1643825:'#
!
_user_specified_name	1643823:'#
!
_user_specified_name	1643820:'#
!
_user_specified_name	1643818:'#
!
_user_specified_name	1643814:'#
!
_user_specified_name	1643812:'
#
!
_user_specified_name	1643810:'	#
!
_user_specified_name	1643808:'#
!
_user_specified_name	1643805:'#
!
_user_specified_name	1643803:'#
!
_user_specified_name	1643799:'#
!
_user_specified_name	1643797:'#
!
_user_specified_name	1643795:'#
!
_user_specified_name	1643793:'#
!
_user_specified_name	1643790:'#
!
_user_specified_name	1643788:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_1
╙
╫
,__inference_cnn_model1_layer_call_fn_1644046
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А%

unknown_17:А@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@ 

unknown_24: 

unknown_25: 

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29:
А	А

unknown_30:	А

unknown_31:
АА

unknown_32:	А

unknown_33:	А

unknown_34:
identityИвStatefulPartitionedCall░
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643892o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'$#
!
_user_specified_name	1644042:'##
!
_user_specified_name	1644040:'"#
!
_user_specified_name	1644038:'!#
!
_user_specified_name	1644036:' #
!
_user_specified_name	1644034:'#
!
_user_specified_name	1644032:'#
!
_user_specified_name	1644030:'#
!
_user_specified_name	1644028:'#
!
_user_specified_name	1644026:'#
!
_user_specified_name	1644024:'#
!
_user_specified_name	1644022:'#
!
_user_specified_name	1644020:'#
!
_user_specified_name	1644018:'#
!
_user_specified_name	1644016:'#
!
_user_specified_name	1644014:'#
!
_user_specified_name	1644012:'#
!
_user_specified_name	1644010:'#
!
_user_specified_name	1644008:'#
!
_user_specified_name	1644006:'#
!
_user_specified_name	1644004:'#
!
_user_specified_name	1644002:'#
!
_user_specified_name	1644000:'#
!
_user_specified_name	1643998:'#
!
_user_specified_name	1643996:'#
!
_user_specified_name	1643994:'#
!
_user_specified_name	1643992:'
#
!
_user_specified_name	1643990:'	#
!
_user_specified_name	1643988:'#
!
_user_specified_name	1643986:'#
!
_user_specified_name	1643984:'#
!
_user_specified_name	1643982:'#
!
_user_specified_name	1643980:'#
!
_user_specified_name	1643978:'#
!
_user_specified_name	1643976:'#
!
_user_specified_name	1643974:'#
!
_user_specified_name	1643972:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_1
Э
а
*__inference_conv2d_3_layer_call_fn_1644476

inputs"
unknown:А@
	unknown_0:@
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1643661w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644472:'#
!
_user_specified_name	1644470:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
У

╥
7__inference_batch_normalization_4_layer_call_fn_1644595

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1643534Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644591:'#
!
_user_specified_name	1644589:'#
!
_user_specified_name	1644587:'#
!
_user_specified_name	1644585:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1644323

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd@*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd@X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         dd@i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         dd@S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
Ъ
Я
*__inference_conv2d_1_layer_call_fn_1644312

inputs!
unknown: @
	unknown_0:@
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1643609w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:         dd@<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         dd : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644308:'#
!
_user_specified_name	1644306:W S
/
_output_shapes
:         dd 
 
_user_specified_nameinputs
╤
Э
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1644385

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╧
Ы
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1644303

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╝
А
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1644405

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         22А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         22АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         22Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         22АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
Ь▒
э
#__inference__traced_restore_1645121
file_prefixC
)assignvariableop_cnn_model1_conv2d_kernel: 7
)assignvariableop_1_cnn_model1_conv2d_bias: E
7assignvariableop_2_cnn_model1_batch_normalization_gamma: D
6assignvariableop_3_cnn_model1_batch_normalization_beta: K
=assignvariableop_4_cnn_model1_batch_normalization_moving_mean: O
Aassignvariableop_5_cnn_model1_batch_normalization_moving_variance: G
-assignvariableop_6_cnn_model1_conv2d_1_kernel: @9
+assignvariableop_7_cnn_model1_conv2d_1_bias:@G
9assignvariableop_8_cnn_model1_batch_normalization_1_gamma:@F
8assignvariableop_9_cnn_model1_batch_normalization_1_beta:@N
@assignvariableop_10_cnn_model1_batch_normalization_1_moving_mean:@R
Dassignvariableop_11_cnn_model1_batch_normalization_1_moving_variance:@I
.assignvariableop_12_cnn_model1_conv2d_2_kernel:@А;
,assignvariableop_13_cnn_model1_conv2d_2_bias:	АI
:assignvariableop_14_cnn_model1_batch_normalization_2_gamma:	АH
9assignvariableop_15_cnn_model1_batch_normalization_2_beta:	АO
@assignvariableop_16_cnn_model1_batch_normalization_2_moving_mean:	АS
Dassignvariableop_17_cnn_model1_batch_normalization_2_moving_variance:	АI
.assignvariableop_18_cnn_model1_conv2d_3_kernel:А@:
,assignvariableop_19_cnn_model1_conv2d_3_bias:@H
:assignvariableop_20_cnn_model1_batch_normalization_3_gamma:@G
9assignvariableop_21_cnn_model1_batch_normalization_3_beta:@N
@assignvariableop_22_cnn_model1_batch_normalization_3_moving_mean:@R
Dassignvariableop_23_cnn_model1_batch_normalization_3_moving_variance:@H
.assignvariableop_24_cnn_model1_conv2d_4_kernel:@ :
,assignvariableop_25_cnn_model1_conv2d_4_bias: H
:assignvariableop_26_cnn_model1_batch_normalization_4_gamma: G
9assignvariableop_27_cnn_model1_batch_normalization_4_beta: N
@assignvariableop_28_cnn_model1_batch_normalization_4_moving_mean: R
Dassignvariableop_29_cnn_model1_batch_normalization_4_moving_variance: ?
+assignvariableop_30_cnn_model1_dense_kernel:
А	А8
)assignvariableop_31_cnn_model1_dense_bias:	АA
-assignvariableop_32_cnn_model1_dense_1_kernel:
АА:
+assignvariableop_33_cnn_model1_dense_1_bias:	А@
-assignvariableop_34_cnn_model1_dense_2_kernel:	А9
+assignvariableop_35_cnn_model1_dense_2_bias:
identity_37ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9╟
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*э
valueуBр%B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH║
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ┌
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*к
_output_shapesЧ
Ф:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:╝
AssignVariableOpAssignVariableOp)assignvariableop_cnn_model1_conv2d_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:└
AssignVariableOp_1AssignVariableOp)assignvariableop_1_cnn_model1_conv2d_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:╬
AssignVariableOp_2AssignVariableOp7assignvariableop_2_cnn_model1_batch_normalization_gammaIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:═
AssignVariableOp_3AssignVariableOp6assignvariableop_3_cnn_model1_batch_normalization_betaIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:╘
AssignVariableOp_4AssignVariableOp=assignvariableop_4_cnn_model1_batch_normalization_moving_meanIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:╪
AssignVariableOp_5AssignVariableOpAassignvariableop_5_cnn_model1_batch_normalization_moving_varianceIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_6AssignVariableOp-assignvariableop_6_cnn_model1_conv2d_1_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_7AssignVariableOp+assignvariableop_7_cnn_model1_conv2d_1_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:╨
AssignVariableOp_8AssignVariableOp9assignvariableop_8_cnn_model1_batch_normalization_1_gammaIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:╧
AssignVariableOp_9AssignVariableOp8assignvariableop_9_cnn_model1_batch_normalization_1_betaIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_10AssignVariableOp@assignvariableop_10_cnn_model1_batch_normalization_1_moving_meanIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:▌
AssignVariableOp_11AssignVariableOpDassignvariableop_11_cnn_model1_batch_normalization_1_moving_varianceIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_12AssignVariableOp.assignvariableop_12_cnn_model1_conv2d_2_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_13AssignVariableOp,assignvariableop_13_cnn_model1_conv2d_2_biasIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:╙
AssignVariableOp_14AssignVariableOp:assignvariableop_14_cnn_model1_batch_normalization_2_gammaIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_15AssignVariableOp9assignvariableop_15_cnn_model1_batch_normalization_2_betaIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_16AssignVariableOp@assignvariableop_16_cnn_model1_batch_normalization_2_moving_meanIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:▌
AssignVariableOp_17AssignVariableOpDassignvariableop_17_cnn_model1_batch_normalization_2_moving_varianceIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_18AssignVariableOp.assignvariableop_18_cnn_model1_conv2d_3_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_19AssignVariableOp,assignvariableop_19_cnn_model1_conv2d_3_biasIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:╙
AssignVariableOp_20AssignVariableOp:assignvariableop_20_cnn_model1_batch_normalization_3_gammaIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_21AssignVariableOp9assignvariableop_21_cnn_model1_batch_normalization_3_betaIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_22AssignVariableOp@assignvariableop_22_cnn_model1_batch_normalization_3_moving_meanIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:▌
AssignVariableOp_23AssignVariableOpDassignvariableop_23_cnn_model1_batch_normalization_3_moving_varianceIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:╟
AssignVariableOp_24AssignVariableOp.assignvariableop_24_cnn_model1_conv2d_4_kernelIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:┼
AssignVariableOp_25AssignVariableOp,assignvariableop_25_cnn_model1_conv2d_4_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:╙
AssignVariableOp_26AssignVariableOp:assignvariableop_26_cnn_model1_batch_normalization_4_gammaIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:╥
AssignVariableOp_27AssignVariableOp9assignvariableop_27_cnn_model1_batch_normalization_4_betaIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:┘
AssignVariableOp_28AssignVariableOp@assignvariableop_28_cnn_model1_batch_normalization_4_moving_meanIdentity_28:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:▌
AssignVariableOp_29AssignVariableOpDassignvariableop_29_cnn_model1_batch_normalization_4_moving_varianceIdentity_29:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_30AssignVariableOp+assignvariableop_30_cnn_model1_dense_kernelIdentity_30:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:┬
AssignVariableOp_31AssignVariableOp)assignvariableop_31_cnn_model1_dense_biasIdentity_31:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_32AssignVariableOp-assignvariableop_32_cnn_model1_dense_1_kernelIdentity_32:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_33AssignVariableOp+assignvariableop_33_cnn_model1_dense_1_biasIdentity_33:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:╞
AssignVariableOp_34AssignVariableOp-assignvariableop_34_cnn_model1_dense_2_kernelIdentity_34:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:─
AssignVariableOp_35AssignVariableOp+assignvariableop_35_cnn_model1_dense_2_biasIdentity_35:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 ч
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ░
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_37Identity_37:output:0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2*
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
AssignVariableOp_1AssignVariableOp_12*
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
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_92$
AssignVariableOpAssignVariableOp:7$3
1
_user_specified_namecnn_model1/dense_2/bias:9#5
3
_user_specified_namecnn_model1/dense_2/kernel:7"3
1
_user_specified_namecnn_model1/dense_1/bias:9!5
3
_user_specified_namecnn_model1/dense_1/kernel:5 1
/
_user_specified_namecnn_model1/dense/bias:73
1
_user_specified_namecnn_model1/dense/kernel:PL
J
_user_specified_name20cnn_model1/batch_normalization_4/moving_variance:LH
F
_user_specified_name.,cnn_model1/batch_normalization_4/moving_mean:EA
?
_user_specified_name'%cnn_model1/batch_normalization_4/beta:FB
@
_user_specified_name(&cnn_model1/batch_normalization_4/gamma:84
2
_user_specified_namecnn_model1/conv2d_4/bias::6
4
_user_specified_namecnn_model1/conv2d_4/kernel:PL
J
_user_specified_name20cnn_model1/batch_normalization_3/moving_variance:LH
F
_user_specified_name.,cnn_model1/batch_normalization_3/moving_mean:EA
?
_user_specified_name'%cnn_model1/batch_normalization_3/beta:FB
@
_user_specified_name(&cnn_model1/batch_normalization_3/gamma:84
2
_user_specified_namecnn_model1/conv2d_3/bias::6
4
_user_specified_namecnn_model1/conv2d_3/kernel:PL
J
_user_specified_name20cnn_model1/batch_normalization_2/moving_variance:LH
F
_user_specified_name.,cnn_model1/batch_normalization_2/moving_mean:EA
?
_user_specified_name'%cnn_model1/batch_normalization_2/beta:FB
@
_user_specified_name(&cnn_model1/batch_normalization_2/gamma:84
2
_user_specified_namecnn_model1/conv2d_2/bias::6
4
_user_specified_namecnn_model1/conv2d_2/kernel:PL
J
_user_specified_name20cnn_model1/batch_normalization_1/moving_variance:LH
F
_user_specified_name.,cnn_model1/batch_normalization_1/moving_mean:E
A
?
_user_specified_name'%cnn_model1/batch_normalization_1/beta:F	B
@
_user_specified_name(&cnn_model1/batch_normalization_1/gamma:84
2
_user_specified_namecnn_model1/conv2d_1/bias::6
4
_user_specified_namecnn_model1/conv2d_1/kernel:NJ
H
_user_specified_name0.cnn_model1/batch_normalization/moving_variance:JF
D
_user_specified_name,*cnn_model1/batch_normalization/moving_mean:C?
=
_user_specified_name%#cnn_model1/batch_normalization/beta:D@
>
_user_specified_name&$cnn_model1/batch_normalization/gamma:62
0
_user_specified_namecnn_model1/conv2d/bias:84
2
_user_specified_namecnn_model1/conv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Л
┴
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1644367

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
с
б
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1644467

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0═
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
is_training( ~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           АМ
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╒

Ў
B__inference_dense_layer_call_and_return_conditional_losses_1644699

inputs2
matmul_readvariableop_resource:
А	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А	
 
_user_specified_nameinputs
╤
Э
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1643472

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1644569

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
Л
┴
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1644613

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
У

╥
7__inference_batch_normalization_1_layer_call_fn_1644349

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЫ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1643348Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644345:'#
!
_user_specified_name	1644343:'#
!
_user_specified_name	1644341:'#
!
_user_specified_name	1644339:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
н

e
F__inference_dropout_1_layer_call_and_return_conditional_losses_1643766

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Щ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╢
K
/__inference_max_pooling2d_layer_call_fn_1644636

inputs
identity╪
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
е
G
+__inference_dropout_1_layer_call_fn_1644709

inputs
identity▓
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1643884a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▌
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1643884

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▌
d
F__inference_dropout_1_layer_call_and_return_conditional_losses_1644726

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Л
┴
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1644531

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╞
`
D__inference_flatten_layer_call_and_return_conditional_losses_1644652

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         А	Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         А	"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:          :W S
/
_output_shapes
:          
 
_user_specified_nameinputs
╒

Ў
B__inference_dense_layer_call_and_return_conditional_losses_1643720

inputs2
matmul_readvariableop_resource:
А	А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
А	А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А	
 
_user_specified_nameinputs
╝
А
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1643635

inputs9
conv2d_readvariableop_resource:@А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0Ъ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         22А*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0~
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         22АY
ReluReluBiasAdd:output:0*
T0*0
_output_shapes
:         22Аj
IdentityIdentityRelu:activations:0^NoOp*
T0*0
_output_shapes
:         22АS
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
л

c
D__inference_dropout_layer_call_and_return_conditional_losses_1643737

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Щ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1644641

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
С

╥
7__inference_batch_normalization_1_layer_call_fn_1644336

inputs
unknown:@
	unknown_0:@
	unknown_1:@
	unknown_2:@
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1643330Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                           @<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644332:'#
!
_user_specified_name	1644330:'#
!
_user_specified_name	1644328:'#
!
_user_specified_name	1644326:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
┤
■
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1643687

inputs8
conv2d_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:          i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:          S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         @: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:W S
/
_output_shapes
:         @
 
_user_specified_nameinputs
з
╨
%__inference_signature_wrapper_1644221
input_1!
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
	unknown_3: 
	unknown_4: #
	unknown_5: @
	unknown_6:@
	unknown_7:@
	unknown_8:@
	unknown_9:@

unknown_10:@%

unknown_11:@А

unknown_12:	А

unknown_13:	А

unknown_14:	А

unknown_15:	А

unknown_16:	А%

unknown_17:А@

unknown_18:@

unknown_19:@

unknown_20:@

unknown_21:@

unknown_22:@$

unknown_23:@ 

unknown_24: 

unknown_25: 

unknown_26: 

unknown_27: 

unknown_28: 

unknown_29:
А	А

unknown_30:	А

unknown_31:
АА

unknown_32:	А

unknown_33:	А

unknown_34:
identityИвStatefulPartitionedCallЛ
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *F
_read_only_resource_inputs(
&$	
 !"#$*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_1643250o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'$#
!
_user_specified_name	1644217:'##
!
_user_specified_name	1644215:'"#
!
_user_specified_name	1644213:'!#
!
_user_specified_name	1644211:' #
!
_user_specified_name	1644209:'#
!
_user_specified_name	1644207:'#
!
_user_specified_name	1644205:'#
!
_user_specified_name	1644203:'#
!
_user_specified_name	1644201:'#
!
_user_specified_name	1644199:'#
!
_user_specified_name	1644197:'#
!
_user_specified_name	1644195:'#
!
_user_specified_name	1644193:'#
!
_user_specified_name	1644191:'#
!
_user_specified_name	1644189:'#
!
_user_specified_name	1644187:'#
!
_user_specified_name	1644185:'#
!
_user_specified_name	1644183:'#
!
_user_specified_name	1644181:'#
!
_user_specified_name	1644179:'#
!
_user_specified_name	1644177:'#
!
_user_specified_name	1644175:'#
!
_user_specified_name	1644173:'#
!
_user_specified_name	1644171:'#
!
_user_specified_name	1644169:'#
!
_user_specified_name	1644167:'
#
!
_user_specified_name	1644165:'	#
!
_user_specified_name	1644163:'#
!
_user_specified_name	1644161:'#
!
_user_specified_name	1644159:'#
!
_user_specified_name	1644157:'#
!
_user_specified_name	1644155:'#
!
_user_specified_name	1644153:'#
!
_user_specified_name	1644151:'#
!
_user_specified_name	1644149:'#
!
_user_specified_name	1644147:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_1
є
Ч
)__inference_dense_2_layer_call_fn_1644755

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCall┘
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1643778o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644751:'#
!
_user_specified_name	1644749:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╫

°
D__inference_dense_1_layer_call_and_return_conditional_losses_1644746

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         АS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ы
┼
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1643392

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
╘

Ў
D__inference_dense_2_layer_call_and_return_conditional_losses_1644766

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Т
f
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565

inputs
identityв
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
╤
Э
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1643534

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
р╤
р$
"__inference__wrapped_model_1643250
input_1J
0cnn_model1_conv2d_conv2d_readvariableop_resource: ?
1cnn_model1_conv2d_biasadd_readvariableop_resource: D
6cnn_model1_batch_normalization_readvariableop_resource: F
8cnn_model1_batch_normalization_readvariableop_1_resource: U
Gcnn_model1_batch_normalization_fusedbatchnormv3_readvariableop_resource: W
Icnn_model1_batch_normalization_fusedbatchnormv3_readvariableop_1_resource: L
2cnn_model1_conv2d_1_conv2d_readvariableop_resource: @A
3cnn_model1_conv2d_1_biasadd_readvariableop_resource:@F
8cnn_model1_batch_normalization_1_readvariableop_resource:@H
:cnn_model1_batch_normalization_1_readvariableop_1_resource:@W
Icnn_model1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource:@Y
Kcnn_model1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource:@M
2cnn_model1_conv2d_2_conv2d_readvariableop_resource:@АB
3cnn_model1_conv2d_2_biasadd_readvariableop_resource:	АG
8cnn_model1_batch_normalization_2_readvariableop_resource:	АI
:cnn_model1_batch_normalization_2_readvariableop_1_resource:	АX
Icnn_model1_batch_normalization_2_fusedbatchnormv3_readvariableop_resource:	АZ
Kcnn_model1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource:	АM
2cnn_model1_conv2d_3_conv2d_readvariableop_resource:А@A
3cnn_model1_conv2d_3_biasadd_readvariableop_resource:@F
8cnn_model1_batch_normalization_3_readvariableop_resource:@H
:cnn_model1_batch_normalization_3_readvariableop_1_resource:@W
Icnn_model1_batch_normalization_3_fusedbatchnormv3_readvariableop_resource:@Y
Kcnn_model1_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource:@L
2cnn_model1_conv2d_4_conv2d_readvariableop_resource:@ A
3cnn_model1_conv2d_4_biasadd_readvariableop_resource: F
8cnn_model1_batch_normalization_4_readvariableop_resource: H
:cnn_model1_batch_normalization_4_readvariableop_1_resource: W
Icnn_model1_batch_normalization_4_fusedbatchnormv3_readvariableop_resource: Y
Kcnn_model1_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource: C
/cnn_model1_dense_matmul_readvariableop_resource:
А	А?
0cnn_model1_dense_biasadd_readvariableop_resource:	АE
1cnn_model1_dense_1_matmul_readvariableop_resource:
ААA
2cnn_model1_dense_1_biasadd_readvariableop_resource:	АD
1cnn_model1_dense_2_matmul_readvariableop_resource:	А@
2cnn_model1_dense_2_biasadd_readvariableop_resource:
identityИв>cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOpв@cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1в-cnn_model1/batch_normalization/ReadVariableOpв/cnn_model1/batch_normalization/ReadVariableOp_1в@cnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpвBcnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1в/cnn_model1/batch_normalization_1/ReadVariableOpв1cnn_model1/batch_normalization_1/ReadVariableOp_1в@cnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpвBcnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1в/cnn_model1/batch_normalization_2/ReadVariableOpв1cnn_model1/batch_normalization_2/ReadVariableOp_1в@cnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpвBcnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1в/cnn_model1/batch_normalization_3/ReadVariableOpв1cnn_model1/batch_normalization_3/ReadVariableOp_1в@cnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpвBcnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1в/cnn_model1/batch_normalization_4/ReadVariableOpв1cnn_model1/batch_normalization_4/ReadVariableOp_1в(cnn_model1/conv2d/BiasAdd/ReadVariableOpв'cnn_model1/conv2d/Conv2D/ReadVariableOpв*cnn_model1/conv2d_1/BiasAdd/ReadVariableOpв)cnn_model1/conv2d_1/Conv2D/ReadVariableOpв*cnn_model1/conv2d_2/BiasAdd/ReadVariableOpв)cnn_model1/conv2d_2/Conv2D/ReadVariableOpв*cnn_model1/conv2d_3/BiasAdd/ReadVariableOpв)cnn_model1/conv2d_3/Conv2D/ReadVariableOpв*cnn_model1/conv2d_4/BiasAdd/ReadVariableOpв)cnn_model1/conv2d_4/Conv2D/ReadVariableOpв'cnn_model1/dense/BiasAdd/ReadVariableOpв&cnn_model1/dense/MatMul/ReadVariableOpв)cnn_model1/dense_1/BiasAdd/ReadVariableOpв(cnn_model1/dense_1/MatMul/ReadVariableOpв)cnn_model1/dense_2/BiasAdd/ReadVariableOpв(cnn_model1/dense_2/MatMul/ReadVariableOpа
'cnn_model1/conv2d/Conv2D/ReadVariableOpReadVariableOp0cnn_model1_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0└
cnn_model1/conv2d/Conv2DConv2Dinput_1/cnn_model1/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ╚╚ *
paddingSAME*
strides
Ц
(cnn_model1/conv2d/BiasAdd/ReadVariableOpReadVariableOp1cnn_model1_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╡
cnn_model1/conv2d/BiasAddBiasAdd!cnn_model1/conv2d/Conv2D:output:00cnn_model1/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ╚╚ ~
cnn_model1/conv2d/ReluRelu"cnn_model1/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:         ╚╚ а
-cnn_model1/batch_normalization/ReadVariableOpReadVariableOp6cnn_model1_batch_normalization_readvariableop_resource*
_output_shapes
: *
dtype0д
/cnn_model1/batch_normalization/ReadVariableOp_1ReadVariableOp8cnn_model1_batch_normalization_readvariableop_1_resource*
_output_shapes
: *
dtype0┬
>cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpGcnn_model1_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╞
@cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIcnn_model1_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0ё
/cnn_model1/batch_normalization/FusedBatchNormV3FusedBatchNormV3$cnn_model1/conv2d/Relu:activations:05cnn_model1/batch_normalization/ReadVariableOp:value:07cnn_model1/batch_normalization/ReadVariableOp_1:value:0Fcnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Hcnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*M
_output_shapes;
9:         ╚╚ : : : : :*
epsilon%oГ:*
is_training( ═
 cnn_model1/max_pooling2d/MaxPoolMaxPool3cnn_model1/batch_normalization/FusedBatchNormV3:y:0*/
_output_shapes
:         dd *
ksize
*
paddingVALID*
strides
д
)cnn_model1/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2cnn_model1_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype0ф
cnn_model1/conv2d_1/Conv2DConv2D)cnn_model1/max_pooling2d/MaxPool:output:01cnn_model1/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd@*
paddingSAME*
strides
Ъ
*cnn_model1/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3cnn_model1_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╣
cnn_model1/conv2d_1/BiasAddBiasAdd#cnn_model1/conv2d_1/Conv2D:output:02cnn_model1/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         dd@А
cnn_model1/conv2d_1/ReluRelu$cnn_model1/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:         dd@д
/cnn_model1/batch_normalization_1/ReadVariableOpReadVariableOp8cnn_model1_batch_normalization_1_readvariableop_resource*
_output_shapes
:@*
dtype0и
1cnn_model1/batch_normalization_1/ReadVariableOp_1ReadVariableOp:cnn_model1_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:@*
dtype0╞
@cnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpIcnn_model1_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0╩
Bcnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKcnn_model1_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0√
1cnn_model1/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3&cnn_model1/conv2d_1/Relu:activations:07cnn_model1/batch_normalization_1/ReadVariableOp:value:09cnn_model1/batch_normalization_1/ReadVariableOp_1:value:0Hcnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Jcnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         dd@:@:@:@:@:*
epsilon%oГ:*
is_training( ╤
"cnn_model1/max_pooling2d/MaxPool_1MaxPool5cnn_model1/batch_normalization_1/FusedBatchNormV3:y:0*/
_output_shapes
:         22@*
ksize
*
paddingVALID*
strides
е
)cnn_model1/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2cnn_model1_conv2d_2_conv2d_readvariableop_resource*'
_output_shapes
:@А*
dtype0ч
cnn_model1/conv2d_2/Conv2DConv2D+cnn_model1/max_pooling2d/MaxPool_1:output:01cnn_model1/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*0
_output_shapes
:         22А*
paddingSAME*
strides
Ы
*cnn_model1/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3cnn_model1_conv2d_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0║
cnn_model1/conv2d_2/BiasAddBiasAdd#cnn_model1/conv2d_2/Conv2D:output:02cnn_model1/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*0
_output_shapes
:         22АБ
cnn_model1/conv2d_2/ReluRelu$cnn_model1/conv2d_2/BiasAdd:output:0*
T0*0
_output_shapes
:         22Ае
/cnn_model1/batch_normalization_2/ReadVariableOpReadVariableOp8cnn_model1_batch_normalization_2_readvariableop_resource*
_output_shapes	
:А*
dtype0й
1cnn_model1/batch_normalization_2/ReadVariableOp_1ReadVariableOp:cnn_model1_batch_normalization_2_readvariableop_1_resource*
_output_shapes	
:А*
dtype0╟
@cnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpReadVariableOpIcnn_model1_batch_normalization_2_fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0╦
Bcnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKcnn_model1_batch_normalization_2_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0А
1cnn_model1/batch_normalization_2/FusedBatchNormV3FusedBatchNormV3&cnn_model1/conv2d_2/Relu:activations:07cnn_model1/batch_normalization_2/ReadVariableOp:value:09cnn_model1/batch_normalization_2/ReadVariableOp_1:value:0Hcnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp:value:0Jcnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*P
_output_shapes>
<:         22А:А:А:А:А:*
epsilon%oГ:*
is_training( ╥
"cnn_model1/max_pooling2d/MaxPool_2MaxPool5cnn_model1/batch_normalization_2/FusedBatchNormV3:y:0*0
_output_shapes
:         А*
ksize
*
paddingVALID*
strides
е
)cnn_model1/conv2d_3/Conv2D/ReadVariableOpReadVariableOp2cnn_model1_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0ц
cnn_model1/conv2d_3/Conv2DConv2D+cnn_model1/max_pooling2d/MaxPool_2:output:01cnn_model1/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
Ъ
*cnn_model1/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp3cnn_model1_conv2d_3_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0╣
cnn_model1/conv2d_3/BiasAddBiasAdd#cnn_model1/conv2d_3/Conv2D:output:02cnn_model1/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @А
cnn_model1/conv2d_3/ReluRelu$cnn_model1/conv2d_3/BiasAdd:output:0*
T0*/
_output_shapes
:         @д
/cnn_model1/batch_normalization_3/ReadVariableOpReadVariableOp8cnn_model1_batch_normalization_3_readvariableop_resource*
_output_shapes
:@*
dtype0и
1cnn_model1/batch_normalization_3/ReadVariableOp_1ReadVariableOp:cnn_model1_batch_normalization_3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╞
@cnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpReadVariableOpIcnn_model1_batch_normalization_3_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0╩
Bcnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKcnn_model1_batch_normalization_3_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0√
1cnn_model1/batch_normalization_3/FusedBatchNormV3FusedBatchNormV3&cnn_model1/conv2d_3/Relu:activations:07cnn_model1/batch_normalization_3/ReadVariableOp:value:09cnn_model1/batch_normalization_3/ReadVariableOp_1:value:0Hcnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp:value:0Jcnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( ╤
"cnn_model1/max_pooling2d/MaxPool_3MaxPool5cnn_model1/batch_normalization_3/FusedBatchNormV3:y:0*/
_output_shapes
:         @*
ksize
*
paddingVALID*
strides
д
)cnn_model1/conv2d_4/Conv2D/ReadVariableOpReadVariableOp2cnn_model1_conv2d_4_conv2d_readvariableop_resource*&
_output_shapes
:@ *
dtype0ц
cnn_model1/conv2d_4/Conv2DConv2D+cnn_model1/max_pooling2d/MaxPool_3:output:01cnn_model1/conv2d_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:          *
paddingSAME*
strides
Ъ
*cnn_model1/conv2d_4/BiasAdd/ReadVariableOpReadVariableOp3cnn_model1_conv2d_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0╣
cnn_model1/conv2d_4/BiasAddBiasAdd#cnn_model1/conv2d_4/Conv2D:output:02cnn_model1/conv2d_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:          А
cnn_model1/conv2d_4/ReluRelu$cnn_model1/conv2d_4/BiasAdd:output:0*
T0*/
_output_shapes
:          д
/cnn_model1/batch_normalization_4/ReadVariableOpReadVariableOp8cnn_model1_batch_normalization_4_readvariableop_resource*
_output_shapes
: *
dtype0и
1cnn_model1/batch_normalization_4/ReadVariableOp_1ReadVariableOp:cnn_model1_batch_normalization_4_readvariableop_1_resource*
_output_shapes
: *
dtype0╞
@cnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpReadVariableOpIcnn_model1_batch_normalization_4_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0╩
Bcnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpKcnn_model1_batch_normalization_4_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0√
1cnn_model1/batch_normalization_4/FusedBatchNormV3FusedBatchNormV3&cnn_model1/conv2d_4/Relu:activations:07cnn_model1/batch_normalization_4/ReadVariableOp:value:09cnn_model1/batch_normalization_4/ReadVariableOp_1:value:0Hcnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp:value:0Jcnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:          : : : : :*
epsilon%oГ:*
is_training( ╤
"cnn_model1/max_pooling2d/MaxPool_4MaxPool5cnn_model1/batch_normalization_4/FusedBatchNormV3:y:0*/
_output_shapes
:          *
ksize
*
paddingVALID*
strides
i
cnn_model1/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"    А  и
cnn_model1/flatten/ReshapeReshape+cnn_model1/max_pooling2d/MaxPool_4:output:0!cnn_model1/flatten/Const:output:0*
T0*(
_output_shapes
:         А	Ш
&cnn_model1/dense/MatMul/ReadVariableOpReadVariableOp/cnn_model1_dense_matmul_readvariableop_resource* 
_output_shapes
:
А	А*
dtype0й
cnn_model1/dense/MatMulMatMul#cnn_model1/flatten/Reshape:output:0.cnn_model1/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АХ
'cnn_model1/dense/BiasAdd/ReadVariableOpReadVariableOp0cnn_model1_dense_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0к
cnn_model1/dense/BiasAddBiasAdd!cnn_model1/dense/MatMul:product:0/cnn_model1/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
cnn_model1/dense/ReluRelu!cnn_model1/dense/BiasAdd:output:0*
T0*(
_output_shapes
:         А
cnn_model1/dropout/IdentityIdentity#cnn_model1/dense/Relu:activations:0*
T0*(
_output_shapes
:         АЬ
(cnn_model1/dense_1/MatMul/ReadVariableOpReadVariableOp1cnn_model1_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0о
cnn_model1/dense_1/MatMulMatMul$cnn_model1/dropout/Identity:output:00cnn_model1/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЩ
)cnn_model1/dense_1/BiasAdd/ReadVariableOpReadVariableOp2cnn_model1_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0░
cnn_model1/dense_1/BiasAddBiasAdd#cnn_model1/dense_1/MatMul:product:01cnn_model1/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аw
cnn_model1/dense_1/ReluRelu#cnn_model1/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:         АГ
cnn_model1/dropout_1/IdentityIdentity%cnn_model1/dense_1/Relu:activations:0*
T0*(
_output_shapes
:         АЫ
(cnn_model1/dense_2/MatMul/ReadVariableOpReadVariableOp1cnn_model1_dense_2_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0п
cnn_model1/dense_2/MatMulMatMul&cnn_model1/dropout_1/Identity:output:00cnn_model1/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ш
)cnn_model1/dense_2/BiasAdd/ReadVariableOpReadVariableOp2cnn_model1_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0п
cnn_model1/dense_2/BiasAddBiasAdd#cnn_model1/dense_2/MatMul:product:01cnn_model1/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         |
cnn_model1/dense_2/SoftmaxSoftmax#cnn_model1/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:         s
IdentityIdentity$cnn_model1/dense_2/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:         ·
NoOpNoOp?^cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOpA^cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1.^cnn_model1/batch_normalization/ReadVariableOp0^cnn_model1/batch_normalization/ReadVariableOp_1A^cnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOpC^cnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_10^cnn_model1/batch_normalization_1/ReadVariableOp2^cnn_model1/batch_normalization_1/ReadVariableOp_1A^cnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOpC^cnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_10^cnn_model1/batch_normalization_2/ReadVariableOp2^cnn_model1/batch_normalization_2/ReadVariableOp_1A^cnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOpC^cnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_10^cnn_model1/batch_normalization_3/ReadVariableOp2^cnn_model1/batch_normalization_3/ReadVariableOp_1A^cnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOpC^cnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_10^cnn_model1/batch_normalization_4/ReadVariableOp2^cnn_model1/batch_normalization_4/ReadVariableOp_1)^cnn_model1/conv2d/BiasAdd/ReadVariableOp(^cnn_model1/conv2d/Conv2D/ReadVariableOp+^cnn_model1/conv2d_1/BiasAdd/ReadVariableOp*^cnn_model1/conv2d_1/Conv2D/ReadVariableOp+^cnn_model1/conv2d_2/BiasAdd/ReadVariableOp*^cnn_model1/conv2d_2/Conv2D/ReadVariableOp+^cnn_model1/conv2d_3/BiasAdd/ReadVariableOp*^cnn_model1/conv2d_3/Conv2D/ReadVariableOp+^cnn_model1/conv2d_4/BiasAdd/ReadVariableOp*^cnn_model1/conv2d_4/Conv2D/ReadVariableOp(^cnn_model1/dense/BiasAdd/ReadVariableOp'^cnn_model1/dense/MatMul/ReadVariableOp*^cnn_model1/dense_1/BiasAdd/ReadVariableOp)^cnn_model1/dense_1/MatMul/ReadVariableOp*^cnn_model1/dense_2/BiasAdd/ReadVariableOp)^cnn_model1/dense_2/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Д
@cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOp_1@cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOp_12А
>cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOp>cnn_model1/batch_normalization/FusedBatchNormV3/ReadVariableOp2b
/cnn_model1/batch_normalization/ReadVariableOp_1/cnn_model1/batch_normalization/ReadVariableOp_12^
-cnn_model1/batch_normalization/ReadVariableOp-cnn_model1/batch_normalization/ReadVariableOp2И
Bcnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1Bcnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12Д
@cnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp@cnn_model1/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2f
1cnn_model1/batch_normalization_1/ReadVariableOp_11cnn_model1/batch_normalization_1/ReadVariableOp_12b
/cnn_model1/batch_normalization_1/ReadVariableOp/cnn_model1/batch_normalization_1/ReadVariableOp2И
Bcnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_1Bcnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp_12Д
@cnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp@cnn_model1/batch_normalization_2/FusedBatchNormV3/ReadVariableOp2f
1cnn_model1/batch_normalization_2/ReadVariableOp_11cnn_model1/batch_normalization_2/ReadVariableOp_12b
/cnn_model1/batch_normalization_2/ReadVariableOp/cnn_model1/batch_normalization_2/ReadVariableOp2И
Bcnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_1Bcnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp_12Д
@cnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp@cnn_model1/batch_normalization_3/FusedBatchNormV3/ReadVariableOp2f
1cnn_model1/batch_normalization_3/ReadVariableOp_11cnn_model1/batch_normalization_3/ReadVariableOp_12b
/cnn_model1/batch_normalization_3/ReadVariableOp/cnn_model1/batch_normalization_3/ReadVariableOp2И
Bcnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_1Bcnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp_12Д
@cnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp@cnn_model1/batch_normalization_4/FusedBatchNormV3/ReadVariableOp2f
1cnn_model1/batch_normalization_4/ReadVariableOp_11cnn_model1/batch_normalization_4/ReadVariableOp_12b
/cnn_model1/batch_normalization_4/ReadVariableOp/cnn_model1/batch_normalization_4/ReadVariableOp2T
(cnn_model1/conv2d/BiasAdd/ReadVariableOp(cnn_model1/conv2d/BiasAdd/ReadVariableOp2R
'cnn_model1/conv2d/Conv2D/ReadVariableOp'cnn_model1/conv2d/Conv2D/ReadVariableOp2X
*cnn_model1/conv2d_1/BiasAdd/ReadVariableOp*cnn_model1/conv2d_1/BiasAdd/ReadVariableOp2V
)cnn_model1/conv2d_1/Conv2D/ReadVariableOp)cnn_model1/conv2d_1/Conv2D/ReadVariableOp2X
*cnn_model1/conv2d_2/BiasAdd/ReadVariableOp*cnn_model1/conv2d_2/BiasAdd/ReadVariableOp2V
)cnn_model1/conv2d_2/Conv2D/ReadVariableOp)cnn_model1/conv2d_2/Conv2D/ReadVariableOp2X
*cnn_model1/conv2d_3/BiasAdd/ReadVariableOp*cnn_model1/conv2d_3/BiasAdd/ReadVariableOp2V
)cnn_model1/conv2d_3/Conv2D/ReadVariableOp)cnn_model1/conv2d_3/Conv2D/ReadVariableOp2X
*cnn_model1/conv2d_4/BiasAdd/ReadVariableOp*cnn_model1/conv2d_4/BiasAdd/ReadVariableOp2V
)cnn_model1/conv2d_4/Conv2D/ReadVariableOp)cnn_model1/conv2d_4/Conv2D/ReadVariableOp2R
'cnn_model1/dense/BiasAdd/ReadVariableOp'cnn_model1/dense/BiasAdd/ReadVariableOp2P
&cnn_model1/dense/MatMul/ReadVariableOp&cnn_model1/dense/MatMul/ReadVariableOp2V
)cnn_model1/dense_1/BiasAdd/ReadVariableOp)cnn_model1/dense_1/BiasAdd/ReadVariableOp2T
(cnn_model1/dense_1/MatMul/ReadVariableOp(cnn_model1/dense_1/MatMul/ReadVariableOp2V
)cnn_model1/dense_2/BiasAdd/ReadVariableOp)cnn_model1/dense_2/BiasAdd/ReadVariableOp2T
(cnn_model1/dense_2/MatMul/ReadVariableOp(cnn_model1/dense_2/MatMul/ReadVariableOp:($$
"
_user_specified_name
resource:(#$
"
_user_specified_name
resource:("$
"
_user_specified_name
resource:(!$
"
_user_specified_name
resource:( $
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_1
╘

Ў
D__inference_dense_2_layer_call_and_return_conditional_losses_1643778

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:         `
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:         S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Й
┐
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1644285

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
б
E
)__inference_dropout_layer_call_fn_1644662

inputs
identity░
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1643873a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╤
Э
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1643348

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╤
Э
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1644631

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
█
b
D__inference_dropout_layer_call_and_return_conditional_losses_1644679

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╕
 
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1644487

inputs9
conv2d_readvariableop_resource:А@-
biasadd_readvariableop_resource:@
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:А@*
dtype0Щ
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:         @i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:         @S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:X T
0
_output_shapes
:         А
 
_user_specified_nameinputs
С

╥
7__inference_batch_normalization_4_layer_call_fn_1644582

inputs
unknown: 
	unknown_0: 
	unknown_1: 
	unknown_2: 
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1643516Й
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*A
_output_shapes/
-:+                            <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644578:'#
!
_user_specified_name	1644576:'#
!
_user_specified_name	1644574:'#
!
_user_specified_name	1644572:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╙
d
+__inference_dropout_1_layer_call_fn_1644704

inputs
identityИвStatefulPartitionedCall┬
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1643766p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╤
Э
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1644549

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╚
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( }
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @М
NoOpNoOp ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Ю
Э
(__inference_conv2d_layer_call_fn_1644230

inputs!
unknown: 
	unknown_0: 
identityИвStatefulPartitionedCallт
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ╚╚ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_1643583y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ╚╚ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ╚╚: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644226:'#
!
_user_specified_name	1644224:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
л

c
D__inference_dropout_layer_call_and_return_conditional_losses_1644674

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *лкк?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АQ
dropout/ShapeShapeinputs*
T0*
_output_shapes
::э╧Щ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0*

seed{[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *  А>з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АT
dropout/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    Ф
dropout/SelectV2SelectV2dropout/GreaterEqual:z:0dropout/Mul:z:0dropout/Const_1:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentitydropout/SelectV2:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ў
Щ
)__inference_dense_1_layer_call_fn_1644735

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1643749p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644731:'#
!
_user_specified_name	1644729:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ы

╓
7__inference_batch_normalization_2_layer_call_fn_1644431

inputs
unknown:	А
	unknown_0:	А
	unknown_1:	А
	unknown_2:	А
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *B
_output_shapes0
.:,                           А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1643410К
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*B
_output_shapes0
.:,                           А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644427:'#
!
_user_specified_name	1644425:'#
!
_user_specified_name	1644423:'#
!
_user_specified_name	1644421:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
Л
┴
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1643454

inputs%
readvariableop_resource:@'
readvariableop_1_resource:@6
(fusedbatchnormv3_readvariableop_resource:@8
*fusedbatchnormv3_readvariableop_1_resource:@
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                           @░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                           @: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╛
№
C__inference_conv2d_layer_call_and_return_conditional_losses_1644241

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ╚╚ *
paddingSAME*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ╚╚ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:         ╚╚ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:         ╚╚ S
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:         ╚╚: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:Y U
1
_output_shapes
:         ╚╚
 
_user_specified_nameinputs
бs
Ё
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643785
input_1(
conv2d_1643584: 
conv2d_1643586: )
batch_normalization_1643589: )
batch_normalization_1643591: )
batch_normalization_1643593: )
batch_normalization_1643595: *
conv2d_1_1643610: @
conv2d_1_1643612:@+
batch_normalization_1_1643615:@+
batch_normalization_1_1643617:@+
batch_normalization_1_1643619:@+
batch_normalization_1_1643621:@+
conv2d_2_1643636:@А
conv2d_2_1643638:	А,
batch_normalization_2_1643641:	А,
batch_normalization_2_1643643:	А,
batch_normalization_2_1643645:	А,
batch_normalization_2_1643647:	А+
conv2d_3_1643662:А@
conv2d_3_1643664:@+
batch_normalization_3_1643667:@+
batch_normalization_3_1643669:@+
batch_normalization_3_1643671:@+
batch_normalization_3_1643673:@*
conv2d_4_1643688:@ 
conv2d_4_1643690: +
batch_normalization_4_1643693: +
batch_normalization_4_1643695: +
batch_normalization_4_1643697: +
batch_normalization_4_1643699: !
dense_1643721:
А	А
dense_1643723:	А#
dense_1_1643750:
АА
dense_1_1643752:	А"
dense_2_1643779:	А
dense_2_1643781:
identityИв+batch_normalization/StatefulPartitionedCallв-batch_normalization_1/StatefulPartitionedCallв-batch_normalization_2/StatefulPartitionedCallв-batch_normalization_3/StatefulPartitionedCallв-batch_normalization_4/StatefulPartitionedCallвconv2d/StatefulPartitionedCallв conv2d_1/StatefulPartitionedCallв conv2d_2/StatefulPartitionedCallв conv2d_3/StatefulPartitionedCallв conv2d_4/StatefulPartitionedCallвdense/StatefulPartitionedCallвdense_1/StatefulPartitionedCallвdense_2/StatefulPartitionedCallвdropout/StatefulPartitionedCallв!dropout_1/StatefulPartitionedCallЎ
conv2d/StatefulPartitionedCallStatefulPartitionedCallinput_1conv2d_1643584conv2d_1643586*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ╚╚ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_conv2d_layer_call_and_return_conditional_losses_1643583Ж
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_1643589batch_normalization_1643591batch_normalization_1643593batch_normalization_1643595*
Tin	
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ╚╚ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1643268∙
max_pooling2d/PartitionedCallPartitionedCall4batch_normalization/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565Ы
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1643610conv2d_1_1643612*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1643609Т
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_1643615batch_normalization_1_1643617batch_normalization_1_1643619batch_normalization_1_1643621*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         dd@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1643330¤
max_pooling2d/PartitionedCall_1PartitionedCall6batch_normalization_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         22@* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565Ю
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d/PartitionedCall_1:output:0conv2d_2_1643636conv2d_2_1643638*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         22А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1643635У
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0batch_normalization_2_1643641batch_normalization_2_1643643batch_normalization_2_1643645batch_normalization_2_1643647*
Tin	
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         22А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1643392■
max_pooling2d/PartitionedCall_2PartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565Э
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d/PartitionedCall_2:output:0conv2d_3_1643662conv2d_3_1643664*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1643661Т
-batch_normalization_3/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0batch_normalization_3_1643667batch_normalization_3_1643669batch_normalization_3_1643671batch_normalization_3_1643673*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1643454¤
max_pooling2d/PartitionedCall_3PartitionedCall6batch_normalization_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:         @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565Э
 conv2d_4/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d/PartitionedCall_3:output:0conv2d_4_1643688conv2d_4_1643690*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1643687Т
-batch_normalization_4/StatefulPartitionedCallStatefulPartitionedCall)conv2d_4/StatefulPartitionedCall:output:0batch_normalization_4_1643693batch_normalization_4_1643695batch_normalization_4_1643697batch_normalization_4_1643699*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1643516¤
max_pooling2d/PartitionedCall_4PartitionedCall6batch_normalization_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *S
fNRL
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1643565┌
flatten/PartitionedCallPartitionedCall(max_pooling2d/PartitionedCall_4:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_flatten_layer_call_and_return_conditional_losses_1643708В
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0dense_1643721dense_1643723*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *K
fFRD
B__inference_dense_layer_call_and_return_conditional_losses_1643720ш
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dropout_layer_call_and_return_conditional_losses_1643737Т
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_1643750dense_1_1643752*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1643749Р
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_dropout_1_layer_call_and_return_conditional_losses_1643766У
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_1643779dense_2_1643781*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_2_layer_call_and_return_conditional_losses_1643778w
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ч
NoOpNoOp,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall.^batch_normalization_3/StatefulPartitionedCall.^batch_normalization_4/StatefulPartitionedCall^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall!^conv2d_3/StatefulPartitionedCall!^conv2d_4/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*x
_input_shapesg
e:         ╚╚: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2^
-batch_normalization_3/StatefulPartitionedCall-batch_normalization_3/StatefulPartitionedCall2^
-batch_normalization_4/StatefulPartitionedCall-batch_normalization_4/StatefulPartitionedCall2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2D
 conv2d_4/StatefulPartitionedCall conv2d_4/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:'$#
!
_user_specified_name	1643781:'##
!
_user_specified_name	1643779:'"#
!
_user_specified_name	1643752:'!#
!
_user_specified_name	1643750:' #
!
_user_specified_name	1643723:'#
!
_user_specified_name	1643721:'#
!
_user_specified_name	1643699:'#
!
_user_specified_name	1643697:'#
!
_user_specified_name	1643695:'#
!
_user_specified_name	1643693:'#
!
_user_specified_name	1643690:'#
!
_user_specified_name	1643688:'#
!
_user_specified_name	1643673:'#
!
_user_specified_name	1643671:'#
!
_user_specified_name	1643669:'#
!
_user_specified_name	1643667:'#
!
_user_specified_name	1643664:'#
!
_user_specified_name	1643662:'#
!
_user_specified_name	1643647:'#
!
_user_specified_name	1643645:'#
!
_user_specified_name	1643643:'#
!
_user_specified_name	1643641:'#
!
_user_specified_name	1643638:'#
!
_user_specified_name	1643636:'#
!
_user_specified_name	1643621:'#
!
_user_specified_name	1643619:'
#
!
_user_specified_name	1643617:'	#
!
_user_specified_name	1643615:'#
!
_user_specified_name	1643612:'#
!
_user_specified_name	1643610:'#
!
_user_specified_name	1643595:'#
!
_user_specified_name	1643593:'#
!
_user_specified_name	1643591:'#
!
_user_specified_name	1643589:'#
!
_user_specified_name	1643586:'#
!
_user_specified_name	1643584:Z V
1
_output_shapes
:         ╚╚
!
_user_specified_name	input_1
Ю
б
*__inference_conv2d_2_layer_call_fn_1644394

inputs"
unknown:@А
	unknown_0:	А
identityИвStatefulPartitionedCallу
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         22А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1643635x
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*0
_output_shapes
:         22А<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:         22@: : 22
StatefulPartitionedCallStatefulPartitionedCall:'#
!
_user_specified_name	1644390:'#
!
_user_specified_name	1644388:W S
/
_output_shapes
:         22@
 
_user_specified_nameinputs
Ы
┼
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1644449

inputs&
readvariableop_resource:	А(
readvariableop_1_resource:	А7
(fusedbatchnormv3_readvariableop_resource:	А9
*fusedbatchnormv3_readvariableop_1_resource:	А
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1c
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:А*
dtype0g
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes	
:А*
dtype0Е
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes	
:А*
dtype0Й
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes	
:А*
dtype0█
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*b
_output_shapesP
N:,                           А:А:А:А:А:*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(~
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*B
_output_shapes0
.:,                           А░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:,                           А: : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:j f
B
_output_shapes0
.:,                           А
 
_user_specified_nameinputs
░г
╣%
 __inference__traced_save_1645004
file_prefixI
/read_disablecopyonread_cnn_model1_conv2d_kernel: =
/read_1_disablecopyonread_cnn_model1_conv2d_bias: K
=read_2_disablecopyonread_cnn_model1_batch_normalization_gamma: J
<read_3_disablecopyonread_cnn_model1_batch_normalization_beta: Q
Cread_4_disablecopyonread_cnn_model1_batch_normalization_moving_mean: U
Gread_5_disablecopyonread_cnn_model1_batch_normalization_moving_variance: M
3read_6_disablecopyonread_cnn_model1_conv2d_1_kernel: @?
1read_7_disablecopyonread_cnn_model1_conv2d_1_bias:@M
?read_8_disablecopyonread_cnn_model1_batch_normalization_1_gamma:@L
>read_9_disablecopyonread_cnn_model1_batch_normalization_1_beta:@T
Fread_10_disablecopyonread_cnn_model1_batch_normalization_1_moving_mean:@X
Jread_11_disablecopyonread_cnn_model1_batch_normalization_1_moving_variance:@O
4read_12_disablecopyonread_cnn_model1_conv2d_2_kernel:@АA
2read_13_disablecopyonread_cnn_model1_conv2d_2_bias:	АO
@read_14_disablecopyonread_cnn_model1_batch_normalization_2_gamma:	АN
?read_15_disablecopyonread_cnn_model1_batch_normalization_2_beta:	АU
Fread_16_disablecopyonread_cnn_model1_batch_normalization_2_moving_mean:	АY
Jread_17_disablecopyonread_cnn_model1_batch_normalization_2_moving_variance:	АO
4read_18_disablecopyonread_cnn_model1_conv2d_3_kernel:А@@
2read_19_disablecopyonread_cnn_model1_conv2d_3_bias:@N
@read_20_disablecopyonread_cnn_model1_batch_normalization_3_gamma:@M
?read_21_disablecopyonread_cnn_model1_batch_normalization_3_beta:@T
Fread_22_disablecopyonread_cnn_model1_batch_normalization_3_moving_mean:@X
Jread_23_disablecopyonread_cnn_model1_batch_normalization_3_moving_variance:@N
4read_24_disablecopyonread_cnn_model1_conv2d_4_kernel:@ @
2read_25_disablecopyonread_cnn_model1_conv2d_4_bias: N
@read_26_disablecopyonread_cnn_model1_batch_normalization_4_gamma: M
?read_27_disablecopyonread_cnn_model1_batch_normalization_4_beta: T
Fread_28_disablecopyonread_cnn_model1_batch_normalization_4_moving_mean: X
Jread_29_disablecopyonread_cnn_model1_batch_normalization_4_moving_variance: E
1read_30_disablecopyonread_cnn_model1_dense_kernel:
А	А>
/read_31_disablecopyonread_cnn_model1_dense_bias:	АG
3read_32_disablecopyonread_cnn_model1_dense_1_kernel:
АА@
1read_33_disablecopyonread_cnn_model1_dense_1_bias:	АF
3read_34_disablecopyonread_cnn_model1_dense_2_kernel:	А?
1read_35_disablecopyonread_cnn_model1_dense_2_bias:
savev2_const
identity_73ИвMergeV2CheckpointsвRead/DisableCopyOnReadвRead/ReadVariableOpвRead_1/DisableCopyOnReadвRead_1/ReadVariableOpвRead_10/DisableCopyOnReadвRead_10/ReadVariableOpвRead_11/DisableCopyOnReadвRead_11/ReadVariableOpвRead_12/DisableCopyOnReadвRead_12/ReadVariableOpвRead_13/DisableCopyOnReadвRead_13/ReadVariableOpвRead_14/DisableCopyOnReadвRead_14/ReadVariableOpвRead_15/DisableCopyOnReadвRead_15/ReadVariableOpвRead_16/DisableCopyOnReadвRead_16/ReadVariableOpвRead_17/DisableCopyOnReadвRead_17/ReadVariableOpвRead_18/DisableCopyOnReadвRead_18/ReadVariableOpвRead_19/DisableCopyOnReadвRead_19/ReadVariableOpвRead_2/DisableCopyOnReadвRead_2/ReadVariableOpвRead_20/DisableCopyOnReadвRead_20/ReadVariableOpвRead_21/DisableCopyOnReadвRead_21/ReadVariableOpвRead_22/DisableCopyOnReadвRead_22/ReadVariableOpвRead_23/DisableCopyOnReadвRead_23/ReadVariableOpвRead_24/DisableCopyOnReadвRead_24/ReadVariableOpвRead_25/DisableCopyOnReadвRead_25/ReadVariableOpвRead_26/DisableCopyOnReadвRead_26/ReadVariableOpвRead_27/DisableCopyOnReadвRead_27/ReadVariableOpвRead_28/DisableCopyOnReadвRead_28/ReadVariableOpвRead_29/DisableCopyOnReadвRead_29/ReadVariableOpвRead_3/DisableCopyOnReadвRead_3/ReadVariableOpвRead_30/DisableCopyOnReadвRead_30/ReadVariableOpвRead_31/DisableCopyOnReadвRead_31/ReadVariableOpвRead_32/DisableCopyOnReadвRead_32/ReadVariableOpвRead_33/DisableCopyOnReadвRead_33/ReadVariableOpвRead_34/DisableCopyOnReadвRead_34/ReadVariableOpвRead_35/DisableCopyOnReadвRead_35/ReadVariableOpвRead_4/DisableCopyOnReadвRead_4/ReadVariableOpвRead_5/DisableCopyOnReadвRead_5/ReadVariableOpвRead_6/DisableCopyOnReadвRead_6/ReadVariableOpвRead_7/DisableCopyOnReadвRead_7/ReadVariableOpвRead_8/DisableCopyOnReadвRead_8/ReadVariableOpвRead_9/DisableCopyOnReadвRead_9/ReadVariableOpw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Б
Read/DisableCopyOnReadDisableCopyOnRead/read_disablecopyonread_cnn_model1_conv2d_kernel"/device:CPU:0*
_output_shapes
 │
Read/ReadVariableOpReadVariableOp/read_disablecopyonread_cnn_model1_conv2d_kernel^Read/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: *
dtype0q
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: i

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*&
_output_shapes
: Г
Read_1/DisableCopyOnReadDisableCopyOnRead/read_1_disablecopyonread_cnn_model1_conv2d_bias"/device:CPU:0*
_output_shapes
 л
Read_1/ReadVariableOpReadVariableOp/read_1_disablecopyonread_cnn_model1_conv2d_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: С
Read_2/DisableCopyOnReadDisableCopyOnRead=read_2_disablecopyonread_cnn_model1_batch_normalization_gamma"/device:CPU:0*
_output_shapes
 ╣
Read_2/ReadVariableOpReadVariableOp=read_2_disablecopyonread_cnn_model1_batch_normalization_gamma^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
: Р
Read_3/DisableCopyOnReadDisableCopyOnRead<read_3_disablecopyonread_cnn_model1_batch_normalization_beta"/device:CPU:0*
_output_shapes
 ╕
Read_3/ReadVariableOpReadVariableOp<read_3_disablecopyonread_cnn_model1_batch_normalization_beta^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
: Ч
Read_4/DisableCopyOnReadDisableCopyOnReadCread_4_disablecopyonread_cnn_model1_batch_normalization_moving_mean"/device:CPU:0*
_output_shapes
 ┐
Read_4/ReadVariableOpReadVariableOpCread_4_disablecopyonread_cnn_model1_batch_normalization_moving_mean^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: Ы
Read_5/DisableCopyOnReadDisableCopyOnReadGread_5_disablecopyonread_cnn_model1_batch_normalization_moving_variance"/device:CPU:0*
_output_shapes
 ├
Read_5/ReadVariableOpReadVariableOpGread_5_disablecopyonread_cnn_model1_batch_normalization_moving_variance^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0j
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
: З
Read_6/DisableCopyOnReadDisableCopyOnRead3read_6_disablecopyonread_cnn_model1_conv2d_1_kernel"/device:CPU:0*
_output_shapes
 ╗
Read_6/ReadVariableOpReadVariableOp3read_6_disablecopyonread_cnn_model1_conv2d_1_kernel^Read_6/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
: @*
dtype0v
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
: @m
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*&
_output_shapes
: @Е
Read_7/DisableCopyOnReadDisableCopyOnRead1read_7_disablecopyonread_cnn_model1_conv2d_1_bias"/device:CPU:0*
_output_shapes
 н
Read_7/ReadVariableOpReadVariableOp1read_7_disablecopyonread_cnn_model1_conv2d_1_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes
:@У
Read_8/DisableCopyOnReadDisableCopyOnRead?read_8_disablecopyonread_cnn_model1_batch_normalization_1_gamma"/device:CPU:0*
_output_shapes
 ╗
Read_8/ReadVariableOpReadVariableOp?read_8_disablecopyonread_cnn_model1_batch_normalization_1_gamma^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:@Т
Read_9/DisableCopyOnReadDisableCopyOnRead>read_9_disablecopyonread_cnn_model1_batch_normalization_1_beta"/device:CPU:0*
_output_shapes
 ║
Read_9/ReadVariableOpReadVariableOp>read_9_disablecopyonread_cnn_model1_batch_normalization_1_beta^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0j
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ы
Read_10/DisableCopyOnReadDisableCopyOnReadFread_10_disablecopyonread_cnn_model1_batch_normalization_1_moving_mean"/device:CPU:0*
_output_shapes
 ─
Read_10/ReadVariableOpReadVariableOpFread_10_disablecopyonread_cnn_model1_batch_normalization_1_moving_mean^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:@Я
Read_11/DisableCopyOnReadDisableCopyOnReadJread_11_disablecopyonread_cnn_model1_batch_normalization_1_moving_variance"/device:CPU:0*
_output_shapes
 ╚
Read_11/ReadVariableOpReadVariableOpJread_11_disablecopyonread_cnn_model1_batch_normalization_1_moving_variance^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:@Й
Read_12/DisableCopyOnReadDisableCopyOnRead4read_12_disablecopyonread_cnn_model1_conv2d_2_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_12/ReadVariableOpReadVariableOp4read_12_disablecopyonread_cnn_model1_conv2d_2_kernel^Read_12/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:@А*
dtype0x
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:@Аn
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*'
_output_shapes
:@АЗ
Read_13/DisableCopyOnReadDisableCopyOnRead2read_13_disablecopyonread_cnn_model1_conv2d_2_bias"/device:CPU:0*
_output_shapes
 ▒
Read_13/ReadVariableOpReadVariableOp2read_13_disablecopyonread_cnn_model1_conv2d_2_bias^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes	
:АХ
Read_14/DisableCopyOnReadDisableCopyOnRead@read_14_disablecopyonread_cnn_model1_batch_normalization_2_gamma"/device:CPU:0*
_output_shapes
 ┐
Read_14/ReadVariableOpReadVariableOp@read_14_disablecopyonread_cnn_model1_batch_normalization_2_gamma^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:АФ
Read_15/DisableCopyOnReadDisableCopyOnRead?read_15_disablecopyonread_cnn_model1_batch_normalization_2_beta"/device:CPU:0*
_output_shapes
 ╛
Read_15/ReadVariableOpReadVariableOp?read_15_disablecopyonread_cnn_model1_batch_normalization_2_beta^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЫ
Read_16/DisableCopyOnReadDisableCopyOnReadFread_16_disablecopyonread_cnn_model1_batch_normalization_2_moving_mean"/device:CPU:0*
_output_shapes
 ┼
Read_16/ReadVariableOpReadVariableOpFread_16_disablecopyonread_cnn_model1_batch_normalization_2_moving_mean^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЯ
Read_17/DisableCopyOnReadDisableCopyOnReadJread_17_disablecopyonread_cnn_model1_batch_normalization_2_moving_variance"/device:CPU:0*
_output_shapes
 ╔
Read_17/ReadVariableOpReadVariableOpJread_17_disablecopyonread_cnn_model1_batch_normalization_2_moving_variance^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЙ
Read_18/DisableCopyOnReadDisableCopyOnRead4read_18_disablecopyonread_cnn_model1_conv2d_3_kernel"/device:CPU:0*
_output_shapes
 ┐
Read_18/ReadVariableOpReadVariableOp4read_18_disablecopyonread_cnn_model1_conv2d_3_kernel^Read_18/DisableCopyOnRead"/device:CPU:0*'
_output_shapes
:А@*
dtype0x
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*'
_output_shapes
:А@n
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*'
_output_shapes
:А@З
Read_19/DisableCopyOnReadDisableCopyOnRead2read_19_disablecopyonread_cnn_model1_conv2d_3_bias"/device:CPU:0*
_output_shapes
 ░
Read_19/ReadVariableOpReadVariableOp2read_19_disablecopyonread_cnn_model1_conv2d_3_bias^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:@Х
Read_20/DisableCopyOnReadDisableCopyOnRead@read_20_disablecopyonread_cnn_model1_batch_normalization_3_gamma"/device:CPU:0*
_output_shapes
 ╛
Read_20/ReadVariableOpReadVariableOp@read_20_disablecopyonread_cnn_model1_batch_normalization_3_gamma^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ф
Read_21/DisableCopyOnReadDisableCopyOnRead?read_21_disablecopyonread_cnn_model1_batch_normalization_3_beta"/device:CPU:0*
_output_shapes
 ╜
Read_21/ReadVariableOpReadVariableOp?read_21_disablecopyonread_cnn_model1_batch_normalization_3_beta^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:@Ы
Read_22/DisableCopyOnReadDisableCopyOnReadFread_22_disablecopyonread_cnn_model1_batch_normalization_3_moving_mean"/device:CPU:0*
_output_shapes
 ─
Read_22/ReadVariableOpReadVariableOpFread_22_disablecopyonread_cnn_model1_batch_normalization_3_moving_mean^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:@Я
Read_23/DisableCopyOnReadDisableCopyOnReadJread_23_disablecopyonread_cnn_model1_batch_normalization_3_moving_variance"/device:CPU:0*
_output_shapes
 ╚
Read_23/ReadVariableOpReadVariableOpJread_23_disablecopyonread_cnn_model1_batch_normalization_3_moving_variance^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:@*
dtype0k
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:@a
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:@Й
Read_24/DisableCopyOnReadDisableCopyOnRead4read_24_disablecopyonread_cnn_model1_conv2d_4_kernel"/device:CPU:0*
_output_shapes
 ╛
Read_24/ReadVariableOpReadVariableOp4read_24_disablecopyonread_cnn_model1_conv2d_4_kernel^Read_24/DisableCopyOnRead"/device:CPU:0*&
_output_shapes
:@ *
dtype0w
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*&
_output_shapes
:@ m
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*&
_output_shapes
:@ З
Read_25/DisableCopyOnReadDisableCopyOnRead2read_25_disablecopyonread_cnn_model1_conv2d_4_bias"/device:CPU:0*
_output_shapes
 ░
Read_25/ReadVariableOpReadVariableOp2read_25_disablecopyonread_cnn_model1_conv2d_4_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
: Х
Read_26/DisableCopyOnReadDisableCopyOnRead@read_26_disablecopyonread_cnn_model1_batch_normalization_4_gamma"/device:CPU:0*
_output_shapes
 ╛
Read_26/ReadVariableOpReadVariableOp@read_26_disablecopyonread_cnn_model1_batch_normalization_4_gamma^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: Ф
Read_27/DisableCopyOnReadDisableCopyOnRead?read_27_disablecopyonread_cnn_model1_batch_normalization_4_beta"/device:CPU:0*
_output_shapes
 ╜
Read_27/ReadVariableOpReadVariableOp?read_27_disablecopyonread_cnn_model1_batch_normalization_4_beta^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: Ы
Read_28/DisableCopyOnReadDisableCopyOnReadFread_28_disablecopyonread_cnn_model1_batch_normalization_4_moving_mean"/device:CPU:0*
_output_shapes
 ─
Read_28/ReadVariableOpReadVariableOpFread_28_disablecopyonread_cnn_model1_batch_normalization_4_moving_mean^Read_28/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_56IdentityRead_28/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_57IdentityIdentity_56:output:0"/device:CPU:0*
T0*
_output_shapes
: Я
Read_29/DisableCopyOnReadDisableCopyOnReadJread_29_disablecopyonread_cnn_model1_batch_normalization_4_moving_variance"/device:CPU:0*
_output_shapes
 ╚
Read_29/ReadVariableOpReadVariableOpJread_29_disablecopyonread_cnn_model1_batch_normalization_4_moving_variance^Read_29/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_58IdentityRead_29/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_59IdentityIdentity_58:output:0"/device:CPU:0*
T0*
_output_shapes
: Ж
Read_30/DisableCopyOnReadDisableCopyOnRead1read_30_disablecopyonread_cnn_model1_dense_kernel"/device:CPU:0*
_output_shapes
 ╡
Read_30/ReadVariableOpReadVariableOp1read_30_disablecopyonread_cnn_model1_dense_kernel^Read_30/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
А	А*
dtype0q
Identity_60IdentityRead_30/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
А	Аg
Identity_61IdentityIdentity_60:output:0"/device:CPU:0*
T0* 
_output_shapes
:
А	АД
Read_31/DisableCopyOnReadDisableCopyOnRead/read_31_disablecopyonread_cnn_model1_dense_bias"/device:CPU:0*
_output_shapes
 о
Read_31/ReadVariableOpReadVariableOp/read_31_disablecopyonread_cnn_model1_dense_bias^Read_31/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_62IdentityRead_31/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_63IdentityIdentity_62:output:0"/device:CPU:0*
T0*
_output_shapes	
:АИ
Read_32/DisableCopyOnReadDisableCopyOnRead3read_32_disablecopyonread_cnn_model1_dense_1_kernel"/device:CPU:0*
_output_shapes
 ╖
Read_32/ReadVariableOpReadVariableOp3read_32_disablecopyonread_cnn_model1_dense_1_kernel^Read_32/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
АА*
dtype0q
Identity_64IdentityRead_32/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
ААg
Identity_65IdentityIdentity_64:output:0"/device:CPU:0*
T0* 
_output_shapes
:
ААЖ
Read_33/DisableCopyOnReadDisableCopyOnRead1read_33_disablecopyonread_cnn_model1_dense_1_bias"/device:CPU:0*
_output_shapes
 ░
Read_33/ReadVariableOpReadVariableOp1read_33_disablecopyonread_cnn_model1_dense_1_bias^Read_33/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_66IdentityRead_33/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_67IdentityIdentity_66:output:0"/device:CPU:0*
T0*
_output_shapes	
:АИ
Read_34/DisableCopyOnReadDisableCopyOnRead3read_34_disablecopyonread_cnn_model1_dense_2_kernel"/device:CPU:0*
_output_shapes
 ╢
Read_34/ReadVariableOpReadVariableOp3read_34_disablecopyonread_cnn_model1_dense_2_kernel^Read_34/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	А*
dtype0p
Identity_68IdentityRead_34/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	Аf
Identity_69IdentityIdentity_68:output:0"/device:CPU:0*
T0*
_output_shapes
:	АЖ
Read_35/DisableCopyOnReadDisableCopyOnRead1read_35_disablecopyonread_cnn_model1_dense_2_bias"/device:CPU:0*
_output_shapes
 п
Read_35/ReadVariableOpReadVariableOp1read_35_disablecopyonread_cnn_model1_dense_2_bias^Read_35/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_70IdentityRead_35/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_71IdentityIdentity_70:output:0"/device:CPU:0*
T0*
_output_shapes
:─
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*э
valueуBр%B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB'variables/17/.ATTRIBUTES/VARIABLE_VALUEB'variables/18/.ATTRIBUTES/VARIABLE_VALUEB'variables/19/.ATTRIBUTES/VARIABLE_VALUEB'variables/20/.ATTRIBUTES/VARIABLE_VALUEB'variables/21/.ATTRIBUTES/VARIABLE_VALUEB'variables/22/.ATTRIBUTES/VARIABLE_VALUEB'variables/23/.ATTRIBUTES/VARIABLE_VALUEB'variables/24/.ATTRIBUTES/VARIABLE_VALUEB'variables/25/.ATTRIBUTES/VARIABLE_VALUEB'variables/26/.ATTRIBUTES/VARIABLE_VALUEB'variables/27/.ATTRIBUTES/VARIABLE_VALUEB'variables/28/.ATTRIBUTES/VARIABLE_VALUEB'variables/29/.ATTRIBUTES/VARIABLE_VALUEB'variables/30/.ATTRIBUTES/VARIABLE_VALUEB'variables/31/.ATTRIBUTES/VARIABLE_VALUEB'variables/32/.ATTRIBUTES/VARIABLE_VALUEB'variables/33/.ATTRIBUTES/VARIABLE_VALUEB'variables/34/.ATTRIBUTES/VARIABLE_VALUEB'variables/35/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH╖
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B П
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0Identity_57:output:0Identity_59:output:0Identity_61:output:0Identity_63:output:0Identity_65:output:0Identity_67:output:0Identity_69:output:0Identity_71:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *3
dtypes)
'2%Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:│
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_72Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_73IdentityIdentity_72:output:0^NoOp*
T0*
_output_shapes
: У
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_28/DisableCopyOnRead^Read_28/ReadVariableOp^Read_29/DisableCopyOnRead^Read_29/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_30/DisableCopyOnRead^Read_30/ReadVariableOp^Read_31/DisableCopyOnRead^Read_31/ReadVariableOp^Read_32/DisableCopyOnRead^Read_32/ReadVariableOp^Read_33/DisableCopyOnRead^Read_33/ReadVariableOp^Read_34/DisableCopyOnRead^Read_34/ReadVariableOp^Read_35/DisableCopyOnRead^Read_35/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_73Identity_73:output:0*(
_construction_contextkEagerRuntime*_
_input_shapesN
L: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp26
Read_28/DisableCopyOnReadRead_28/DisableCopyOnRead20
Read_28/ReadVariableOpRead_28/ReadVariableOp26
Read_29/DisableCopyOnReadRead_29/DisableCopyOnRead20
Read_29/ReadVariableOpRead_29/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp26
Read_30/DisableCopyOnReadRead_30/DisableCopyOnRead20
Read_30/ReadVariableOpRead_30/ReadVariableOp26
Read_31/DisableCopyOnReadRead_31/DisableCopyOnRead20
Read_31/ReadVariableOpRead_31/ReadVariableOp26
Read_32/DisableCopyOnReadRead_32/DisableCopyOnRead20
Read_32/ReadVariableOpRead_32/ReadVariableOp26
Read_33/DisableCopyOnReadRead_33/DisableCopyOnRead20
Read_33/ReadVariableOpRead_33/ReadVariableOp26
Read_34/DisableCopyOnReadRead_34/DisableCopyOnRead20
Read_34/ReadVariableOpRead_34/ReadVariableOp26
Read_35/DisableCopyOnReadRead_35/DisableCopyOnRead20
Read_35/ReadVariableOpRead_35/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:=%9

_output_shapes
: 

_user_specified_nameConst:7$3
1
_user_specified_namecnn_model1/dense_2/bias:9#5
3
_user_specified_namecnn_model1/dense_2/kernel:7"3
1
_user_specified_namecnn_model1/dense_1/bias:9!5
3
_user_specified_namecnn_model1/dense_1/kernel:5 1
/
_user_specified_namecnn_model1/dense/bias:73
1
_user_specified_namecnn_model1/dense/kernel:PL
J
_user_specified_name20cnn_model1/batch_normalization_4/moving_variance:LH
F
_user_specified_name.,cnn_model1/batch_normalization_4/moving_mean:EA
?
_user_specified_name'%cnn_model1/batch_normalization_4/beta:FB
@
_user_specified_name(&cnn_model1/batch_normalization_4/gamma:84
2
_user_specified_namecnn_model1/conv2d_4/bias::6
4
_user_specified_namecnn_model1/conv2d_4/kernel:PL
J
_user_specified_name20cnn_model1/batch_normalization_3/moving_variance:LH
F
_user_specified_name.,cnn_model1/batch_normalization_3/moving_mean:EA
?
_user_specified_name'%cnn_model1/batch_normalization_3/beta:FB
@
_user_specified_name(&cnn_model1/batch_normalization_3/gamma:84
2
_user_specified_namecnn_model1/conv2d_3/bias::6
4
_user_specified_namecnn_model1/conv2d_3/kernel:PL
J
_user_specified_name20cnn_model1/batch_normalization_2/moving_variance:LH
F
_user_specified_name.,cnn_model1/batch_normalization_2/moving_mean:EA
?
_user_specified_name'%cnn_model1/batch_normalization_2/beta:FB
@
_user_specified_name(&cnn_model1/batch_normalization_2/gamma:84
2
_user_specified_namecnn_model1/conv2d_2/bias::6
4
_user_specified_namecnn_model1/conv2d_2/kernel:PL
J
_user_specified_name20cnn_model1/batch_normalization_1/moving_variance:LH
F
_user_specified_name.,cnn_model1/batch_normalization_1/moving_mean:E
A
?
_user_specified_name'%cnn_model1/batch_normalization_1/beta:F	B
@
_user_specified_name(&cnn_model1/batch_normalization_1/gamma:84
2
_user_specified_namecnn_model1/conv2d_1/bias::6
4
_user_specified_namecnn_model1/conv2d_1/kernel:NJ
H
_user_specified_name0.cnn_model1/batch_normalization/moving_variance:JF
D
_user_specified_name,*cnn_model1/batch_normalization/moving_mean:C?
=
_user_specified_name%#cnn_model1/batch_normalization/beta:D@
>
_user_specified_name&$cnn_model1/batch_normalization/gamma:62
0
_user_specified_namecnn_model1/conv2d/bias:84
2
_user_specified_namecnn_model1/conv2d/kernel:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
Й
┐
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1643268

inputs%
readvariableop_resource: '
readvariableop_1_resource: 6
(fusedbatchnormv3_readvariableop_resource: 8
*fusedbatchnormv3_readvariableop_1_resource: 
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1b
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype0f
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype0Д
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype0И
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype0╓
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<╞
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp*
_output_shapes
 *
dtype0*
validate_shape(╨
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1*
_output_shapes
 *
dtype0*
validate_shape(}
IdentityIdentityFusedBatchNormV3:y:0^NoOp*
T0*A
_output_shapes/
-:+                            ░
NoOpNoOp^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:+                            : : : : 2$
AssignNewValue_1AssignNewValue_12 
AssignNewValueAssignNewValue2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12 
ReadVariableOpReadVariableOp:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*╡
serving_defaultб
E
input_1:
serving_default_input_1:0         ╚╚<
output_10
StatefulPartitionedCall:0         tensorflow/serving/predict:ца
■
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	conv1
	bn1
	
conv2
bn2
	conv3
bn3
	conv4
bn4
	conv5
bn5
pool
flatten
	drop1
fc1
	drop2
fc2
fc3

signatures"
_tf_keras_model
╢
0
1
2
3
4
5
 6
!7
"8
#9
$10
%11
&12
'13
(14
)15
*16
+17
,18
-19
.20
/21
022
123
224
325
426
527
628
729
830
931
:32
;33
<34
=35"
trackable_list_wrapper
ц
0
1
2
3
 4
!5
"6
#7
&8
'9
(10
)11
,12
-13
.14
/15
216
317
418
519
820
921
:22
;23
<24
=25"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
>non_trainable_variables

?layers
@metrics
Alayer_regularization_losses
Blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┐
Ctrace_0
Dtrace_12И
,__inference_cnn_model1_layer_call_fn_1643969
,__inference_cnn_model1_layer_call_fn_1644046й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zCtrace_0zDtrace_1
ї
Etrace_0
Ftrace_12╛
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643785
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643892й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zEtrace_0zFtrace_1
═B╩
"__inference__wrapped_model_1643250input_1"Ш
С▓Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
▌
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
K__call__
*L&call_and_return_all_conditional_losses

kernel
bias
 M_jit_compiled_convolution_op"
_tf_keras_layer
ъ
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses
Taxis
	gamma
beta
moving_mean
moving_variance"
_tf_keras_layer
▌
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

 kernel
!bias
 [_jit_compiled_convolution_op"
_tf_keras_layer
ъ
\	variables
]trainable_variables
^regularization_losses
_	keras_api
`__call__
*a&call_and_return_all_conditional_losses
baxis
	"gamma
#beta
$moving_mean
%moving_variance"
_tf_keras_layer
▌
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses

&kernel
'bias
 i_jit_compiled_convolution_op"
_tf_keras_layer
ъ
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
n__call__
*o&call_and_return_all_conditional_losses
paxis
	(gamma
)beta
*moving_mean
+moving_variance"
_tf_keras_layer
▌
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses

,kernel
-bias
 w_jit_compiled_convolution_op"
_tf_keras_layer
ъ
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses
~axis
	.gamma
/beta
0moving_mean
1moving_variance"
_tf_keras_layer
у
	variables
Аtrainable_variables
Бregularization_losses
В	keras_api
Г__call__
+Д&call_and_return_all_conditional_losses

2kernel
3bias
!Е_jit_compiled_convolution_op"
_tf_keras_layer
ё
Ж	variables
Зtrainable_variables
Иregularization_losses
Й	keras_api
К__call__
+Л&call_and_return_all_conditional_losses
	Мaxis
	4gamma
5beta
6moving_mean
7moving_variance"
_tf_keras_layer
л
Н	variables
Оtrainable_variables
Пregularization_losses
Р	keras_api
С__call__
+Т&call_and_return_all_conditional_losses"
_tf_keras_layer
л
У	variables
Фtrainable_variables
Хregularization_losses
Ц	keras_api
Ч__call__
+Ш&call_and_return_all_conditional_losses"
_tf_keras_layer
├
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Ь	keras_api
Э__call__
+Ю&call_and_return_all_conditional_losses
Я_random_generator"
_tf_keras_layer
┴
а	variables
бtrainable_variables
вregularization_losses
г	keras_api
д__call__
+е&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
├
ж	variables
зtrainable_variables
иregularization_losses
й	keras_api
к__call__
+л&call_and_return_all_conditional_losses
м_random_generator"
_tf_keras_layer
┴
н	variables
оtrainable_variables
пregularization_losses
░	keras_api
▒__call__
+▓&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
┴
│	variables
┤trainable_variables
╡regularization_losses
╢	keras_api
╖__call__
+╕&call_and_return_all_conditional_losses

<kernel
=bias"
_tf_keras_layer
-
╣serving_default"
signature_map
2:0 2cnn_model1/conv2d/kernel
$:" 2cnn_model1/conv2d/bias
2:0 2$cnn_model1/batch_normalization/gamma
1:/ 2#cnn_model1/batch_normalization/beta
::8  (2*cnn_model1/batch_normalization/moving_mean
>:<  (2.cnn_model1/batch_normalization/moving_variance
4:2 @2cnn_model1/conv2d_1/kernel
&:$@2cnn_model1/conv2d_1/bias
4:2@2&cnn_model1/batch_normalization_1/gamma
3:1@2%cnn_model1/batch_normalization_1/beta
<::@ (2,cnn_model1/batch_normalization_1/moving_mean
@:>@ (20cnn_model1/batch_normalization_1/moving_variance
5:3@А2cnn_model1/conv2d_2/kernel
':%А2cnn_model1/conv2d_2/bias
5:3А2&cnn_model1/batch_normalization_2/gamma
4:2А2%cnn_model1/batch_normalization_2/beta
=:;А (2,cnn_model1/batch_normalization_2/moving_mean
A:?А (20cnn_model1/batch_normalization_2/moving_variance
5:3А@2cnn_model1/conv2d_3/kernel
&:$@2cnn_model1/conv2d_3/bias
4:2@2&cnn_model1/batch_normalization_3/gamma
3:1@2%cnn_model1/batch_normalization_3/beta
<::@ (2,cnn_model1/batch_normalization_3/moving_mean
@:>@ (20cnn_model1/batch_normalization_3/moving_variance
4:2@ 2cnn_model1/conv2d_4/kernel
&:$ 2cnn_model1/conv2d_4/bias
4:2 2&cnn_model1/batch_normalization_4/gamma
3:1 2%cnn_model1/batch_normalization_4/beta
<::  (2,cnn_model1/batch_normalization_4/moving_mean
@:>  (20cnn_model1/batch_normalization_4/moving_variance
+:)
А	А2cnn_model1/dense/kernel
$:"А2cnn_model1/dense/bias
-:+
АА2cnn_model1/dense_1/kernel
&:$А2cnn_model1/dense_1/bias
,:*	А2cnn_model1/dense_2/kernel
%:#2cnn_model1/dense_2/bias
f
0
1
$2
%3
*4
+5
06
17
68
79"
trackable_list_wrapper
Ю
0
	1

2
3
4
5
6
7
8
9
10
11
12
13
14
15
16"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
уBр
,__inference_cnn_model1_layer_call_fn_1643969input_1"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
уBр
,__inference_cnn_model1_layer_call_fn_1644046input_1"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643785input_1"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
■B√
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643892input_1"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
║non_trainable_variables
╗layers
╝metrics
 ╜layer_regularization_losses
╛layer_metrics
G	variables
Htrainable_variables
Iregularization_losses
K__call__
*L&call_and_return_all_conditional_losses
&L"call_and_return_conditional_losses"
_generic_user_object
ф
┐trace_02┼
(__inference_conv2d_layer_call_fn_1644230Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
 
└trace_02р
C__inference_conv2d_layer_call_and_return_conditional_losses_1644241Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z└trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
0
1
2
3"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┴non_trainable_variables
┬layers
├metrics
 ─layer_regularization_losses
┼layer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
с
╞trace_0
╟trace_12ж
5__inference_batch_normalization_layer_call_fn_1644254
5__inference_batch_normalization_layer_call_fn_1644267╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0z╟trace_1
Ч
╚trace_0
╔trace_12▄
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1644285
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1644303╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╚trace_0z╔trace_1
 "
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
.
 0
!1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╩non_trainable_variables
╦layers
╠metrics
 ═layer_regularization_losses
╬layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
ц
╧trace_02╟
*__inference_conv2d_1_layer_call_fn_1644312Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╧trace_0
Б
╨trace_02т
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1644323Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╨trace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
"0
#1
$2
%3"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╤non_trainable_variables
╥layers
╙metrics
 ╘layer_regularization_losses
╒layer_metrics
\	variables
]trainable_variables
^regularization_losses
`__call__
*a&call_and_return_all_conditional_losses
&a"call_and_return_conditional_losses"
_generic_user_object
х
╓trace_0
╫trace_12к
7__inference_batch_normalization_1_layer_call_fn_1644336
7__inference_batch_normalization_1_layer_call_fn_1644349╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╓trace_0z╫trace_1
Ы
╪trace_0
┘trace_12р
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1644367
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1644385╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╪trace_0z┘trace_1
 "
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
.
&0
'1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
┌non_trainable_variables
█layers
▄metrics
 ▌layer_regularization_losses
▐layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
ц
▀trace_02╟
*__inference_conv2d_2_layer_call_fn_1644394Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z▀trace_0
Б
рtrace_02т
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1644405Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zрtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
(0
)1
*2
+3"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
сnon_trainable_variables
тlayers
уmetrics
 фlayer_regularization_losses
хlayer_metrics
j	variables
ktrainable_variables
lregularization_losses
n__call__
*o&call_and_return_all_conditional_losses
&o"call_and_return_conditional_losses"
_generic_user_object
х
цtrace_0
чtrace_12к
7__inference_batch_normalization_2_layer_call_fn_1644418
7__inference_batch_normalization_2_layer_call_fn_1644431╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zцtrace_0zчtrace_1
Ы
шtrace_0
щtrace_12р
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1644449
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1644467╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zшtrace_0zщtrace_1
 "
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
.
,0
-1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ъnon_trainable_variables
ыlayers
ьmetrics
 эlayer_regularization_losses
юlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
ц
яtrace_02╟
*__inference_conv2d_3_layer_call_fn_1644476Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zяtrace_0
Б
Ёtrace_02т
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1644487Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЁtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
.0
/1
02
13"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
ёnon_trainable_variables
Єlayers
єmetrics
 Їlayer_regularization_losses
їlayer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
х
Ўtrace_0
ўtrace_12к
7__inference_batch_normalization_3_layer_call_fn_1644500
7__inference_batch_normalization_3_layer_call_fn_1644513╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЎtrace_0zўtrace_1
Ы
°trace_0
∙trace_12р
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1644531
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1644549╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z°trace_0z∙trace_1
 "
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
 "
trackable_list_wrapper
╖
·non_trainable_variables
√layers
№metrics
 ¤layer_regularization_losses
■layer_metrics
	variables
Аtrainable_variables
Бregularization_losses
Г__call__
+Д&call_and_return_all_conditional_losses
'Д"call_and_return_conditional_losses"
_generic_user_object
ц
 trace_02╟
*__inference_conv2d_4_layer_call_fn_1644558Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z trace_0
Б
Аtrace_02т
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1644569Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zАtrace_0
к2зд
Ы▓Ч
FullArgSpec
argsЪ
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
<
40
51
62
73"
trackable_list_wrapper
.
40
51"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Бnon_trainable_variables
Вlayers
Гmetrics
 Дlayer_regularization_losses
Еlayer_metrics
Ж	variables
Зtrainable_variables
Иregularization_losses
К__call__
+Л&call_and_return_all_conditional_losses
'Л"call_and_return_conditional_losses"
_generic_user_object
х
Жtrace_0
Зtrace_12к
7__inference_batch_normalization_4_layer_call_fn_1644582
7__inference_batch_normalization_4_layer_call_fn_1644595╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЖtrace_0zЗtrace_1
Ы
Иtrace_0
Йtrace_12р
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1644613
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1644631╡
о▓к
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsв
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zИtrace_0zЙtrace_1
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Кnon_trainable_variables
Лlayers
Мmetrics
 Нlayer_regularization_losses
Оlayer_metrics
Н	variables
Оtrainable_variables
Пregularization_losses
С__call__
+Т&call_and_return_all_conditional_losses
'Т"call_and_return_conditional_losses"
_generic_user_object
ы
Пtrace_02╠
/__inference_max_pooling2d_layer_call_fn_1644636Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zПtrace_0
Ж
Рtrace_02ч
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1644641Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zРtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Сnon_trainable_variables
Тlayers
Уmetrics
 Фlayer_regularization_losses
Хlayer_metrics
У	variables
Фtrainable_variables
Хregularization_losses
Ч__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
х
Цtrace_02╞
)__inference_flatten_layer_call_fn_1644646Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЦtrace_0
А
Чtrace_02с
D__inference_flatten_layer_call_and_return_conditional_losses_1644652Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЧtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
Шnon_trainable_variables
Щlayers
Ъmetrics
 Ыlayer_regularization_losses
Ьlayer_metrics
Щ	variables
Ъtrainable_variables
Ыregularization_losses
Э__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
╜
Эtrace_0
Юtrace_12В
)__inference_dropout_layer_call_fn_1644657
)__inference_dropout_layer_call_fn_1644662й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЭtrace_0zЮtrace_1
є
Яtrace_0
аtrace_12╕
D__inference_dropout_layer_call_and_return_conditional_losses_1644674
D__inference_dropout_layer_call_and_return_conditional_losses_1644679й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЯtrace_0zаtrace_1
"
_generic_user_object
.
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
бnon_trainable_variables
вlayers
гmetrics
 дlayer_regularization_losses
еlayer_metrics
а	variables
бtrainable_variables
вregularization_losses
д__call__
+е&call_and_return_all_conditional_losses
'е"call_and_return_conditional_losses"
_generic_user_object
у
жtrace_02─
'__inference_dense_layer_call_fn_1644688Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zжtrace_0
■
зtrace_02▀
B__inference_dense_layer_call_and_return_conditional_losses_1644699Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zзtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╕
иnon_trainable_variables
йlayers
кmetrics
 лlayer_regularization_losses
мlayer_metrics
ж	variables
зtrainable_variables
иregularization_losses
к__call__
+л&call_and_return_all_conditional_losses
'л"call_and_return_conditional_losses"
_generic_user_object
┴
нtrace_0
оtrace_12Ж
+__inference_dropout_1_layer_call_fn_1644704
+__inference_dropout_1_layer_call_fn_1644709й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zнtrace_0zоtrace_1
ў
пtrace_0
░trace_12╝
F__inference_dropout_1_layer_call_and_return_conditional_losses_1644721
F__inference_dropout_1_layer_call_and_return_conditional_losses_1644726й
в▓Ю
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaultsв
p 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zпtrace_0z░trace_1
"
_generic_user_object
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
▒non_trainable_variables
▓layers
│metrics
 ┤layer_regularization_losses
╡layer_metrics
н	variables
оtrainable_variables
пregularization_losses
▒__call__
+▓&call_and_return_all_conditional_losses
'▓"call_and_return_conditional_losses"
_generic_user_object
х
╢trace_02╞
)__inference_dense_1_layer_call_fn_1644735Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╢trace_0
А
╖trace_02с
D__inference_dense_1_layer_call_and_return_conditional_losses_1644746Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╖trace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
╕
╕non_trainable_variables
╣layers
║metrics
 ╗layer_regularization_losses
╝layer_metrics
│	variables
┤trainable_variables
╡regularization_losses
╖__call__
+╕&call_and_return_all_conditional_losses
'╕"call_and_return_conditional_losses"
_generic_user_object
х
╜trace_02╞
)__inference_dense_2_layer_call_fn_1644755Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╜trace_0
А
╛trace_02с
D__inference_dense_2_layer_call_and_return_conditional_losses_1644766Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
╤B╬
%__inference_signature_wrapper_1644221input_1"Щ
Т▓О
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ
	jinput_1
kwonlydefaults
 
annotationsк *
 
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
╥B╧
(__inference_conv2d_layer_call_fn_1644230inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
эBъ
C__inference_conv2d_layer_call_and_return_conditional_losses_1644241inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
єBЁ
5__inference_batch_normalization_layer_call_fn_1644254inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
єBЁ
5__inference_batch_normalization_layer_call_fn_1644267inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1644285inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ОBЛ
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1644303inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_conv2d_1_layer_call_fn_1644312inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1644323inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
$0
%1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
їBЄ
7__inference_batch_normalization_1_layer_call_fn_1644336inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
7__inference_batch_normalization_1_layer_call_fn_1644349inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1644367inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1644385inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_conv2d_2_layer_call_fn_1644394inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1644405inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
*0
+1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
їBЄ
7__inference_batch_normalization_2_layer_call_fn_1644418inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
7__inference_batch_normalization_2_layer_call_fn_1644431inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1644449inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1644467inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_conv2d_3_layer_call_fn_1644476inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1644487inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
їBЄ
7__inference_batch_normalization_3_layer_call_fn_1644500inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
7__inference_batch_normalization_3_layer_call_fn_1644513inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1644531inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1644549inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╘B╤
*__inference_conv2d_4_layer_call_fn_1644558inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
яBь
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1644569inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
.
60
71"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
їBЄ
7__inference_batch_normalization_4_layer_call_fn_1644582inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
їBЄ
7__inference_batch_normalization_4_layer_call_fn_1644595inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1644613inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
РBН
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1644631inputs"м
е▓б
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
┘B╓
/__inference_max_pooling2d_layer_call_fn_1644636inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЇBё
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1644641inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_flatten_layer_call_fn_1644646inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_flatten_layer_call_and_return_conditional_losses_1644652inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
▀B▄
)__inference_dropout_layer_call_fn_1644657inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
▀B▄
)__inference_dropout_layer_call_fn_1644662inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
D__inference_dropout_layer_call_and_return_conditional_losses_1644674inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
D__inference_dropout_layer_call_and_return_conditional_losses_1644679inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╤B╬
'__inference_dense_layer_call_fn_1644688inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ьBщ
B__inference_dense_layer_call_and_return_conditional_losses_1644699inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
сB▐
+__inference_dropout_1_layer_call_fn_1644704inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
сB▐
+__inference_dropout_1_layer_call_fn_1644709inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
F__inference_dropout_1_layer_call_and_return_conditional_losses_1644721inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№B∙
F__inference_dropout_1_layer_call_and_return_conditional_losses_1644726inputs"д
Э▓Щ
FullArgSpec!
argsЪ
jinputs

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_dense_1_layer_call_fn_1644735inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_dense_1_layer_call_and_return_conditional_losses_1644746inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
╙B╨
)__inference_dense_2_layer_call_fn_1644755inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
юBы
D__inference_dense_2_layer_call_and_return_conditional_losses_1644766inputs"Ш
С▓Н
FullArgSpec
argsЪ

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 ╛
"__inference__wrapped_model_1643250Ч$ !"#$%&'()*+,-./0123456789:;<=:в7
0в-
+К(
input_1         ╚╚
к "3к0
.
output_1"К
output_1         °
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1644367б"#$%QвN
GвD
:К7
inputs+                           @
p

 
к "FвC
<К9
tensor_0+                           @
Ъ °
R__inference_batch_normalization_1_layer_call_and_return_conditional_losses_1644385б"#$%QвN
GвD
:К7
inputs+                           @
p 

 
к "FвC
<К9
tensor_0+                           @
Ъ ╥
7__inference_batch_normalization_1_layer_call_fn_1644336Ц"#$%QвN
GвD
:К7
inputs+                           @
p

 
к ";К8
unknown+                           @╥
7__inference_batch_normalization_1_layer_call_fn_1644349Ц"#$%QвN
GвD
:К7
inputs+                           @
p 

 
к ";К8
unknown+                           @·
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1644449г()*+RвO
HвE
;К8
inputs,                           А
p

 
к "GвD
=К:
tensor_0,                           А
Ъ ·
R__inference_batch_normalization_2_layer_call_and_return_conditional_losses_1644467г()*+RвO
HвE
;К8
inputs,                           А
p 

 
к "GвD
=К:
tensor_0,                           А
Ъ ╘
7__inference_batch_normalization_2_layer_call_fn_1644418Ш()*+RвO
HвE
;К8
inputs,                           А
p

 
к "<К9
unknown,                           А╘
7__inference_batch_normalization_2_layer_call_fn_1644431Ш()*+RвO
HвE
;К8
inputs,                           А
p 

 
к "<К9
unknown,                           А°
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1644531б./01QвN
GвD
:К7
inputs+                           @
p

 
к "FвC
<К9
tensor_0+                           @
Ъ °
R__inference_batch_normalization_3_layer_call_and_return_conditional_losses_1644549б./01QвN
GвD
:К7
inputs+                           @
p 

 
к "FвC
<К9
tensor_0+                           @
Ъ ╥
7__inference_batch_normalization_3_layer_call_fn_1644500Ц./01QвN
GвD
:К7
inputs+                           @
p

 
к ";К8
unknown+                           @╥
7__inference_batch_normalization_3_layer_call_fn_1644513Ц./01QвN
GвD
:К7
inputs+                           @
p 

 
к ";К8
unknown+                           @°
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1644613б4567QвN
GвD
:К7
inputs+                            
p

 
к "FвC
<К9
tensor_0+                            
Ъ °
R__inference_batch_normalization_4_layer_call_and_return_conditional_losses_1644631б4567QвN
GвD
:К7
inputs+                            
p 

 
к "FвC
<К9
tensor_0+                            
Ъ ╥
7__inference_batch_normalization_4_layer_call_fn_1644582Ц4567QвN
GвD
:К7
inputs+                            
p

 
к ";К8
unknown+                            ╥
7__inference_batch_normalization_4_layer_call_fn_1644595Ц4567QвN
GвD
:К7
inputs+                            
p 

 
к ";К8
unknown+                            Ў
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1644285бQвN
GвD
:К7
inputs+                            
p

 
к "FвC
<К9
tensor_0+                            
Ъ Ў
P__inference_batch_normalization_layer_call_and_return_conditional_losses_1644303бQвN
GвD
:К7
inputs+                            
p 

 
к "FвC
<К9
tensor_0+                            
Ъ ╨
5__inference_batch_normalization_layer_call_fn_1644254ЦQвN
GвD
:К7
inputs+                            
p

 
к ";К8
unknown+                            ╨
5__inference_batch_normalization_layer_call_fn_1644267ЦQвN
GвD
:К7
inputs+                            
p 

 
к ";К8
unknown+                            р
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643785Ф$ !"#$%&'()*+,-./0123456789:;<=>в;
4в1
+К(
input_1         ╚╚
p
к ",в)
"К
tensor_0         
Ъ р
G__inference_cnn_model1_layer_call_and_return_conditional_losses_1643892Ф$ !"#$%&'()*+,-./0123456789:;<=>в;
4в1
+К(
input_1         ╚╚
p 
к ",в)
"К
tensor_0         
Ъ ║
,__inference_cnn_model1_layer_call_fn_1643969Й$ !"#$%&'()*+,-./0123456789:;<=>в;
4в1
+К(
input_1         ╚╚
p
к "!К
unknown         ║
,__inference_cnn_model1_layer_call_fn_1644046Й$ !"#$%&'()*+,-./0123456789:;<=>в;
4в1
+К(
input_1         ╚╚
p 
к "!К
unknown         ╝
E__inference_conv2d_1_layer_call_and_return_conditional_losses_1644323s !7в4
-в*
(К%
inputs         dd 
к "4в1
*К'
tensor_0         dd@
Ъ Ц
*__inference_conv2d_1_layer_call_fn_1644312h !7в4
-в*
(К%
inputs         dd 
к ")К&
unknown         dd@╜
E__inference_conv2d_2_layer_call_and_return_conditional_losses_1644405t&'7в4
-в*
(К%
inputs         22@
к "5в2
+К(
tensor_0         22А
Ъ Ч
*__inference_conv2d_2_layer_call_fn_1644394i&'7в4
-в*
(К%
inputs         22@
к "*К'
unknown         22А╜
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1644487t,-8в5
.в+
)К&
inputs         А
к "4в1
*К'
tensor_0         @
Ъ Ч
*__inference_conv2d_3_layer_call_fn_1644476i,-8в5
.в+
)К&
inputs         А
к ")К&
unknown         @╝
E__inference_conv2d_4_layer_call_and_return_conditional_losses_1644569s237в4
-в*
(К%
inputs         @
к "4в1
*К'
tensor_0          
Ъ Ц
*__inference_conv2d_4_layer_call_fn_1644558h237в4
-в*
(К%
inputs         @
к ")К&
unknown          ╛
C__inference_conv2d_layer_call_and_return_conditional_losses_1644241w9в6
/в,
*К'
inputs         ╚╚
к "6в3
,К)
tensor_0         ╚╚ 
Ъ Ш
(__inference_conv2d_layer_call_fn_1644230l9в6
/в,
*К'
inputs         ╚╚
к "+К(
unknown         ╚╚ н
D__inference_dense_1_layer_call_and_return_conditional_losses_1644746e:;0в-
&в#
!К
inputs         А
к "-в*
#К 
tensor_0         А
Ъ З
)__inference_dense_1_layer_call_fn_1644735Z:;0в-
&в#
!К
inputs         А
к ""К
unknown         Ам
D__inference_dense_2_layer_call_and_return_conditional_losses_1644766d<=0в-
&в#
!К
inputs         А
к ",в)
"К
tensor_0         
Ъ Ж
)__inference_dense_2_layer_call_fn_1644755Y<=0в-
&в#
!К
inputs         А
к "!К
unknown         л
B__inference_dense_layer_call_and_return_conditional_losses_1644699e890в-
&в#
!К
inputs         А	
к "-в*
#К 
tensor_0         А
Ъ Е
'__inference_dense_layer_call_fn_1644688Z890в-
&в#
!К
inputs         А	
к ""К
unknown         Ап
F__inference_dropout_1_layer_call_and_return_conditional_losses_1644721e4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ п
F__inference_dropout_1_layer_call_and_return_conditional_losses_1644726e4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ Й
+__inference_dropout_1_layer_call_fn_1644704Z4в1
*в'
!К
inputs         А
p
к ""К
unknown         АЙ
+__inference_dropout_1_layer_call_fn_1644709Z4в1
*в'
!К
inputs         А
p 
к ""К
unknown         Ан
D__inference_dropout_layer_call_and_return_conditional_losses_1644674e4в1
*в'
!К
inputs         А
p
к "-в*
#К 
tensor_0         А
Ъ н
D__inference_dropout_layer_call_and_return_conditional_losses_1644679e4в1
*в'
!К
inputs         А
p 
к "-в*
#К 
tensor_0         А
Ъ З
)__inference_dropout_layer_call_fn_1644657Z4в1
*в'
!К
inputs         А
p
к ""К
unknown         АЗ
)__inference_dropout_layer_call_fn_1644662Z4в1
*в'
!К
inputs         А
p 
к ""К
unknown         А░
D__inference_flatten_layer_call_and_return_conditional_losses_1644652h7в4
-в*
(К%
inputs          
к "-в*
#К 
tensor_0         А	
Ъ К
)__inference_flatten_layer_call_fn_1644646]7в4
-в*
(К%
inputs          
к ""К
unknown         А	Ї
J__inference_max_pooling2d_layer_call_and_return_conditional_losses_1644641еRвO
HвE
CК@
inputs4                                    
к "OвL
EКB
tensor_04                                    
Ъ ╬
/__inference_max_pooling2d_layer_call_fn_1644636ЪRвO
HвE
CК@
inputs4                                    
к "DКA
unknown4                                    ╠
%__inference_signature_wrapper_1644221в$ !"#$%&'()*+,-./0123456789:;<=EвB
в 
;к8
6
input_1+К(
input_1         ╚╚"3к0
.
output_1"К
output_1         
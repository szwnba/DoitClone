.class public Lim/doit/pro/ui/component/DEditText;
.super Landroid/widget/EditText;
.source "DEditText.java"


# static fields
.field private static final CONTAIN_CONTENT:[I


# instance fields
.field private editable:Z

.field private mContainContent:Z

.field mContext:Landroid/content/Context;

.field mHintTextSize:F

.field mTextSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x7f0100d0

    aput v2, v0, v1

    sput-object v0, Lim/doit/pro/ui/component/DEditText;->CONTAIN_CONTENT:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DEditText;->editable:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DEditText;->mContainContent:Z

    .line 28
    iput-object p1, p0, Lim/doit/pro/ui/component/DEditText;->mContext:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DEditText;->editable:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DEditText;->mContainContent:Z

    .line 33
    iput-object p1, p0, Lim/doit/pro/ui/component/DEditText;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/DEditText;->initAttrs(Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DEditText;->editable:Z

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DEditText;->mContainContent:Z

    .line 39
    iput-object p1, p0, Lim/doit/pro/ui/component/DEditText;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/DEditText;->initAttrs(Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 109
    if-eqz p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DEditText;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 111
    sget-object v2, Lim/doit/pro/v4/R$styleable;->DTextView:[I

    .line 110
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 113
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 112
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/DEditText;->mHintTextSize:F

    .line 114
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 116
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method

.method private setTextSize()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 119
    iget v1, p0, Lim/doit/pro/ui/component/DEditText;->mHintTextSize:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 132
    :goto_0
    return-void

    .line 122
    :cond_0
    iget v1, p0, Lim/doit/pro/ui/component/DEditText;->mTextSize:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 123
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DEditText;->getTextSize()F

    move-result v1

    iput v1, p0, Lim/doit/pro/ui/component/DEditText;->mTextSize:F

    .line 125
    :cond_1
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 126
    .local v0, "text":Landroid/text/Editable;
    iget v1, p0, Lim/doit/pro/ui/component/DEditText;->mHintTextSize:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 127
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 128
    :cond_2
    iget v1, p0, Lim/doit/pro/ui/component/DEditText;->mHintTextSize:F

    invoke-virtual {p0, v3, v1}, Lim/doit/pro/ui/component/DEditText;->setTextSize(IF)V

    goto :goto_0

    .line 130
    :cond_3
    iget v1, p0, Lim/doit/pro/ui/component/DEditText;->mTextSize:F

    invoke-virtual {p0, v3, v1}, Lim/doit/pro/ui/component/DEditText;->setTextSize(IF)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 101
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/EditText;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 102
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lim/doit/pro/ui/component/DEditText;->mContainContent:Z

    if-eqz v1, :cond_0

    .line 103
    sget-object v1, Lim/doit/pro/ui/component/DEditText;->CONTAIN_CONTENT:[I

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/DEditText;->mergeDrawableStates([I[I)[I

    .line 105
    :cond_0
    return-object v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 91
    invoke-direct {p0}, Lim/doit/pro/ui/component/DEditText;->setTextSize()V

    .line 92
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DEditText;->mContainContent:Z

    .line 97
    :goto_0
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lim/doit/pro/ui/component/DEditText;->mContainContent:Z

    goto :goto_0
.end method

.method public onTextContextMenuItem(I)Z
    .locals 2
    .param p1, "id"    # I

    .prologue
    const/4 v0, 0x1

    .line 72
    packed-switch p1, :pswitch_data_0

    .line 84
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    move-result v0

    :goto_0
    return v0

    .line 74
    :pswitch_1
    iget-boolean v1, p0, Lim/doit/pro/ui/component/DEditText;->editable:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 79
    :pswitch_2
    iget-boolean v1, p0, Lim/doit/pro/ui/component/DEditText;->editable:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x1020020
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setEditable(Z)V
    .locals 2
    .param p1, "editable"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 49
    iput-boolean p1, p0, Lim/doit/pro/ui/component/DEditText;->editable:Z

    .line 50
    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DEditText;->setLongClickable(Z)V

    .line 52
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DEditText;->setFocusable(Z)V

    .line 53
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DEditText;->setEnabled(Z)V

    .line 54
    const v0, 0x24001

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DEditText;->setInputType(I)V

    .line 65
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DEditText;->setTextIsSelectable(Z)V

    .line 60
    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/DEditText;->setFocusable(Z)V

    .line 61
    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/DEditText;->setEnabled(Z)V

    .line 62
    const v0, 0x20001

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/DEditText;->setInputType(I)V

    goto :goto_0
.end method

.method public setHintTextSize(F)V
    .locals 0
    .param p1, "textSize"    # F

    .prologue
    .line 44
    iput p1, p0, Lim/doit/pro/ui/component/DEditText;->mHintTextSize:F

    .line 45
    invoke-direct {p0}, Lim/doit/pro/ui/component/DEditText;->setTextSize()V

    .line 46
    return-void
.end method

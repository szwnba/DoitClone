.class public Lim/doit/pro/ui/component/SubTaskTitleView;
.super Lim/doit/pro/ui/component/NoEnterEditText;
.source "SubTaskTitleView.java"


# instance fields
.field private final COMPLETED:[I

.field private mHintTextSize:I

.field private mInputType:I

.field private mIsComplete:Z

.field private mRealTextSize:I

.field private mShadowColors:Landroid/content/res/ColorStateList;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 28
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/NoEnterEditText;-><init>(Landroid/content/Context;)V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0100cc

    aput v1, v0, v2

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->COMPLETED:[I

    .line 16
    iput-boolean v2, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mIsComplete:Z

    .line 25
    const/16 v0, 0xe

    iput v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mHintTextSize:I

    const/16 v0, 0x10

    iput v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mRealTextSize:I

    .line 29
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskTitleView;->setTextSize()V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 33
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/NoEnterEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0100cc

    aput v1, v0, v2

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->COMPLETED:[I

    .line 16
    iput-boolean v2, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mIsComplete:Z

    .line 25
    const/16 v0, 0xe

    iput v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mHintTextSize:I

    const/16 v0, 0x10

    iput v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mRealTextSize:I

    .line 34
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskTitleView;->setTextSize()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/ui/component/NoEnterEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    const/4 v0, 0x1

    new-array v0, v0, [I

    const v1, 0x7f0100cc

    aput v1, v0, v2

    iput-object v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->COMPLETED:[I

    .line 16
    iput-boolean v2, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mIsComplete:Z

    .line 25
    const/16 v0, 0xe

    iput v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mHintTextSize:I

    const/16 v0, 0x10

    iput v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mRealTextSize:I

    .line 39
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskTitleView;->setTextSize()V

    .line 40
    return-void
.end method

.method private setTextSize()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 90
    invoke-virtual {p0}, Lim/doit/pro/ui/component/SubTaskTitleView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 91
    .local v0, "text":Landroid/text/Editable;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 92
    :cond_0
    iget v1, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mHintTextSize:I

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setTextSize(IF)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    iget v1, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mRealTextSize:I

    int-to-float v1, v1

    invoke-virtual {p0, v2, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->setTextSize(IF)V

    goto :goto_0
.end method

.method private updateShadowColor()V
    .locals 6

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mShadowColors:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 44
    iget v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mShadowRadius:F

    iget v1, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mShadowDx:F

    iget v2, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mShadowDy:F

    iget-object v3, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mShadowColors:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lim/doit/pro/ui/component/SubTaskTitleView;->getDrawableState()[I

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    invoke-virtual {p0, v0, v1, v2, v3}, Lim/doit/pro/ui/component/SubTaskTitleView;->setShadowLayer(FFFI)V

    .line 45
    invoke-virtual {p0}, Lim/doit/pro/ui/component/SubTaskTitleView;->invalidate()V

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 0

    .prologue
    .line 51
    invoke-super {p0}, Lim/doit/pro/ui/component/NoEnterEditText;->drawableStateChanged()V

    .line 52
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskTitleView;->updateShadowColor()V

    .line 53
    return-void
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mIsComplete:Z

    return v0
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 65
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 66
    .local v0, "drawableState":[I
    iget-boolean v1, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mIsComplete:Z

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->COMPLETED:[I

    invoke-static {v0, v1}, Lim/doit/pro/ui/component/SubTaskTitleView;->mergeDrawableStates([I[I)[I

    .line 69
    :cond_0
    return-object v0
.end method

.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 85
    invoke-direct {p0}, Lim/doit/pro/ui/component/SubTaskTitleView;->setTextSize()V

    .line 86
    invoke-super {p0, p1, p2, p3, p4}, Lim/doit/pro/ui/component/NoEnterEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 87
    return-void
.end method

.method public setComplete(Z)V
    .locals 0
    .param p1, "isComplete"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mIsComplete:Z

    .line 57
    return-void
.end method

.method public setEditable(Z)V
    .locals 1
    .param p1, "editable"    # Z

    .prologue
    .line 73
    iget v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mInputType:I

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lim/doit/pro/ui/component/SubTaskTitleView;->getInputType()I

    move-result v0

    iput v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mInputType:I

    .line 76
    :cond_0
    if-eqz p1, :cond_1

    .line 77
    iget v0, p0, Lim/doit/pro/ui/component/SubTaskTitleView;->mInputType:I

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SubTaskTitleView;->setInputType(I)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/SubTaskTitleView;->setInputType(I)V

    goto :goto_0
.end method

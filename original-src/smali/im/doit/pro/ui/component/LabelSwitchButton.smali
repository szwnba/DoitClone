.class public Lim/doit/pro/ui/component/LabelSwitchButton;
.super Landroid/widget/RelativeLayout;
.source "LabelSwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;
    }
.end annotation


# instance fields
.field private labelView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mLabelText:Ljava/lang/String;

.field private mSwitchCheckedChangeListener:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

.field private switchBtn:Lim/doit/pro/ui/component/DSwitch;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LabelSwitchButton;->init(Landroid/content/Context;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/LabelSwitchButton;->initAttrs(Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LabelSwitchButton;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/LabelSwitchButton;->initAttrs(Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/LabelSwitchButton;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/LabelSwitchButton;)Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->mSwitchCheckedChangeListener:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 70
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->mContext:Landroid/content/Context;

    .line 71
    iget-object v1, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f03007b

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 73
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 74
    const/4 v1, -0x1

    .line 75
    const/4 v2, -0x2

    .line 73
    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 77
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const v1, 0x7f09004b

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDimensionPixelSize(I)I

    move-result v1

    .line 76
    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setMinimumHeight(I)V

    .line 78
    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelSwitchButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    const/high16 v1, 0x60000

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setDescendantFocusability(I)V

    .line 80
    const v1, 0x7f020178

    invoke-virtual {p0, v1}, Lim/doit/pro/ui/component/LabelSwitchButton;->setBackgroundResource(I)V

    .line 81
    invoke-direct {p0}, Lim/doit/pro/ui/component/LabelSwitchButton;->initView()V

    .line 82
    invoke-direct {p0}, Lim/doit/pro/ui/component/LabelSwitchButton;->setViewContent()V

    .line 83
    invoke-direct {p0}, Lim/doit/pro/ui/component/LabelSwitchButton;->registerListner()V

    .line 84
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 59
    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lim/doit/pro/ui/component/LabelSwitchButton;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 61
    sget-object v2, Lim/doit/pro/v4/R$styleable;->TextViewWithLabel:[I

    .line 60
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 62
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->mLabelText:Ljava/lang/String;

    .line 65
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 67
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 1

    .prologue
    .line 87
    const v0, 0x7f0b016b

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelSwitchButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->labelView:Landroid/widget/TextView;

    .line 88
    const v0, 0x7f0b0116

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/LabelSwitchButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/DSwitch;

    iput-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    .line 89
    return-void
.end method

.method private registerListner()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    new-instance v1, Lim/doit/pro/ui/component/LabelSwitchButton$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/LabelSwitchButton$1;-><init>(Lim/doit/pro/ui/component/LabelSwitchButton;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/DSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    return-void
.end method

.method private setViewContent()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method


# virtual methods
.method public setChecked(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/DSwitch;->setChecked(Z)V

    .line 51
    return-void
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 111
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 112
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->switchBtn:Lim/doit/pro/ui/component/DSwitch;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/DSwitch;->setEnabled(Z)V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->labelView:Landroid/widget/TextView;

    .line 115
    const v1, 0x7f080061

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 114
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    :goto_0
    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->labelView:Landroid/widget/TextView;

    .line 119
    const v1, 0x7f080062

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->mLabelText:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method

.method public setOnSwitchCheckedChangeListener(Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    .prologue
    .line 42
    iput-object p1, p0, Lim/doit/pro/ui/component/LabelSwitchButton;->mSwitchCheckedChangeListener:Lim/doit/pro/ui/component/LabelSwitchButton$OnSwitchCheckedChangeListener;

    .line 43
    return-void
.end method

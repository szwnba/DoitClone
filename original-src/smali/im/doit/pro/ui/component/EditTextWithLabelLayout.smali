.class public Lim/doit/pro/ui/component/EditTextWithLabelLayout;
.super Landroid/widget/RelativeLayout;
.source "EditTextWithLabelLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;,
        Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;
    }
.end annotation


# instance fields
.field private clickableLayout:Landroid/widget/RelativeLayout;

.field private contentView:Lim/doit/pro/ui/component/NoEnterEditText;

.field private labelView:Landroid/widget/TextView;

.field private layoutView:Landroid/widget/RelativeLayout;

.field private mChangeListener:Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;

.field private mContentText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDoneListener:Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;

.field private mLabelText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->initAttrs(Landroid/util/AttributeSet;)V

    .line 46
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->init(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {p0, p2}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->initAttrs(Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->init(Landroid/content/Context;)V

    .line 54
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/EditTextWithLabelLayout;)Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mChangeListener:Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/EditTextWithLabelLayout;)Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mDoneListener:Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    iput-object p1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mContext:Landroid/content/Context;

    .line 114
    iget-object v1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 115
    const v2, 0x7f030077

    .line 114
    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 116
    iput-object p0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->layoutView:Landroid/widget/RelativeLayout;

    .line 117
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    const/4 v1, -0x1

    .line 119
    const/4 v2, -0x2

    .line 117
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 120
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->layoutView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    invoke-direct {p0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->initView()V

    .line 122
    invoke-direct {p0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->setViewContent()V

    .line 123
    invoke-direct {p0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->registerListner()V

    .line 124
    return-void
.end method

.method private initAttrs(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 98
    if-eqz p1, :cond_2

    .line 99
    invoke-virtual {p0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 100
    sget-object v2, Lim/doit/pro/v4/R$styleable;->TextViewWithLabel:[I

    .line 99
    invoke-virtual {v1, p1, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 101
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mLabelText:Ljava/lang/String;

    .line 104
    :cond_0
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 105
    iput-object v1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mContentText:Ljava/lang/String;

    .line 108
    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 110
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_2
    return-void
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->layoutView:Landroid/widget/RelativeLayout;

    .line 128
    const v1, 0x7f0b016a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 127
    iput-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->clickableLayout:Landroid/widget/RelativeLayout;

    .line 129
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->layoutView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b016b

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->labelView:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->layoutView:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0104

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/NoEnterEditText;

    iput-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 131
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setImeOptions(I)V

    .line 132
    return-void
.end method

.method private registerListner()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/ui/component/EditTextWithLabelLayout$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout$1;-><init>(Lim/doit/pro/ui/component/EditTextWithLabelLayout;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 159
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    new-instance v1, Lim/doit/pro/ui/component/EditTextWithLabelLayout$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/EditTextWithLabelLayout$2;-><init>(Lim/doit/pro/ui/component/EditTextWithLabelLayout;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V

    .line 168
    return-void
.end method

.method private setViewContent()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mLabelText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    iget-object v1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mContentText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 137
    return-void
.end method


# virtual methods
.method public setBackgroundResource(I)V
    .locals 1
    .param p1, "resid"    # I

    .prologue
    .line 78
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->clickableLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 79
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 94
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/NoEnterEditText;->setEnabled(Z)V

    .line 95
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 82
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/NoEnterEditText;->setInputType(I)V

    .line 83
    return-void
.end method

.method public setMaxLength(I)V
    .locals 4
    .param p1, "maxLength"    # I

    .prologue
    .line 86
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 87
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    .line 88
    invoke-direct {v3, p1}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    .line 87
    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setFilters([Landroid/text/InputFilter;)V

    .line 89
    return-void
.end method

.method public setOnContentChangeListener(Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;

    .prologue
    .line 69
    iput-object p1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mChangeListener:Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentChangeListener;

    .line 70
    return-void
.end method

.method public setOnContentDoneListener(Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;

    .prologue
    .line 73
    iput-object p1, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->mDoneListener:Lim/doit/pro/ui/component/EditTextWithLabelLayout$OnContentDoneListener;

    .line 74
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 57
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-virtual {v0, p1}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 58
    return-void
.end method

.method public setTextColorResource(I)V
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    .line 61
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setTextColor(I)V

    .line 62
    return-void
.end method

.method public setTextColorsResource(I)V
    .locals 2
    .param p1, "colorId"    # I

    .prologue
    .line 65
    iget-object v0, p0, Lim/doit/pro/ui/component/EditTextWithLabelLayout;->contentView:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-static {p1}, Lim/doit/pro/activity/utils/ViewUtils;->getColors(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/NoEnterEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 66
    return-void
.end method

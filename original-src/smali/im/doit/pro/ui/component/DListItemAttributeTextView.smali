.class public Lim/doit/pro/ui/component/DListItemAttributeTextView;
.super Landroid/widget/TextView;
.source "DListItemAttributeTextView.java"


# instance fields
.field private alignRight:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lim/doit/pro/ui/component/DListItemAttributeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, v0}, Lim/doit/pro/ui/component/DListItemAttributeTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11
    iput-boolean v3, p0, Lim/doit/pro/ui/component/DListItemAttributeTextView;->alignRight:Z

    .line 23
    if-eqz p2, :cond_0

    .line 24
    invoke-virtual {p0}, Lim/doit/pro/ui/component/DListItemAttributeTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lim/doit/pro/v4/R$styleable;->ListAttributeItem:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 25
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lim/doit/pro/ui/component/DListItemAttributeTextView;->alignRight:Z

    .line 26
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 28
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public isAlignRight()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lim/doit/pro/ui/component/DListItemAttributeTextView;->alignRight:Z

    return v0
.end method

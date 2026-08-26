.class public Lim/doit/pro/ui/component/NoEnterEditText;
.super Lim/doit/pro/ui/component/DEditText;
.source "NoEnterEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;
    }
.end annotation


# instance fields
.field private mOnDoneListener:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/DEditText;-><init>(Landroid/content/Context;)V

    .line 15
    invoke-direct {p0}, Lim/doit/pro/ui/component/NoEnterEditText;->init()V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lim/doit/pro/ui/component/DEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    invoke-direct {p0}, Lim/doit/pro/ui/component/NoEnterEditText;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lim/doit/pro/ui/component/DEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-direct {p0}, Lim/doit/pro/ui/component/NoEnterEditText;->init()V

    .line 26
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/NoEnterEditText;)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Lim/doit/pro/ui/component/NoEnterEditText;->done()V

    return-void
.end method

.method private done()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lim/doit/pro/ui/component/NoEnterEditText;->mOnDoneListener:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lim/doit/pro/ui/component/NoEnterEditText;->mOnDoneListener:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;

    invoke-interface {v0, p0}, Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;->done(Landroid/widget/EditText;)V

    .line 70
    :cond_0
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lim/doit/pro/ui/component/NoEnterEditText$1;

    invoke-direct {v0, p0}, Lim/doit/pro/ui/component/NoEnterEditText$1;-><init>(Lim/doit/pro/ui/component/NoEnterEditText;)V

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/NoEnterEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 42
    return-void
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 47
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p0}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 50
    invoke-direct {p0}, Lim/doit/pro/ui/component/NoEnterEditText;->done()V

    .line 54
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lim/doit/pro/ui/component/DEditText;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto :goto_0
.end method

.method public setOnDoneListener(Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;)V
    .locals 0
    .param p1, "onDoneListener"    # Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;

    .prologue
    .line 57
    iput-object p1, p0, Lim/doit/pro/ui/component/NoEnterEditText;->mOnDoneListener:Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;

    .line 58
    return-void
.end method

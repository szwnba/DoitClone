.class public Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "KeyboardDetectorRelativeLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;
    }
.end annotation


# instance fields
.field private keyboardListener:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->keyboardListener:Ljava/util/ArrayList;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->keyboardListener:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->keyboardListener:Ljava/util/ArrayList;

    .line 21
    return-void
.end method

.method private notifyKeyboardHidden()V
    .locals 3

    .prologue
    .line 55
    iget-object v1, p0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->keyboardListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    return-void

    .line 55
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    .line 56
    .local v0, "listener":Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;
    invoke-interface {v0}, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;->onKeyboardHidden()V

    goto :goto_0
.end method

.method private notifyKeyboardShown()V
    .locals 3

    .prologue
    .line 61
    iget-object v1, p0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->keyboardListener:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 64
    return-void

    .line 61
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    .line 62
    .local v0, "listener":Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;
    invoke-interface {v0}, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;->onKeyboardShown()V

    goto :goto_0
.end method


# virtual methods
.method public addKeyboardStateChangedListener(Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;)V
    .locals 1
    .param p1, "listener"    # Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    .prologue
    .line 32
    iget-object v0, p0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->keyboardListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 41
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 43
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 44
    .local v1, "proposedheight":I
    invoke-virtual {p0}, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->getHeight()I

    move-result v0

    .line 46
    .local v0, "actualHeight":I
    if-le v0, v1, :cond_1

    .line 47
    invoke-direct {p0}, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->notifyKeyboardShown()V

    .line 51
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 52
    return-void

    .line 48
    :cond_1
    if-ge v0, v1, :cond_0

    .line 49
    invoke-direct {p0}, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->notifyKeyboardHidden()V

    goto :goto_0
.end method

.method public removeKeyboardStateChangedListener(Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;)V
    .locals 1
    .param p1, "listener"    # Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout$IKeyboardChanged;

    .prologue
    .line 36
    iget-object v0, p0, Lim/doit/pro/ui/component/KeyboardDetectorRelativeLayout;->keyboardListener:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    return-void
.end method

.class Lim/doit/pro/ui/component/NoEnterEditText$1;
.super Ljava/lang/Object;
.source "NoEnterEditText.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/ui/component/NoEnterEditText;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/NoEnterEditText;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/NoEnterEditText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/NoEnterEditText$1;->this$0:Lim/doit/pro/ui/component/NoEnterEditText;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 34
    const/4 v0, 0x6

    if-eq p2, v0, :cond_0

    .line 35
    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 36
    :cond_0
    iget-object v0, p0, Lim/doit/pro/ui/component/NoEnterEditText$1;->this$0:Lim/doit/pro/ui/component/NoEnterEditText;

    invoke-static {v0}, Lim/doit/pro/ui/component/NoEnterEditText;->access$0(Lim/doit/pro/ui/component/NoEnterEditText;)V

    .line 37
    const/4 v0, 0x1

    .line 39
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

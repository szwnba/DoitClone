.class Lim/doit/pro/activity/ProjectDetailActivity$3;
.super Ljava/lang/Object;
.source "ProjectDetailActivity.java"

# interfaces
.implements Lim/doit/pro/ui/component/NoEnterEditText$OnDoneListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ProjectDetailActivity;->listenTitleChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ProjectDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ProjectDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ProjectDetailActivity$3;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public done(Landroid/widget/EditText;)V
    .locals 3
    .param p1, "v"    # Landroid/widget/EditText;

    .prologue
    .line 374
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$3;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$9(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/ui/component/DEditText;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/ui/component/DEditText;->requestFocus()Z

    .line 375
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$3;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$9(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/ui/component/DEditText;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/ui/component/DEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 376
    .local v1, "notes":Landroid/text/Editable;
    if-eqz v1, :cond_0

    .line 377
    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 378
    .local v0, "endIndex":I
    iget-object v2, p0, Lim/doit/pro/activity/ProjectDetailActivity$3;->this$0:Lim/doit/pro/activity/ProjectDetailActivity;

    invoke-static {v2}, Lim/doit/pro/activity/ProjectDetailActivity;->access$9(Lim/doit/pro/activity/ProjectDetailActivity;)Lim/doit/pro/ui/component/DEditText;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/ui/component/DEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 380
    .end local v0    # "endIndex":I
    :cond_0
    return-void
.end method

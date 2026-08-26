.class Lim/doit/pro/ui/component/AddCommentDialog$2;
.super Ljava/lang/Object;
.source "AddCommentDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/AddCommentDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/AddCommentDialog;


# direct methods
.method constructor <init>(Lim/doit/pro/ui/component/AddCommentDialog;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/ui/component/AddCommentDialog$2;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v2, p0, Lim/doit/pro/ui/component/AddCommentDialog$2;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/AddCommentDialog;->access$0(Lim/doit/pro/ui/component/AddCommentDialog;)V

    .line 128
    iget-object v2, p0, Lim/doit/pro/ui/component/AddCommentDialog$2;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/AddCommentDialog;->access$2(Lim/doit/pro/ui/component/AddCommentDialog;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "content":Ljava/lang/String;
    iget-object v2, p0, Lim/doit/pro/ui/component/AddCommentDialog$2;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/AddCommentDialog;->access$3(Lim/doit/pro/ui/component/AddCommentDialog;)Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 130
    invoke-static {v1}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 131
    new-instance v0, Lim/doit/pro/model/TaskComment;

    invoke-direct {v0}, Lim/doit/pro/model/TaskComment;-><init>()V

    .line 132
    .local v0, "comment":Lim/doit/pro/model/TaskComment;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/TaskComment;->setUuid(Ljava/lang/String;)V

    .line 133
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/TaskComment;->setCreated(Ljava/util/Calendar;)V

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/TaskComment;->setUpdated(Ljava/util/Calendar;)V

    .line 135
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/TaskComment;->setAuthor(Ljava/lang/String;)V

    .line 136
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->user()Lim/doit/pro/model/User;

    move-result-object v2

    invoke-virtual {v2}, Lim/doit/pro/model/User;->getLowerEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lim/doit/pro/model/TaskComment;->setAuthorEmail(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v0, v1}, Lim/doit/pro/model/TaskComment;->setContent(Ljava/lang/String;)V

    .line 138
    iget-object v2, p0, Lim/doit/pro/ui/component/AddCommentDialog$2;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/AddCommentDialog;->access$3(Lim/doit/pro/ui/component/AddCommentDialog;)Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;

    move-result-object v2

    invoke-interface {v2, v0}, Lim/doit/pro/ui/component/AddCommentDialog$OnAddCommentFinishListner;->finish(Lim/doit/pro/model/TaskComment;)V

    .line 140
    .end local v0    # "comment":Lim/doit/pro/model/TaskComment;
    :cond_0
    iget-object v2, p0, Lim/doit/pro/ui/component/AddCommentDialog$2;->this$0:Lim/doit/pro/ui/component/AddCommentDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/AddCommentDialog;->access$1(Lim/doit/pro/ui/component/AddCommentDialog;)V

    .line 141
    return-void
.end method

.class Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;
.super Ljava/lang/Object;
.source "UserNicknameEditActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/UserNicknameEditActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnSaveBtnClick"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UserNicknameEditActivity;


# direct methods
.method private constructor <init>(Lim/doit/pro/activity/UserNicknameEditActivity;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;->this$0:Lim/doit/pro/activity/UserNicknameEditActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/activity/UserNicknameEditActivity;Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;)V
    .locals 0

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;-><init>(Lim/doit/pro/activity/UserNicknameEditActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 99
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 100
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "nickname"

    iget-object v2, p0, Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;->this$0:Lim/doit/pro/activity/UserNicknameEditActivity;

    invoke-static {v2}, Lim/doit/pro/activity/UserNicknameEditActivity;->access$0(Lim/doit/pro/activity/UserNicknameEditActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    iget-object v1, p0, Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;->this$0:Lim/doit/pro/activity/UserNicknameEditActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lim/doit/pro/activity/UserNicknameEditActivity;->setResult(ILandroid/content/Intent;)V

    .line 102
    iget-object v1, p0, Lim/doit/pro/activity/UserNicknameEditActivity$OnSaveBtnClick;->this$0:Lim/doit/pro/activity/UserNicknameEditActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/UserNicknameEditActivity;->finish()V

    .line 103
    return-void
.end method

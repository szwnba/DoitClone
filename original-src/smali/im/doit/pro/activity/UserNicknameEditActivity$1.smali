.class Lim/doit/pro/activity/UserNicknameEditActivity$1;
.super Ljava/lang/Object;
.source "UserNicknameEditActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/UserNicknameEditActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/UserNicknameEditActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/UserNicknameEditActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/UserNicknameEditActivity$1;->this$0:Lim/doit/pro/activity/UserNicknameEditActivity;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 68
    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity$1;->this$0:Lim/doit/pro/activity/UserNicknameEditActivity;

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lim/doit/pro/activity/UserNicknameEditActivity;->access$1(Lim/doit/pro/activity/UserNicknameEditActivity;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lim/doit/pro/activity/UserNicknameEditActivity$1;->this$0:Lim/doit/pro/activity/UserNicknameEditActivity;

    invoke-static {v0}, Lim/doit/pro/activity/UserNicknameEditActivity;->access$2(Lim/doit/pro/activity/UserNicknameEditActivity;)V

    .line 70
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 64
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 60
    return-void
.end method

.class Lim/doit/pro/activity/LoginAgainActivity$1;
.super Ljava/lang/Object;
.source "LoginAgainActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/LoginAgainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/LoginAgainActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/LoginAgainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/LoginAgainActivity$1;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 130
    iget-object v0, p0, Lim/doit/pro/activity/LoginAgainActivity$1;->this$0:Lim/doit/pro/activity/LoginAgainActivity;

    invoke-static {v0}, Lim/doit/pro/activity/LoginAgainActivity;->access$0(Lim/doit/pro/activity/LoginAgainActivity;)V

    .line 131
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 136
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 141
    return-void
.end method

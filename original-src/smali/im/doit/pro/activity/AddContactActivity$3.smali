.class Lim/doit/pro/activity/AddContactActivity$3;
.super Ljava/lang/Object;
.source "AddContactActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AddContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AddContactActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AddContactActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AddContactActivity$3;->this$0:Lim/doit/pro/activity/AddContactActivity;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 128
    iget-object v0, p0, Lim/doit/pro/activity/AddContactActivity$3;->this$0:Lim/doit/pro/activity/AddContactActivity;

    invoke-static {v0}, Lim/doit/pro/activity/AddContactActivity;->access$1(Lim/doit/pro/activity/AddContactActivity;)V

    .line 129
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 124
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 119
    return-void
.end method

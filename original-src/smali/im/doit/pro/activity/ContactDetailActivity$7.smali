.class Lim/doit/pro/activity/ContactDetailActivity$7;
.super Ljava/lang/Object;
.source "ContactDetailActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/ContactDetailActivity;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/ContactDetailActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/ContactDetailActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/ContactDetailActivity$7;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 194
    iget-object v0, p0, Lim/doit/pro/activity/ContactDetailActivity$7;->this$0:Lim/doit/pro/activity/ContactDetailActivity;

    invoke-static {v0}, Lim/doit/pro/activity/ContactDetailActivity;->access$0(Lim/doit/pro/activity/ContactDetailActivity;)Lim/doit/pro/model/Contact;

    move-result-object v0

    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lim/doit/pro/model/Contact;->setNotes(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 190
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 185
    return-void
.end method

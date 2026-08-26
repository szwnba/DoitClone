.class Lim/doit/pro/activity/AttachFromEvernoteActivity$7;
.super Ljava/lang/Object;
.source "AttachFromEvernoteActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/AttachFromEvernoteActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/AttachFromEvernoteActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$7;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 448
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 449
    .local v0, "key":Ljava/lang/String;
    invoke-static {v0}, Lim/doit/pro/utils/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$7;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$20(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 454
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v1, p0, Lim/doit/pro/activity/AttachFromEvernoteActivity$7;->this$0:Lim/doit/pro/activity/AttachFromEvernoteActivity;

    invoke-static {v1}, Lim/doit/pro/activity/AttachFromEvernoteActivity;->access$20(Lim/doit/pro/activity/AttachFromEvernoteActivity;)Landroid/widget/ImageButton;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 444
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 439
    return-void
.end method

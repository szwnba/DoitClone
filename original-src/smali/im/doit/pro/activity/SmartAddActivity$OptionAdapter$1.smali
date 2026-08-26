.class Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;
.super Ljava/lang/Object;
.source "SmartAddActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;->this$1:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    .line 489
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 490
    .local v4, "option":Ljava/lang/String;
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;->this$1:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->access$1(Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;)Lim/doit/pro/activity/SmartAddActivity;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$3(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    .line 491
    .local v3, "inputAll":Ljava/lang/String;
    const/4 v0, -0x1

    .line 492
    .local v0, "br":I
    const/16 v1, 0x20

    .line 493
    .local v1, "ch":C
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_3

    .line 511
    :cond_0
    if-eq v0, v6, :cond_2

    .line 512
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;->this$1:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->access$1(Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;)Lim/doit/pro/activity/SmartAddActivity;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$3(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/4 v7, 0x0

    add-int/lit8 v8, v0, 0x1

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 512
    invoke-virtual {v5, v6}, Lim/doit/pro/ui/component/NoEnterEditText;->setText(Ljava/lang/CharSequence;)V

    .line 514
    const/16 v5, 0x26

    if-ne v1, v5, :cond_1

    .line 515
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;->this$1:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->access$1(Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;)Lim/doit/pro/activity/SmartAddActivity;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;->this$1:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->access$1(Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;)Lim/doit/pro/activity/SmartAddActivity;

    move-result-object v6

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$3(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v6

    invoke-virtual {v6}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lim/doit/pro/activity/SmartAddActivity;->access$4(Lim/doit/pro/activity/SmartAddActivity;Ljava/lang/String;)V

    .line 518
    :cond_1
    iget-object v5, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;->this$1:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->access$1(Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;)Lim/doit/pro/activity/SmartAddActivity;

    move-result-object v5

    invoke-static {v5}, Lim/doit/pro/activity/SmartAddActivity;->access$3(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v5

    invoke-virtual {v5}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v5

    iget-object v6, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;->this$1:Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->access$1(Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;)Lim/doit/pro/activity/SmartAddActivity;

    move-result-object v6

    invoke-static {v6}, Lim/doit/pro/activity/SmartAddActivity;->access$3(Lim/doit/pro/activity/SmartAddActivity;)Lim/doit/pro/ui/component/NoEnterEditText;

    move-result-object v6

    .line 519
    invoke-virtual {v6}, Lim/doit/pro/ui/component/NoEnterEditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    .line 518
    invoke-static {v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 521
    :cond_2
    return-void

    .line 494
    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 508
    :goto_1
    if-ne v0, v6, :cond_0

    .line 493
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 496
    :sswitch_0
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 498
    :sswitch_1
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 500
    :sswitch_2
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 502
    :sswitch_3
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 504
    :sswitch_4
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 505
    move v0, v2

    goto :goto_1

    .line 494
    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_3
        0x23 -> :sswitch_2
        0x26 -> :sswitch_4
        0x40 -> :sswitch_1
        0x5e -> :sswitch_0
    .end sparse-switch
.end method

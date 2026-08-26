.class Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;
.super Landroid/widget/BaseAdapter;
.source "SmartAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/SmartAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OptionAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lim/doit/pro/activity/SmartAddActivity;


# direct methods
.method constructor <init>(Lim/doit/pro/activity/SmartAddActivity;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;)Lim/doit/pro/activity/SmartAddActivity;
    .locals 1

    .prologue
    .line 434
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lim/doit/pro/utils/CollectionUtils;->isEmpty(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    const/4 v0, 0x0

    .line 457
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1
    .param p1, "poistion"    # I

    .prologue
    .line 462
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "arg0"    # I

    .prologue
    .line 467
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 474
    if-nez p2, :cond_0

    .line 475
    iget-object v2, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    .line 476
    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Lim/doit/pro/activity/SmartAddActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 475
    check-cast v1, Landroid/view/LayoutInflater;

    .line 478
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f03009d

    const/4 v3, 0x0

    .line 477
    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 482
    .end local v1    # "layoutInflater":Landroid/view/LayoutInflater;
    .local v0, "itemView":Landroid/widget/TextView;
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 483
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 485
    new-instance v2, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;

    invoke-direct {v2, p0}, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter$1;-><init>(Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 524
    return-object v0

    .end local v0    # "itemView":Landroid/widget/TextView;
    :cond_0
    move-object v0, p2

    .line 480
    check-cast v0, Landroid/widget/TextView;

    .restart local v0    # "itemView":Landroid/widget/TextView;
    goto :goto_0
.end method

.method public notifyDataSetChanged()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SmartAddActivity;->access$0(Lim/doit/pro/activity/SmartAddActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 439
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SmartAddActivity;->access$1(Lim/doit/pro/activity/SmartAddActivity;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lim/doit/pro/activity/SmartAddActivity;->access$2(Lim/doit/pro/activity/SmartAddActivity;Z)V

    .line 441
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SmartAddActivity;->access$1(Lim/doit/pro/activity/SmartAddActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-virtual {v1}, Lim/doit/pro/activity/SmartAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 442
    const v2, 0x106000d

    .line 441
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 449
    :goto_0
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 450
    return-void

    .line 444
    :cond_0
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SmartAddActivity;->access$1(Lim/doit/pro/activity/SmartAddActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 445
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v0, v1}, Lim/doit/pro/activity/SmartAddActivity;->access$2(Lim/doit/pro/activity/SmartAddActivity;Z)V

    .line 446
    iget-object v0, p0, Lim/doit/pro/activity/SmartAddActivity$OptionAdapter;->this$0:Lim/doit/pro/activity/SmartAddActivity;

    invoke-static {v0}, Lim/doit/pro/activity/SmartAddActivity;->access$1(Lim/doit/pro/activity/SmartAddActivity;)Landroid/widget/ListView;

    move-result-object v0

    .line 447
    const v1, 0x106000b

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 446
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setBackgroundColor(I)V

    goto :goto_0
.end method

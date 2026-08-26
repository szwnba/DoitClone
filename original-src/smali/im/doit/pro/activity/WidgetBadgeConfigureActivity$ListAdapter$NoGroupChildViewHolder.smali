.class Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;
.super Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;
.source "WidgetBadgeConfigureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoGroupChildViewHolder"
.end annotation


# instance fields
.field public nameTV:Landroid/widget/TextView;

.field final synthetic this$1:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 408
    iput-object p1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;->this$1:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    .line 409
    invoke-direct {p0, p1, p2}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$ViewHolder;-><init>(Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;Landroid/content/Context;)V

    .line 411
    const v0, 0x7f0300b6

    .line 410
    invoke-static {p2, v0, p0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 413
    const v0, 0x7f0b0115

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;->nameTV:Landroid/widget/TextView;

    .line 414
    return-void
.end method


# virtual methods
.method public setViewContent(I)V
    .locals 3
    .param p1, "groupPosition"    # I

    .prologue
    .line 418
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;->this$1:Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;

    invoke-virtual {v1, p1}, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter;->getGroup(I)Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;

    move-result-object v0

    .line 419
    .local v0, "item":Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;
    iget-object v1, p0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$ListAdapter$NoGroupChildViewHolder;->nameTV:Landroid/widget/TextView;

    iget-object v2, v0, Lim/doit/pro/activity/WidgetBadgeConfigureActivity$GroupData;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 420
    return-void
.end method

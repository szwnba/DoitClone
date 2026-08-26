.class public Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;
.super Landroid/widget/RelativeLayout;
.source "EvernoteListViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/activity/listview/EvernoteListViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EvernoteViewHolder"
.end annotation


# instance fields
.field public deleteBtn:Landroid/widget/ImageView;

.field final synthetic this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

.field public titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lim/doit/pro/activity/listview/EvernoteListViewAdapter;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    iput-object p1, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->this$0:Lim/doit/pro/activity/listview/EvernoteListViewAdapter;

    .line 170
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 172
    const v0, 0x7f030080

    .line 171
    invoke-static {p2, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 173
    const v0, 0x7f0b0175

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->titleView:Landroid/widget/TextView;

    .line 174
    const v0, 0x7f0b0174

    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lim/doit/pro/activity/listview/EvernoteListViewAdapter$EvernoteViewHolder;->deleteBtn:Landroid/widget/ImageView;

    .line 175
    return-void
.end method

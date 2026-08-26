.class public abstract Lim/doit/pro/activity/listview/ViewHolder;
.super Landroid/widget/LinearLayout;
.source "ViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;,
        Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;
    }
.end annotation


# instance fields
.field public completeBtn:Landroid/widget/ImageView;

.field protected mOnCompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;

.field protected mOnUncompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    .line 19
    const/4 v2, -0x2

    .line 18
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 20
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0, v0}, Lim/doit/pro/activity/listview/ViewHolder;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    return-void
.end method


# virtual methods
.method public setItemBackgroud(I)V
    .locals 0
    .param p1, "resId"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lim/doit/pro/activity/listview/ViewHolder;->setBackgroundResource(I)V

    .line 46
    return-void
.end method

.method public setOnCompleteClickListener(Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;

    .prologue
    .line 24
    iput-object p1, p0, Lim/doit/pro/activity/listview/ViewHolder;->mOnCompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnCompleteClickListener;

    .line 25
    return-void
.end method

.method public setOnUncompleteClickListener(Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;)V
    .locals 0
    .param p1, "l"    # Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;

    .prologue
    .line 28
    iput-object p1, p0, Lim/doit/pro/activity/listview/ViewHolder;->mOnUncompleteClickListener:Lim/doit/pro/activity/listview/ViewHolder$OnUncompleteClickListener;

    .line 29
    return-void
.end method

.method public abstract setViewContent(Lim/doit/pro/model/BaseEntityWithPos;ZZZZZZ)V
.end method

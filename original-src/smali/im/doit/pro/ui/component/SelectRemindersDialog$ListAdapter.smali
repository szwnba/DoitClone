.class Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;
.super Landroid/widget/BaseAdapter;
.source "SelectRemindersDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lim/doit/pro/ui/component/SelectRemindersDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;,
        Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$OnTimeViewHolder;,
        Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;,
        Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
    }
.end annotation


# static fields
.field private static final TYPE_ABSOLUTE:I = 0x0

.field private static final TYPE_ON_TIME:I = 0x2

.field private static final TYPE_RELATIVE:I = 0x1


# instance fields
.field final synthetic this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;


# direct methods
.method private constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V
    .locals 0

    .prologue
    .line 271
    iput-object p1, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lim/doit/pro/ui/component/SelectRemindersDialog;Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog;)V

    return-void
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;)Lim/doit/pro/ui/component/SelectRemindersDialog;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 301
    iget-object v0, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v0}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$0(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 306
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    move-result-object v1

    iget-object v0, v1, Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;->reminder:Lim/doit/pro/model/Reminder;

    .line 285
    .local v0, "reminder":Lim/doit/pro/model/Reminder;
    invoke-virtual {v0}, Lim/doit/pro/model/Reminder;->isRelative()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v0}, Lim/doit/pro/model/Reminder;->getTime()Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v2}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$7(Lim/doit/pro/ui/component/SelectRemindersDialog;)Ljava/util/Calendar;

    move-result-object v2

    invoke-static {v1, v2}, Lim/doit/pro/utils/DateUtils;->diffMinute(Ljava/util/Calendar;Ljava/util/Calendar;)I

    move-result v1

    if-nez v1, :cond_0

    .line 287
    const/4 v1, 0x2

    .line 291
    :goto_0
    return v1

    .line 289
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 291
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 312
    .local v2, "viewHolder":Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->getItemViewType(I)I

    move-result v1

    .line 313
    .local v1, "type":I
    if-nez p2, :cond_3

    .line 314
    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    .line 315
    new-instance v2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$OnTimeViewHolder;

    .end local v2    # "viewHolder":Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$1(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$OnTimeViewHolder;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;Landroid/content/Context;)V

    .line 324
    .restart local v2    # "viewHolder":Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->getItem(I)Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;

    move-result-object v0

    .line 325
    .local v0, "listData":Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
    invoke-virtual {v2, p1, v0}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;->setViewContent(ILim/doit/pro/ui/component/SelectRemindersDialog$ListData;)V

    .line 326
    return-object v2

    .line 316
    .end local v0    # "listData":Lim/doit/pro/ui/component/SelectRemindersDialog$ListData;
    :cond_1
    const/4 v3, 0x1

    if-ne v3, v1, :cond_2

    .line 317
    new-instance v2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;

    .end local v2    # "viewHolder":Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$1(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$RelativeViewHolder;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;Landroid/content/Context;)V

    .line 318
    .restart local v2    # "viewHolder":Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
    goto :goto_0

    :cond_2
    if-nez v1, :cond_0

    .line 319
    new-instance v2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;

    .end local v2    # "viewHolder":Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
    iget-object v3, p0, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;->this$0:Lim/doit/pro/ui/component/SelectRemindersDialog;

    invoke-static {v3}, Lim/doit/pro/ui/component/SelectRemindersDialog;->access$1(Lim/doit/pro/ui/component/SelectRemindersDialog;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$AbsoluteViewHolder;-><init>(Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter;Landroid/content/Context;)V

    .line 321
    .restart local v2    # "viewHolder":Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;
    goto :goto_0

    :cond_3
    move-object v2, p2

    .line 322
    check-cast v2, Lim/doit/pro/ui/component/SelectRemindersDialog$ListAdapter$ViewHolder;

    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 279
    const/4 v0, 0x3

    return v0
.end method

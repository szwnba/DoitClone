.class public Lim/doit/pro/ui/component/MoveToDialog;
.super Ljava/lang/Object;
.source "MoveToDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;,
        Lim/doit/pro/ui/component/MoveToDialog$ListItemData;,
        Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;
    }
.end annotation


# instance fields
.field private cancelBtn:Landroid/widget/Button;

.field private datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/ui/component/MoveToDialog$ListItemData;",
            ">;"
        }
    .end annotation
.end field

.field private listAdapter:Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;

.field private listView:Landroid/widget/ListView;

.field private mActivity:Landroid/app/Activity;

.field private mAllday:Z

.field private mAttribute:Lim/doit/pro/model/enums/Attribute;

.field private mDialog:Landroid/app/Dialog;

.field private mEntity:Lim/doit/pro/model/BaseEntityWithPos;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsMove:Z

.field private mIsProject:Z

.field private mStartAt:Ljava/util/Calendar;

.field private onMoveFinishListner:Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;

.field private titleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isMove"    # Z

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lim/doit/pro/ui/component/MoveToDialog;-><init>(Landroid/app/Activity;ZZ)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ZZ)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "isProject"    # Z
    .param p3, "isMove"    # Z

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-boolean v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mIsMove:Z

    .line 48
    iput-boolean v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mIsProject:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->datas:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mActivity:Landroid/app/Activity;

    .line 70
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 71
    iput-boolean p2, p0, Lim/doit/pro/ui/component/MoveToDialog;->mIsProject:Z

    .line 72
    iput-boolean p3, p0, Lim/doit/pro/ui/component/MoveToDialog;->mIsMove:Z

    .line 73
    return-void
.end method

.method static synthetic access$0(Lim/doit/pro/ui/component/MoveToDialog;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->listView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->datas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$10(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->onMoveFinishListner:Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;

    return-object v0
.end method

.method static synthetic access$11(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/model/enums/Attribute;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mAttribute:Lim/doit/pro/model/enums/Attribute;

    return-object v0
.end method

.method static synthetic access$12(Lim/doit/pro/ui/component/MoveToDialog;)V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Lim/doit/pro/ui/component/MoveToDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$13(Lim/doit/pro/ui/component/MoveToDialog;)Z
    .locals 1

    .prologue
    .line 47
    iget-boolean v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mIsMove:Z

    return v0
.end method

.method static synthetic access$2(Lim/doit/pro/ui/component/MoveToDialog;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$3(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/model/BaseEntityWithPos;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mEntity:Lim/doit/pro/model/BaseEntityWithPos;

    return-object v0
.end method

.method static synthetic access$4(Lim/doit/pro/ui/component/MoveToDialog;)Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->listAdapter:Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;

    return-object v0
.end method

.method static synthetic access$5(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/model/enums/Attribute;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mAttribute:Lim/doit/pro/model/enums/Attribute;

    return-void
.end method

.method static synthetic access$6(Lim/doit/pro/ui/component/MoveToDialog;Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mStartAt:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$7(Lim/doit/pro/ui/component/MoveToDialog;)Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mAllday:Z

    return v0
.end method

.method static synthetic access$8(Lim/doit/pro/ui/component/MoveToDialog;)Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mStartAt:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$9(Lim/doit/pro/ui/component/MoveToDialog;Z)V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lim/doit/pro/ui/component/MoveToDialog;->showDateTimePicker(Z)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 239
    :cond_0
    return-void
.end method

.method private initData()V
    .locals 11

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x1

    .line 87
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->mEntity:Lim/doit/pro/model/BaseEntityWithPos;

    if-eqz v4, :cond_0

    .line 88
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->mEntity:Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 89
    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog;->mEntity:Lim/doit/pro/model/BaseEntityWithPos;

    check-cast v2, Lim/doit/pro/model/Task;

    .line 90
    .local v2, "task":Lim/doit/pro/model/Task;
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getAttribute()Lim/doit/pro/model/enums/Attribute;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->mAttribute:Lim/doit/pro/model/enums/Attribute;

    .line 91
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->getStartAt()Ljava/util/Calendar;

    move-result-object v4

    invoke-static {v4}, Lim/doit/pro/utils/DateUtils;->copyDate(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->mStartAt:Ljava/util/Calendar;

    .line 92
    invoke-virtual {v2}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v4

    iput-boolean v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->mAllday:Z

    .line 100
    .end local v2    # "task":Lim/doit/pro/model/Task;
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->mIsProject:Z

    if-nez v4, :cond_1

    .line 101
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->datas:Ljava/util/ArrayList;

    new-instance v5, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;

    const v6, 0x7f0200a7

    .line 102
    const v7, 0x7f0c004b

    sget-object v8, Lim/doit/pro/model/enums/BoxType;->inbox:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v5, p0, v6, v7, v8}, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/MoveToDialog;IILim/doit/pro/model/enums/BoxType;)V

    .line 101
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_1
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->datas:Ljava/util/ArrayList;

    new-instance v5, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;

    const v6, 0x7f0200ac

    .line 105
    const v7, 0x7f0c004d

    sget-object v8, Lim/doit/pro/model/enums/BoxType;->today:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v5, p0, v6, v7, v8}, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/MoveToDialog;IILim/doit/pro/model/enums/BoxType;)V

    .line 104
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->datas:Ljava/util/ArrayList;

    new-instance v5, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;

    const v6, 0x7f0200a8

    const v7, 0x7f0c004e

    .line 107
    sget-object v8, Lim/doit/pro/model/enums/BoxType;->next:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v5, p0, v6, v7, v8}, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/MoveToDialog;IILim/doit/pro/model/enums/BoxType;)V

    .line 106
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    .line 109
    .local v3, "tomorrow":Ljava/util/Calendar;
    invoke-virtual {v3, v10, v9}, Ljava/util/Calendar;->add(II)V

    .line 110
    invoke-virtual {v3, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 111
    .local v0, "dayOfMonth":I
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->datas:Ljava/util/ArrayList;

    new-instance v5, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "icon_leftbox_tomorrow"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 112
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "drawable"

    .line 111
    invoke-static {v6, v7}, Lim/doit/pro/activity/utils/ViewUtils;->getId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 112
    const v7, 0x7f0c004f

    sget-object v8, Lim/doit/pro/model/enums/BoxType;->tomorrow:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v5, p0, v6, v7, v8}, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/MoveToDialog;IILim/doit/pro/model/enums/BoxType;)V

    .line 111
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->datas:Ljava/util/ArrayList;

    new-instance v5, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;

    const v6, 0x7f0200aa

    .line 114
    const v7, 0x7f0c0050

    sget-object v8, Lim/doit/pro/model/enums/BoxType;->scheduled:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v5, p0, v6, v7, v8}, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/MoveToDialog;IILim/doit/pro/model/enums/BoxType;)V

    .line 113
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->datas:Ljava/util/ArrayList;

    new-instance v5, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;

    const v6, 0x7f0200ab

    .line 116
    const v7, 0x7f0c0051

    sget-object v8, Lim/doit/pro/model/enums/BoxType;->someday:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v5, p0, v6, v7, v8}, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/MoveToDialog;IILim/doit/pro/model/enums/BoxType;)V

    .line 115
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-boolean v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->mIsProject:Z

    if-nez v4, :cond_2

    .line 118
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->datas:Ljava/util/ArrayList;

    new-instance v5, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;

    const v6, 0x7f0200cd

    .line 119
    const v7, 0x7f0c0052

    sget-object v8, Lim/doit/pro/model/enums/BoxType;->waiting:Lim/doit/pro/model/enums/BoxType;

    invoke-direct {v5, p0, v6, v7, v8}, Lim/doit/pro/ui/component/MoveToDialog$ListItemData;-><init>(Lim/doit/pro/ui/component/MoveToDialog;IILim/doit/pro/model/enums/BoxType;)V

    .line 118
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_2
    return-void

    .line 93
    .end local v0    # "dayOfMonth":I
    .end local v3    # "tomorrow":Ljava/util/Calendar;
    :cond_3
    iget-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->mEntity:Lim/doit/pro/model/BaseEntityWithPos;

    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 94
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mEntity:Lim/doit/pro/model/BaseEntityWithPos;

    check-cast v1, Lim/doit/pro/model/Project;

    .line 95
    .local v1, "project":Lim/doit/pro/model/Project;
    invoke-virtual {v1}, Lim/doit/pro/model/Project;->getStartAt()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lim/doit/pro/ui/component/MoveToDialog;->mStartAt:Ljava/util/Calendar;

    .line 96
    iput-boolean v9, p0, Lim/doit/pro/ui/component/MoveToDialog;->mAllday:Z

    goto/16 :goto_0
.end method

.method private initListener()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->listView:Landroid/widget/ListView;

    new-instance v1, Lim/doit/pro/ui/component/MoveToDialog$1;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/MoveToDialog$1;-><init>(Lim/doit/pro/ui/component/MoveToDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 226
    iget-object v0, p0, Lim/doit/pro/ui/component/MoveToDialog;->cancelBtn:Landroid/widget/Button;

    new-instance v1, Lim/doit/pro/ui/component/MoveToDialog$2;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/MoveToDialog$2;-><init>(Lim/doit/pro/ui/component/MoveToDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    return-void
.end method

.method private initViewAndViewContent()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 124
    new-instance v1, Landroid/app/Dialog;

    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog;->mActivity:Landroid/app/Activity;

    const v3, 0x7f0d00fc

    invoke-direct {v1, v2, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mDialog:Landroid/app/Dialog;

    .line 125
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mInflater:Landroid/view/LayoutInflater;

    .line 126
    const v2, 0x7f030062

    const/4 v3, 0x0

    .line 125
    invoke-virtual {v1, v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 127
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0b003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->titleView:Landroid/widget/TextView;

    .line 128
    const v1, 0x7f0b0092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->cancelBtn:Landroid/widget/Button;

    .line 129
    const v1, 0x7f0b0069

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->listView:Landroid/widget/ListView;

    .line 130
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->listView:Landroid/widget/ListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 131
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->titleView:Landroid/widget/TextView;

    const v2, 0x7f0c0043

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 132
    new-instance v1, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;

    invoke-direct {v1, p0, v4}, Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;-><init>(Lim/doit/pro/ui/component/MoveToDialog;Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;)V

    iput-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->listAdapter:Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;

    .line 133
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->listView:Landroid/widget/ListView;

    iget-object v2, p0, Lim/doit/pro/ui/component/MoveToDialog;->listAdapter:Lim/doit/pro/ui/component/MoveToDialog$ListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 135
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 136
    return-void
.end method

.method private showDateTimePicker(Z)V
    .locals 3
    .param p1, "showDate"    # Z

    .prologue
    .line 360
    new-instance v0, Lim/doit/pro/ui/component/SelectDateTimeDialog;

    .line 361
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mActivity:Landroid/app/Activity;

    .line 360
    invoke-direct {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;-><init>(Landroid/app/Activity;)V

    .line 362
    .local v0, "selectDateDialog":Lim/doit/pro/ui/component/SelectDateTimeDialog;
    iget-object v1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mStartAt:Ljava/util/Calendar;

    iget-boolean v2, p0, Lim/doit/pro/ui/component/MoveToDialog;->mAllday:Z

    invoke-virtual {v0, v1, p1, v2}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->showDialog(Ljava/util/Calendar;ZZ)V

    .line 364
    new-instance v1, Lim/doit/pro/ui/component/MoveToDialog$3;

    invoke-direct {v1, p0}, Lim/doit/pro/ui/component/MoveToDialog$3;-><init>(Lim/doit/pro/ui/component/MoveToDialog;)V

    invoke-virtual {v0, v1}, Lim/doit/pro/ui/component/SelectDateTimeDialog;->setOnSelectDateTimeListner(Lim/doit/pro/ui/component/SelectDateTimeDialog$OnSelectDateTimeListner;)V

    .line 375
    return-void
.end method


# virtual methods
.method public setOnMoveFinishListner(Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;)V
    .locals 0
    .param p1, "listener"    # Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;

    .prologue
    .line 61
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog;->onMoveFinishListner:Lim/doit/pro/ui/component/MoveToDialog$OnMoveFinishListner;

    .line 62
    return-void
.end method

.method public showDialog(Lim/doit/pro/model/BaseEntityWithPos;Z)V
    .locals 1
    .param p1, "entity"    # Lim/doit/pro/model/BaseEntityWithPos;
    .param p2, "isProject"    # Z

    .prologue
    .line 76
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lim/doit/pro/ui/component/MoveToDialog;->mEntity:Lim/doit/pro/model/BaseEntityWithPos;

    .line 80
    iput-boolean p2, p0, Lim/doit/pro/ui/component/MoveToDialog;->mIsProject:Z

    .line 81
    invoke-direct {p0}, Lim/doit/pro/ui/component/MoveToDialog;->initData()V

    .line 82
    invoke-direct {p0}, Lim/doit/pro/ui/component/MoveToDialog;->initViewAndViewContent()V

    .line 83
    invoke-direct {p0}, Lim/doit/pro/ui/component/MoveToDialog;->initListener()V

    goto :goto_0
.end method

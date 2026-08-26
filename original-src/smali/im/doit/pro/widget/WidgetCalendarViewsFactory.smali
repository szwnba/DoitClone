.class Lim/doit/pro/widget/WidgetCalendarViewsFactory;
.super Ljava/lang/Object;
.source "WidgetCalendarService.java"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field completedBtnCheckedSrc:I

.field completedBtnUncheckedSrc:I

.field datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lim/doit/pro/model/BaseEntityWithPos;",
            ">;"
        }
    .end annotation
.end field

.field private date:Ljava/util/Calendar;

.field groupTextColor:I

.field groupTextSize:F

.field private mAppWidgetId:I

.field private mContext:Landroid/content/Context;

.field titleTextColor:I

.field titleTextSize:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-wide/16 v6, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->datas:Ljava/util/ArrayList;

    .line 56
    iput-object p1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->mContext:Landroid/content/Context;

    .line 57
    const-string v1, "appWidgetId"

    .line 58
    const/4 v4, 0x0

    .line 57
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->mAppWidgetId:I

    .line 59
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->date:Ljava/util/Calendar;

    .line 60
    const-string v1, "widget_date"

    invoke-virtual {p2, v1, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 61
    .local v2, "millis":J
    cmp-long v1, v2, v6

    if-lez v1, :cond_0

    .line 62
    invoke-static {v2, v3}, Lim/doit/pro/utils/DateUtils;->convertToDate(J)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->date:Ljava/util/Calendar;

    .line 64
    :cond_0
    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetFontScale()F

    move-result v0

    .line 66
    .local v0, "fontScale":F
    const v1, 0x7f09005d

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    .line 65
    mul-float/2addr v1, v0

    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->titleTextSize:F

    .line 68
    const v1, 0x7f09005c

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getDimens(I)F

    move-result v1

    .line 67
    mul-float/2addr v1, v0

    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->groupTextSize:F

    .line 70
    const-string v1, "#000000"

    invoke-static {}, Lim/doit/pro/utils/LocalSettings;->getWidgetBGColor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    const/4 v1, -0x1

    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->titleTextColor:I

    .line 73
    const v1, 0x7f080079

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 72
    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->groupTextColor:I

    .line 74
    const v1, 0x7f020124

    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->completedBtnCheckedSrc:I

    .line 75
    const v1, 0x7f020127

    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->completedBtnUncheckedSrc:I

    .line 83
    :goto_0
    return-void

    .line 77
    :cond_1
    const/high16 v1, -0x1000000

    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->titleTextColor:I

    .line 79
    const v1, 0x7f080078

    invoke-static {v1}, Lim/doit/pro/activity/utils/ViewUtils;->getColor(I)I

    move-result v1

    .line 78
    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->groupTextColor:I

    .line 80
    const v1, 0x7f020125

    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->completedBtnCheckedSrc:I

    .line 81
    const v1, 0x7f020126

    iput v1, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->completedBtnUncheckedSrc:I

    goto :goto_0
.end method

.method private setTextSize(Landroid/widget/RemoteViews;IF)V
    .locals 2
    .param p1, "views"    # Landroid/widget/RemoteViews;
    .param p2, "id"    # I
    .param p3, "fontSize"    # F
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 187
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 188
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_0
    const-string v0, "setTextSize"

    invoke-virtual {p1, p2, v0, p3}, Landroid/widget/RemoteViews;->setFloat(ILjava/lang/String;F)V

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 92
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .locals 13
    .param p1, "position"    # I

    .prologue
    const v12, 0x7f0b008c

    const v11, 0x7f0b003a

    .line 102
    iget-object v9, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-virtual {v9, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lim/doit/pro/model/BaseEntityWithPos;

    .line 103
    .local v4, "item":Lim/doit/pro/model/BaseEntityWithPos;
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isGrouper()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 104
    const v5, 0x7f0300b7

    .line 105
    .local v5, "itemId":I
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v9, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0300b7

    invoke-direct {v6, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 106
    .local v6, "rv":Landroid/widget/RemoteViews;
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v11, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 107
    iget v9, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->groupTextSize:F

    invoke-direct {p0, v6, v11, v9}, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 108
    iget v9, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->groupTextColor:I

    invoke-virtual {v6, v11, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    move-object v7, v6

    .line 152
    .end local v6    # "rv":Landroid/widget/RemoteViews;
    .local v7, "rv":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 111
    .end local v5    # "itemId":I
    .end local v7    # "rv":Ljava/lang/Object;
    :cond_0
    const v5, 0x7f0300b8

    .line 112
    .restart local v5    # "itemId":I
    new-instance v6, Landroid/widget/RemoteViews;

    iget-object v9, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f0300b8

    invoke-direct {v6, v9, v10}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 113
    .restart local v6    # "rv":Landroid/widget/RemoteViews;
    const-string v8, ""

    .line 114
    .local v8, "title":Ljava/lang/String;
    const/4 v3, 0x1

    .line 115
    .local v3, "isAllday":Z
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v9

    if-eqz v9, :cond_1

    move-object v9, v4

    .line 116
    check-cast v9, Lim/doit/pro/model/Task;

    invoke-virtual {v9}, Lim/doit/pro/model/Task;->isAllDay()Z

    move-result v3

    .line 118
    :cond_1
    if-nez v3, :cond_2

    .line 119
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->getBaseStartAt()Ljava/util/Calendar;

    move-result-object v10

    invoke-static {v10}, Lim/doit/pro/utils/DateUtils;->formatHourMinute(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 121
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 122
    invoke-virtual {v6, v11, v8}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 123
    iget v9, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->titleTextSize:F

    invoke-direct {p0, v6, v11, v9}, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->setTextSize(Landroid/widget/RemoteViews;IF)V

    .line 124
    iget v9, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->titleTextColor:I

    invoke-virtual {v6, v11, v9}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 126
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 127
    .local v1, "extras":Landroid/os/Bundle;
    sget-object v9, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_DATA_ID:Ljava/lang/String;

    .line 128
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->getUniqUuid()Ljava/lang/String;

    move-result-object v10

    .line 127
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v9, Lim/doit/pro/widget/WidgetCalendarProvider;->EXTRA_DATA_TYPE:Ljava/lang/String;

    .line 130
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    .line 129
    invoke-virtual {v1, v9, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 133
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "im.doit.pro.widget.WidgetCalendarProvider.item_click"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 135
    const v9, 0x7f0b0038

    invoke-virtual {v6, v9, v2}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 137
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isTask()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isProject()Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isGoal()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 138
    :cond_3
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isEditable()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 139
    const/4 v9, 0x0

    invoke-virtual {v6, v12, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "completeIntent":Landroid/content/Intent;
    const-string v9, "im.doit.pro.widget.WidgetCalendarProvider.complete_click"

    invoke-virtual {v0, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 144
    invoke-virtual {v6, v12, v0}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {v4}, Lim/doit/pro/model/BaseEntityWithPos;->isCompleted()Z

    move-result v9

    if-eqz v9, :cond_4

    iget v9, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->completedBtnCheckedSrc:I

    .line 145
    :goto_1
    invoke-virtual {v6, v12, v9}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .end local v0    # "completeIntent":Landroid/content/Intent;
    :goto_2
    move-object v7, v6

    .line 152
    .restart local v7    # "rv":Ljava/lang/Object;
    goto/16 :goto_0

    .line 147
    .end local v7    # "rv":Ljava/lang/Object;
    .restart local v0    # "completeIntent":Landroid/content/Intent;
    :cond_4
    iget v9, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->completedBtnUncheckedSrc:I

    goto :goto_1

    .line 149
    .end local v0    # "completeIntent":Landroid/content/Intent;
    :cond_5
    const/16 v9, 0x8

    invoke-virtual {v6, v12, v9}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 168
    return-void
.end method

.method public onDataSetChanged()V
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 173
    invoke-static {}, Lim/doit/pro/activity/DoitApp;->isLogin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->date:Ljava/util/Calendar;

    invoke-static {v0}, Lim/doit/pro/utils/QueryUtils;->findDatasForWidgetCalendar(Ljava/util/Calendar;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->datas:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->datas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lim/doit/pro/widget/WidgetCalendarViewsFactory;->datas:Ljava/util/ArrayList;

    .line 183
    return-void
.end method
